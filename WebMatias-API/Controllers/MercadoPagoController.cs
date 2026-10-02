using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
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

        public async Task<MercadoPagoResponse> post (int id,decimal monto)
        {

            MercadoPagoResponse mercadoPagoResponse = await _mercadoPagoService.CrearPreferencia(id, monto);

            return mercadoPagoResponse;

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
