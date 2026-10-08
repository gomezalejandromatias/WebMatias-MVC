using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Net;
using WebMatias_API.Dao.GiroDao;
using WebMatias_API.Models;
using WebMatias_API.Service;


namespace WebMatias_API.Controllers
{
        [Route("api/[controller]")]
        [ApiController]
    public class MercadoPagoController : Controller
    {
        private readonly MercadoPagoService _mercadoPagoService;

        public MercadoPagoController(MercadoPagoService mercadoPagoService)
        {
            _mercadoPagoService = mercadoPagoService;
        }


        [HttpPost]

        public async Task<IActionResult> Post(int id)
        {
            try
            {
                // Buscamos el giro en nuestra base de datos.
                GiroDao girodao = new GiroDao();
                Giro giro = girodao.BuscarGiro(id);

                // Verificamos que el giro exista.
                // Si no existe, devolvemos un error HTTP 404.
                if (giro == null)
                {
                    return NotFound("No se encontró el giro.");
                }

                // Nos comunicamos con Mercado Pago
                // para crear la preferencia de pago.
                MercadoPagoResponse respuesta =
                    await _mercadoPagoService.CrearPreferencia(
                        giro.GiroId,
                        giro.MontoTotal
                    );

                // Si todo salió correctamente,
                // devolvemos HTTP 200 junto con la respuesta.
                return Ok(respuesta);
            }
            catch (HttpRequestException ex)
            {
                // Capturamos errores HTTP al comunicarnos
                // con Mercado Pago.

                // Si Mercado Pago respondió con un código de error,
                // intentamos conservar ese mismo código.
                //
                // Ejemplo:
                // Mercado Pago devuelve 401 -> nuestra API devuelve 401.
                // Mercado Pago devuelve 400 -> nuestra API devuelve 400.
                //
                // Si no existe un código HTTP porque falló la conexión,
                // utilizamos 502 (Bad Gateway).

                int codigoError =
                    (int)(ex.StatusCode ?? HttpStatusCode.BadGateway);

                // Devolvemos el error HTTP a nuestro MVC.
                return StatusCode(
                    codigoError,
                    "Error al comunicarse con Mercado Pago."
                );
            }
            catch (Exception)
            {
                // Capturamos cualquier otra excepción no controlada.
                //
                // Por ejemplo:
                // - Error al consultar SQL.
                // - Error inesperado de programación.
                // - Error al procesar datos.

                // Devolvemos HTTP 500 para indicar
                // que ocurrió un error interno en nuestra API.
                return StatusCode(
                    500,
                    "Ocurrió un error interno al procesar el giro."
                );
            }
        }

        // GET: MercadoPagoController
        public ActionResult Index()
        {
            return View();
        }

        // GET: MercadoPagoController/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: MercadoPagoController/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: MercadoPagoController/Create
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

        // GET: MercadoPagoController/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: MercadoPagoController/Edit/5
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

        // GET: MercadoPagoController/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: MercadoPagoController/Delete/5
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
