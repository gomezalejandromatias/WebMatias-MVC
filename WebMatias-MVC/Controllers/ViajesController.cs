using Microsoft.AspNetCore.Mvc;
using WebMatias_MVC.Dao.ViajesDao;
using WebMatias_MVC.Models;

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


        public IActionResult Viajes(string Origen,string Destino)
        {
             
            ViajeDao viajeDao = new ViajeDao();

             var viaje = viajeDao.ListaViaje();

                if (!string.IsNullOrEmpty(Origen)) 
                {
                    viaje = viaje.FindAll(v => v.Origen.Contains(Origen));


                }
                if (!string.IsNullOrEmpty(Destino)) 
                {
                    viaje = viaje.FindAll(v => v.Origen.Contains(Destino));


                }

            

            return View(viaje);



        }
    }
}
