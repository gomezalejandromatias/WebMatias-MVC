using System.Security.Cryptography.X509Certificates;
using System.Text.Json.Serialization;
using WebMatias_API.Models;
using Newtonsoft.Json;

namespace WebMatias_API.Service
{
    public class CotizacionService
    {


           public async Task <decimal>  ObtenerCotizacion()
           {


            // Cliente que permite comunicarse con la API mediante HTTP
            HttpClient cliente = new HttpClient();


            // Endpoint: solicita la cotización de pesos argentinos a guaraníes
            string url =
                "https://api.frankfurter.dev/v2/rate/ARS/PYG";


            // Realiza una petición GET y espera la respuesta de Frankfurter
            HttpResponseMessage respuesta =
                await cliente.GetAsync(url);


            // Verifica que la API haya respondido correctamente
            respuesta.EnsureSuccessStatusCode();


            // Lee el JSON recibido y lo guarda temporalmente como texto
            string json =
                await respuesta.Content.ReadAsStringAsync();


            // Convierte el JSON en un objeto de C# usando la clase como molde
            RespuestaCotizacion cotizacion =
                JsonConvert.DeserializeObject<RespuestaCotizacion>(json);


            // Devuelve solamente el valor decimal de la cotización
            return cotizacion.Valor;


           }




    }
}
