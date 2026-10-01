using Newtonsoft.Json;
using System.Text;
using WebMatias_API.Models;

namespace WebMatias_API.Service
{
    public class MercadoPagoService
    {
        public string? _accestoken;

        public MercadoPagoService(IConfiguration configuration)
        {
                
            _accestoken = configuration ["GmApi:AccessToken"];


        }

        public async Task<MercadoPagoResponse> CrearPreferencia(int giroId,decimal montoTotal)
        {

            HttpClient cliente = new HttpClient();

            string url = "https://api.mercadopago.com/checkout/preferences";

         

            cliente.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer",_accestoken);


            // Creamos un objeto anónimo llamado "preferencia".
            // Este objeto contendrá los datos que después enviaremos a Mercado Pago.
            var preferencia = new
            {
                // "items" es una propiedad de preferencia.
                // Mercado Pago espera un array porque puede haber uno o varios productos/servicios.
                items = new[]
                {
        // Creamos un objeto anónimo dentro del array.
        // Este objeto representa lo que le estamos cobrando al cliente.
        new
        {
            // Descripción del servicio que estamos cobrando.
            // Usamos giroId para identificar a qué giro pertenece el pago.
            title = $"Giro #{giroId}",

            // Cantidad de servicios/productos que estamos cobrando.
            // En nuestro caso es un solo giro.
            quantity = 1,

            // Moneda en la que vamos a cobrar.
            // ARS = pesos argentinos.
            currency_id = "ARS",

            // Precio que debe pagar el cliente.
            // Este valor viene del MontoTotal calculado por nuestro sistema.
            unit_price = montoTotal
        }
    }
            };

            string jsonPreferencia =
            JsonConvert.SerializeObject(preferencia);

            // Prepara el JSON para poder enviarlo en el cuerpo (body) de la petición HTTP.
            var contenido = new StringContent(

                // Es el JSON que creamos a partir del objeto "preferencia".
                // Contiene los datos que queremos enviar a Mercado Pago.
                jsonPreferencia,

                // Indica la codificación utilizada para enviar el texto.
                // UTF8 es la codificación estándar utilizada normalmente en las APIs.
                Encoding.UTF8,

                // Indica qué tipo de contenido estamos enviando.
                // Le informa a Mercado Pago que el contenido del body es JSON.
                "application/json"
            );




            HttpResponseMessage respuesta = await cliente.PostAsync(url,contenido);

            // Verifica que la API haya respondido correctamente
            respuesta.EnsureSuccessStatusCode();


            // Lee el JSON recibido y lo guarda temporalmente como texto
            string json =
                await respuesta.Content.ReadAsStringAsync();


            // Convierte el JSON en un objeto de C# usando la clase como molde
            MercadoPagoResponse mercadoPagoResponse =
                JsonConvert.DeserializeObject<MercadoPagoResponse>(json);

            return mercadoPagoResponse;


        }



    }
}
