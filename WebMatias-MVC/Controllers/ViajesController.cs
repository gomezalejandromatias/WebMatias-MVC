using Microsoft.AspNetCore.Mvc;

namespace WebMatias_MVC.Controllers
{
    public class ViajesController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }


        public IActionResult MostrarVistaViajes() 
        {

            return View("Viajes");
         
        }
    }
}
