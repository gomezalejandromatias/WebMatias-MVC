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
                
            _accestoken = configuration ["MercadoPago:AccessToken"];


        }

        public async Task<MercadoPagoResponse> CrearPreferencia(int giroId,decimal montoTotal)
        {

            HttpClient cliente = new HttpClient();

            string url = "https://api.mercadopago.com/checkout/preferences";

         

            cliente.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer",_accestoken);


            // Creamos un objeto anónimo llamado "preferencia".
            // Este objeto representa toda la información que vamos a enviar
            // a Mercado Pago para crear la preferencia de pago.
            var preferencia = new
            {
                // "items" contiene lo que le estamos cobrando al cliente.
                // Mercado Pago espera un array porque una preferencia
                // puede contener uno o varios productos o servicios.
                items = new[]
                {
        // Creamos un objeto que representa nuestro giro.
        new
        {
            // Descripción que verá el cliente en Mercado Pago.
            // Agregamos el ID para saber a qué giro corresponde el pago.
            title = $"Giro #{giroId}",

            // Cantidad de productos o servicios.
            // Como estamos cobrando un solo giro, utilizamos 1.
            quantity = 1,

            // Moneda utilizada para realizar el cobro.
            // ARS significa pesos argentinos.
            currency_id = "ARS",

            // Precio del giro.
            // Recibimos este valor mediante el parámetro montoTotal
            // del método CrearPreferencia().
            unit_price = montoTotal
        }
    },


                // "back_urls" indica a Mercado Pago a qué URL de nuestro sistema
                // debe regresar el cliente después de realizar el pago.
                //
                // Tenemos una URL diferente dependiendo del resultado
                // que haya tenido el pago.
                back_urls = new
                {
                    // Si el pago fue aprobado, vuelve a la pantalla CrearGiro
                    success = "https://mural-nullify-lethargic.ngrok-free.dev/Giro/CrearGiro",

                    // Por ahora también podemos volver a CrearGiro
                    failure = "https://mural-nullify-lethargic.ngrok-free.dev/Giro/CrearGiro",

                    // Si queda pendiente, también vuelve a CrearGiro
                    pending = "https://mural-nullify-lethargic.ngrok-free.dev/Giro/CrearGiro"
                },


                // "auto_return" controla el regreso automático
                // desde Mercado Pago hacia nuestra aplicación.
                //
                // El valor "approved" indica que, cuando el pago sea aprobado,
                // Mercado Pago debe redirigir automáticamente al cliente
                // hacia la URL indicada en "success".
                auto_return = "approved"
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
