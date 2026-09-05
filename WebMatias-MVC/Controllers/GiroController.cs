using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using WebMatias_MVC.Dao.EmailEnviadoDao;
using WebMatias_MVC.Dao.GiroDao;
using WebMatias_MVC.Dao.TipoGiroDao;
using WebMatias_MVC.Models;
using WebMatias_MVC.Service;

namespace WebMatias_MVC.Controllers
{
    public class GiroController : Controller
    {

        public readonly CotizacionApiService _cotizacionApiService;
        public readonly EmailService _emailService;

        public GiroController(CotizacionApiService cotizacionApiService,EmailService emailService)
        {
            _cotizacionApiService = cotizacionApiService;
            _emailService = emailService;
        }


        // GET: GiroController
        public ActionResult Index()
        {
            return View();
        }



        [HttpGet]


        public async Task<IActionResult> CrearGiro() 
        {



            TipoGiroDao tipoGiroDao = new TipoGiroDao();

            ViewBag.TipoGiro = tipoGiroDao.listaTipoGiro();

           


            decimal valor = await _cotizacionApiService.ObtenerCotizacion();

            ViewBag.Cotizacion = valor; 

            return View("Giro");
        
        
        
        }

        
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> CrearGiro(Giro giro, decimal cotizacionMostrada)
        {
            // =========================================================
            // 1. VALIDAR LOS DATOS QUE LLEGAN DESDE EL FORMULARIO
            // =========================================================

            if (!ModelState.IsValid)
            {
                try
                {
                    // La vista necesita nuevamente la lista de tipos de giro
                    // para poder construir el <select>.
                    TipoGiroDao tipoGiroDao = new TipoGiroDao();
                    ViewBag.TipoGiro = tipoGiroDao.listaTipoGiro();

                    // Volvemos a obtener la cotización para mostrarla
                    // nuevamente en el formulario.
                    decimal cotiza =
                        await _cotizacionApiService.ObtenerCotizacion();

                    ViewBag.Cotizacion = cotiza;

                    // Volvemos a mostrar la vista conservando
                    // los datos ingresados por el usuario.
                    return View("Giro", giro);
                }
                catch (Exception)
                {
                    TempData["Error"] =
                        "No se pudo obtener la cotización en este momento. Intentá nuevamente en unos minutos.";

                    return RedirectToAction("CrearGiro");
                }
            }


            // =========================================================
            // 2. OBTENER LA COTIZACIÓN ACTUAL
            // =========================================================

            decimal cotizacion;

            try
            {
                cotizacion =
                    await _cotizacionApiService.ObtenerCotizacion();
            }
            catch (HttpRequestException)
            {
                TempData["Error"] =
                    "No se pudo obtener la cotización en este momento. Intentá nuevamente en unos minutos.";

                TipoGiroDao tipoGiroDao = new TipoGiroDao();
                ViewBag.TipoGiro = tipoGiroDao.listaTipoGiro();

                return View("Giro", giro);
            }


            // =========================================================
            // 3. VERIFICAR QUE LA COTIZACIÓN SEA VÁLIDA
            // =========================================================

            if (cotizacion <= 0)
            {
                ModelState.AddModelError("",
                    "No se pudo obtener una cotización válida. Intentá nuevamente más tarde.");

                TipoGiroDao tipoGiroDao = new TipoGiroDao();

                ViewBag.TipoGiro = tipoGiroDao.listaTipoGiro();
                ViewBag.Cotizacion = cotizacion;

                return View("Giro", giro);
            }


            // =========================================================
            // 4. COMPARAR LA COTIZACIÓN MOSTRADA CON LA COTIZACIÓN ACTUAL
            // =========================================================

            // Si cambió desde que el usuario abrió el formulario,
            // no guardamos el giro.
            // Le mostramos la nueva cotización para que vuelva a confirmar.
            if (cotizacion != cotizacionMostrada)
            {
                TempData["Error"] =
                    "La cotización cambió desde que abriste el formulario. Revisá el nuevo valor y volvé a confirmar el giro.";

                TipoGiroDao tipoGiroDao = new TipoGiroDao();

                ViewBag.TipoGiro = tipoGiroDao.listaTipoGiro();
                ViewBag.Cotizacion = cotizacion;

                return View("Giro", giro);
            }


            // =========================================================
            // 5. CALCULAR LOS DATOS DEL GIRO
            // =========================================================

            giro.FechaGiro = DateTime.Now;

            // Guardamos la cotización utilizada realmente.
            giro.CambioExtranjero = cotizacion;

            // Comisión de la agencia: 10%.
            giro.ComisionAgencia =
                giro.MontoEnvio * 0.10m;

            // Por ahora no existe comisión del sistema.
            giro.ComisionSistema = 0;

            // Calculamos cuánto recibirá la persona
            // en moneda extranjera.
            giro.MontoMonedaExtranjera =
                giro.MontoEnvio * giro.CambioExtranjero;

            // Calculamos cuánto paga en total el cliente.
            giro.MontoTotal =
                giro.MontoEnvio +
                giro.ComisionAgencia +
                giro.ComisionSistema;


            // =========================================================
            // 6. PREPARAR LOS OBJETOS QUE VAMOS A UTILIZAR
            // =========================================================
            // =========================================================
            // 6. PREPARAR DATOS NECESARIOS PARA EL ENVÍO
            // =========================================================

            string email = giro.EmailRemitente;

            GiroDao giroDao = new GiroDao();


            // =========================================================
            // 7. BUSCAR EL TIPO DE GIRO COMPLETO
            // =========================================================

            // Necesitamos el objeto TipoGiro completo porque sus datos
            // se utilizan para armar el contenido del correo.

            try
            {
                TipoGiroDao tipoGiroDao = new TipoGiroDao();

                giro.TipoGiro =
                    tipoGiroDao.BuscarTipoGiroId(giro.TipoGiroId);
            }
            catch (Exception)
            {
                TempData["Error"] =
                    "No se pudo obtener la información del tipo de giro.";

                return RedirectToAction("CrearGiro");
            }


            // =========================================================
            // 8. INTENTAR ENVIAR EL EMAIL
            // =========================================================

            try
            {
                // Primero armamos el correo con los datos del giro.
                _emailService.ArmarCorreo(email, giro);

                // Intentamos enviarlo.
                _emailService.GuardaEmail();


                // Si el programa llegó hasta esta línea,
                // significa que el envío NO lanzó ninguna excepción.
            }
            catch (Exception)
            {
                // Si el correo falla, NO guardamos el giro.
                //
                // Esto responde a nuestra regla de negocio:
                // si el operador no recibe el aviso,
                // el giro no debe quedar registrado como realizado.

                TempData["Error"] =
                    "No se pudo enviar la solicitud del giro. El giro no fue registrado. Intentá nuevamente.";

                return RedirectToAction("CrearGiro");
            }


            // =========================================================
            // 9. GUARDAR EL GIRO
            // =========================================================

            // Solamente llegamos a esta parte si el email
            // se pudo enviar correctamente.

            try
            {
                giroDao.GuardarGiro(giro);

                // GuardarGiro recupera el ID generado por SQL
                // y lo deja dentro de giro.GiroId.

                TempData["Mensaje"] =
                    "El giro se registró correctamente.";
            }
            catch (Exception)
            {
                // IMPORTANTE:
                // En este caso el email ya fue enviado,
                // pero ocurrió un problema al guardar el giro en SQL.

                TempData["Error"] =
                    "El aviso del giro fue enviado, pero ocurrió un error al guardar el giro en el sistema.";

                return RedirectToAction("CrearGiro");
            }


            // =========================================================
            // 10. REGISTRAR EL EMAIL EN LA BASE DE DATOS
            // =========================================================

            // Como el correo ya fue enviado correctamente
            // y el giro ya existe en SQL,
            // ahora podemos relacionar ambos mediante GiroId.

            try
            {
                EmailEnviado emailEnviado = new EmailEnviado();

                emailEnviado.GiroId = giro.GiroId;
                emailEnviado.EmailDestino = giro.EmailRemitente;

                emailEnviado.FechaIntento = DateTime.Now;

                // Como ya sabemos que el correo se envió,
                // la fecha de entrega también es ahora.
                emailEnviado.FechaEntrega = DateTime.Now;

                // Ya no necesitamos comenzar en PENDIENTE,
                // porque el envío ocurrió antes de crear este registro.
                emailEnviado.Estado = "ENVIADO";

                emailEnviado.DetalleError = null;
                emailEnviado.CantidadIntentos = 1;
                emailEnviado.IdMensajeProveedor = null;


                EmailEnviadoDao emailEnviadoDao =
                    new EmailEnviadoDao();

                emailEnviadoDao.EmailEstado(emailEnviado);
            }
            catch (Exception)
            {
                // El giro ya fue guardado y el email ya fue enviado.
                // Si solamente falla el registro histórico del email,
                // no anulamos toda la operación.

                TempData["Error"] =
                    "El giro se realizó correctamente, pero no se pudo registrar el historial del correo.";
            }


            // =========================================================
            // 11. REDIRECCIONAR
            // =========================================================

            // Aplicamos POST -> Redirect -> GET.
            // Evita que al actualizar la página el usuario
            // vuelva a enviar accidentalmente el mismo formulario.

            return RedirectToAction("CrearGiro");
        }

        // GET: GiroController/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: GiroController/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: GiroController/Create
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: GiroController/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: GiroController/Edit/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }

        // GET: GiroController/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: GiroController/Delete/5
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Delete(int id, IFormCollection collection)
        {
            try
            {
                return RedirectToAction(nameof(Index));
            }
            catch
            {
                return View();
            }
        }
    }
}
