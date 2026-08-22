using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using WebMatias_MVC.Dao.TipoGiroDao;

namespace WebMatias_MVC.Controllers
{
    public class GiroController : Controller
    {
        // GET: GiroController
        public ActionResult Index()
        {
            return View();
        }

        public IActionResult MostrarVistaGiro()
        {

            TipoGiroDao tipoGiroDao = new TipoGiroDao();

            ViewBag.TipoGiro = tipoGiroDao.listaTipoGiro();

            return View("Giro");


        }


        public IActionResult CrearGiro () 
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
