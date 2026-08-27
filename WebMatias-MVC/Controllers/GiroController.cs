using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using WebMatias_MVC.Dao.TipoGiroDao;
using WebMatias_MVC.Models;
using WebMatias_MVC.Service;

namespace WebMatias_MVC.Controllers
{
    public class GiroController : Controller
    {

        public readonly CotizacionApiService _cotizacionApiService;

        public GiroController(CotizacionApiService cotizacionApiService)
        {
            _cotizacionApiService = cotizacionApiService;
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

        public IActionResult CrearGiro (Giro giro) 
        { 
           


            return View();

        
        
        
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
