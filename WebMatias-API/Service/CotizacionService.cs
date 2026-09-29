using Newtonsoft.Json;
using System.Net.Http.Headers;
using System.Security.Cryptography.X509Certificates;
using System.Text.Json.Serialization;
using WebMatias_API.Models;

namespace WebMatias_API.Service
{
    public class CotizacionService
    {
        private readonly string? _ApiKey;

        public CotizacionService(IConfiguration configuration)
        {

             _ApiKey = configuration["GmApi:ApiKey"];

        }

        public async Task <decimal>  ObtenerCotizacion()
           {


            // Cliente que permite comunicarse con la API mediante HTTP
            HttpClient cliente = new HttpClient();


            // Endpoint: solicita la cotización de pesos argentinos a guaraníes
            string url =
                   "https://rb.girosmovil.com/api/v1/cotizaciones?monedaOrigen=ARS&monedaDestino=PYG";


            cliente.DefaultRequestHeaders.Authorization =
            new AuthenticationHeaderValue("Bearer", _ApiKey);


            // Realiza una petición GET y espera la respuesta de Frankfurter
            HttpResponseMessage respuesta =
                await cliente.GetAsync(url);


            // Verifica que la API haya respondido correctamente
            respuesta.EnsureSuccessStatusCode();


            // Lee el JSON recibido y lo guarda temporalmente como texto
            string json =
                await respuesta.Content.ReadAsStringAsync();


            // Convierte el JSON en un objeto de C# usando la clase como molde
            RespuestaGM cotizacion =
                JsonConvert.DeserializeObject<RespuestaGM>(json);


            // Devuelve solamente el valor decimal de la cotización
            return cotizacion.Data[0].CotizacionValor;


           }




    }
}
