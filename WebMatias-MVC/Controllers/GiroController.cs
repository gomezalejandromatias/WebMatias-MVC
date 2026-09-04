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
        public async Task<IActionResult> CrearGiro(Giro giro,decimal cotizacionMostrada)
        {

            //muestra nuevamente el formulario con los datos ingresados y sus errores.

            if (!ModelState.IsValid)
            {
                //Además, volvés a cargar ViewBag.TipoGiro porque la vista necesita esa lista para construir el <select>

                try
                {

                TipoGiroDao tipoGiroDao = new TipoGiroDao();
                ViewBag.TipoGiro = tipoGiroDao.listaTipoGiro();

                decimal cotiza =
               await _cotizacionApiService.ObtenerCotizacion();

                ViewBag.Cotizacion = cotiza;


                   return View("Giro", giro);


                }
                catch (Exception)
                {

                    TempData["Error"] = "No se pudo obtener la cotización en este momento. Intentá nuevamente en unos minutos.";

                }

            }

            decimal cotizacion;

            try
            {

              cotizacion =  await _cotizacionApiService.ObtenerCotizacion();


            }
            catch (HttpRequestException)
            {

                TempData["Error"] = "No se pudo obtener la cotización en este momento. Intentá nuevamente en unos minutos.";

                TipoGiroDao tipoGiroDao = new TipoGiroDao();
                ViewBag.TipoGiro = tipoGiroDao.listaTipoGiro();





                return View("Giro", giro);
            }


            if (cotizacion <=0)
            {
                ModelState.AddModelError("",
                    "No se pudo obtener una cotización válida. Intentá nuevamente más tarde.");

                TipoGiroDao tipoGiroDao = new TipoGiroDao();
                ViewBag.Tipogiro = tipoGiroDao.listaTipoGiro();

                ViewBag.Cotizacion = cotizacion;
                return View("Giro", giro);


            }

            if (cotizacion != cotizacionMostrada) 
            {
                TempData["Error"] = "La cotización cambió desde que abriste el formulario. Revisá el nuevo valor y volvé a confirmar el giro.";
                TipoGiroDao tipoGiroDao = new TipoGiroDao(); 
                ViewBag.TipoGiro = tipoGiroDao.listaTipoGiro();
                ViewBag.Cotizacion = cotizacion;
                return View("Giro", giro); }



            giro.FechaGiro = DateTime.Now;
            giro.CambioExtranjero = cotizacion;

            giro.ComisionAgencia = giro.MontoEnvio * 0.10m;
            giro.ComisionSistema = 0;

            giro.MontoMonedaExtranjera =
                giro.MontoEnvio * giro.CambioExtranjero;

            giro.MontoTotal =
                giro.MontoEnvio +
                giro.ComisionAgencia +
                giro.ComisionSistema;

        


            string email = giro.EmailRemitente;

            GiroDao giroDao = new GiroDao();

            int IdGiro;

            try
            {
               giroDao.GuardarGiro(giro);

                  IdGiro = giro.GiroId;


                TempData["Mensaje"] = "El giro se guardó correctamente.";
            }
            catch (Exception)
            {
                TempData["Error"] = "Ocurrió un error y el giro no pudo guardarse.";
                return RedirectToAction("CrearGiro");
            }

            try
            {
                TipoGiroDao tipogiroencontado = new TipoGiroDao();

                giro.TipoGiro = tipogiroencontado.BuscarTipoGiroId(giro.TipoGiroId);

                
                ///OBJ DE EMAILENVIADO
               EmailEnviado emailEnviado = new EmailEnviado();

               emailEnviado.GiroId = giro.GiroId;
                emailEnviado.EmailDestino = giro.EmailRemitente;
                emailEnviado.FechaIntento = DateTime.Now;
                emailEnviado.FechaEntrega = null;
                emailEnviado.Estado = "PENDIENTE";
                emailEnviado.DetalleError = null;
                emailEnviado.CantidadIntentos = 1;
                emailEnviado.IdMensajeProveedor = null;

                ///OBJEMAIL SENVIADO DAO
                EmailEnviadoDao emailEnviadoDao = new EmailEnviadoDao();
               emailEnviadoDao.EmailEstado(emailEnviado);
                

                _emailService.ArmarCorreo(email, giro);
                _emailService.GuardaEmail();


            }
            catch (Exception)
            {

                TempData["Error"] = "El giro se registró correctamente, pero no se pudo enviar el correo de confirmación.";

            }


            //Eso le indica al navegador:“El giro ya fue guardado.Ahora hacé una petición nueva a la acción CrearGiro”.

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
