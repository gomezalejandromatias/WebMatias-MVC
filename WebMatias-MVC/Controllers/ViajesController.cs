using AspNetCoreGeneratedDocument;
using Microsoft.AspNetCore.Mvc;
using WebMatias_MVC.Dao.ViajesDao;
using WebMatias_MVC.Models;

namespace WebMatias_MVC.Controllers
{
    public class ViajesController : Controller
    {
        private ViajeDao _viajedao;

        public ViajesController(ViajeDao viajeDao)
        {
                _viajedao = viajeDao;
        }


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


            if (string.IsNullOrEmpty(Origen) && string.IsNullOrEmpty(Destino))
            {
                return View(new List<Viajes>());
            }

            var viaje = _viajedao.ListaViaje();



            if (!string.IsNullOrEmpty(Origen))
            {
                viaje = viaje.FindAll(v =>
                    v.Origen.ToLower().Contains(Origen.ToLower()));
            }

            if (!string.IsNullOrEmpty(Destino))
            {
                viaje = viaje.FindAll(v =>
                    v.Destino.ToLower().Contains(Destino.ToLower()));
            }



            return View(viaje);



        }
    }
}
