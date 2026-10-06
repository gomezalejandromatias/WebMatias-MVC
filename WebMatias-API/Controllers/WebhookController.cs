using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using WebMatias_API.Dao.GiroDao;
using WebMatias_API.Models;
using WebMatias_API.Service;

namespace WebMatias_API.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class WebhookController : Controller
    {
        private readonly MercadoPagoService _mercadoPagoservice;

        private readonly GiroDao _giroDao;
        public WebhookController(MercadoPagoService mercadoPagoService,GiroDao giroDao)
        {
            _mercadoPagoservice = mercadoPagoService;
            _giroDao = giroDao;

            
        }

        [HttpPost]
        

        public async Task<IActionResult> RecibirWebhook(MercadoPagoWebhook mercadoPagoWebhook)
        {
            string xRequestId = Request.Headers["x-request-id"];
            string xSignature = Request.Headers["x-signature"];

            bool firmaValida =
                _mercadoPagoservice.ValidarFirmaWebhook(
                    mercadoPagoWebhook.Data.Id,
                    xRequestId,
                    xSignature);

            // Si la firma NO es válida, corto acá
            if (!firmaValida)
            {
                return Unauthorized();
            }




            // Verifico que la notificación sea de un pago
            if (mercadoPagoWebhook.Type == "payment")
            {
                // Obtengo el ID que generó Mercado Pago
                string pagoId = mercadoPagoWebhook.Data.Id;

                // Consulto a Mercado Pago los datos reales de ese pago
                MercadoPagoPago pago =
                    await _mercadoPagoservice.ObtenerPago(pagoId);

                // Verifico que Mercado Pago realmente lo tenga aprobado
                if (pago.Status == "approved")
                {
                    // external_reference contiene nuestro GiroId
                    int giroId = Convert.ToInt32(pago.ExternalReference);

                    // Cambio el estado en nuestra base de datos
                    _giroDao.MarcarComoPagado(giroId);
                }
            }

            // Le confirmamos a Mercado Pago que recibimos la notificación
            return Ok();



        }

        // GET: WebhookController
        public ActionResult Index()
        {
            return View();
        }

        // GET: WebhookController/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: WebhookController/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: WebhookController/Create
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

        // GET: WebhookController/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: WebhookController/Edit/5
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

        // GET: WebhookController/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: WebhookController/Delete/5
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
