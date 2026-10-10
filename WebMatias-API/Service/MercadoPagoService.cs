using Newtonsoft.Json;
using System.Security.Cryptography;
using System.Text;
using WebMatias_API.Models;

using System.Text;

namespace WebMatias_API.Service
{
    public class MercadoPagoService
    {
        public string? _accestoken;

        public string? _webhookSecret;

        public MercadoPagoService(IConfiguration configuration)
        {

            _accestoken = configuration["MercadoPago:AccessToken"];

            _webhookSecret = configuration["MercadoPago:WebhookSecret"];


        }

        public async Task<MercadoPagoResponse> CrearPreferencia(int giroId, decimal montoTotal)
        {

            HttpClient cliente = new HttpClient();

            string url = "https://api.mercadopago.com/checkout/preferences";



            cliente.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", _accestoken);


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
                external_reference = giroId.ToString(),
                notification_url = "https://mural-nullify-lethargic.ngrok-free.dev/api/Webhook",


                // "back_urls" indica a Mercado Pago a qué URL de nuestro sistema
                // debe regresar el cliente después de realizar el pago.
                //
                // Tenemos una URL diferente dependiendo del resultado
                // que haya tenido el pago.
                back_urls = new
                {
                    // Si el pago fue aprobado
                    success = $"https://mural-nullify-lethargic.ngrok-free.dev/Giro/Details/{giroId}",

                    // Si el pago fue rechazado
                    failure = $"https://mural-nullify-lethargic.ngrok-free.dev/Giro/Details/{giroId}",

                    // Si el pago quedó pendiente
                    pending = $"https://mural-nullify-lethargic.ngrok-free.dev/Giro/Details/{giroId}"
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




            HttpResponseMessage respuesta = await cliente.PostAsync(url, contenido);

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

        public async Task<MercadoPagoPago> ObtenerPago(string pagoId)
        {
            // Creo el cliente HTTP
            HttpClient cliente = new HttpClient();

            // Armo la URL con el ID del pago que llegó en el webhook
            string url = $"https://api.mercadopago.com/v1/payments/{pagoId}";

            // Me autentico en Mercado Pago
            cliente.DefaultRequestHeaders.Authorization =
                new System.Net.Http.Headers.AuthenticationHeaderValue(
                    "Bearer",
                    _accestoken
                );

            // Hago el GET a Mercado Pago
            HttpResponseMessage respuesta =
                await cliente.GetAsync(url);

            // Si Mercado Pago respondió con error, lanza excepción
            respuesta.EnsureSuccessStatusCode();

            // Leo el JSON que devolvió Mercado Pago
            string json =
                await respuesta.Content.ReadAsStringAsync();

            // Convierto el JSON a nuestro objeto C#
            MercadoPagoPago pago =
                JsonConvert.DeserializeObject<MercadoPagoPago>(json);

            // Devuelvo el pago al Controller
            return pago;



        }

        public bool ValidarFirmaWebhook(string dataId, string xRequestId,string xSignature)
        {
            try
            {
                // Variables donde voy a guardar:
                // ts = timestamp que manda Mercado Pago
                // v1 = firma que calculó Mercado Pago
                string ts = "";
                string v1 = "";

                // xSignature llega, por ejemplo:
                // "ts=123456,v1=abcdef"
                // Lo separo por la coma:
                // partes[0] = "ts=123456"
                // partes[1] = "v1=abcdef"
                string[] partes = xSignature.Split(',');

                // Recorro cada parte de xSignature
                foreach (string parte in partes)
                {
                    // Separo cada parte por el signo =
                    // Ejemplo:
                    // "ts=123456"
                    // claveValor[0] = "ts"
                    // claveValor[1] = "123456"
                    string[] claveValor = parte.Split('=');

                    // Compruebo que realmente tenga una clave y un valor
                    if (claveValor.Length == 2)
                    {
                        // Si la clave es "ts", guardo su valor
                        if (claveValor[0] == "ts")
                        {
                            ts = claveValor[1];
                        }

                        // Si la clave es "v1", guardo la firma
                        // que vino desde Mercado Pago
                        if (claveValor[0] == "v1")
                        {
                            v1 = claveValor[1];
                        }
                    }
                }

                // Si no pude obtener ts o v1,
                // no puedo validar la firma
                if (string.IsNullOrEmpty(ts) || string.IsNullOrEmpty(v1))
                {
                    return false;
                }

                // Armo el manifest con el formato que requiere Mercado Pago.
                // dataId viene del body del webhook.
                // xRequestId viene del header x-request-id.
                // ts lo obtuve arriba desde x-signature.
                string manifest =
                    $"id:{dataId};request-id:{xRequestId};ts:{ts};";

                // Creo HMAC-SHA256 usando mi Webhook Secret como clave.
                // El Secret se convierte de string a bytes porque HMAC trabaja con bytes.
                using var hmac = new HMACSHA256(
                    Encoding.UTF8.GetBytes(_webhookSecret));

                // Calculo MI firma usando el manifest.
                // Primero convierto el manifest a bytes.
                byte[] hash = hmac.ComputeHash(
                    Encoding.UTF8.GetBytes(manifest));

                // El resultado de HMAC está en bytes.
                // Lo convierto a texto hexadecimal para poder compararlo
                // con v1, que es la firma que mandó Mercado Pago.
                string firmaCalculada =
                    Convert.ToHexString(hash).ToLower();

                // Comparo:
                // firmaCalculada = firma calculada por mi API
                // v1             = firma enviada por Mercado Pago
                //
                // Si son iguales devuelve true.
                // Si son diferentes devuelve false.
                return firmaCalculada == v1;
            }
            catch (Exception ex)
            {
                // Si ocurre cualquier error durante la validación,
                // considero la firma como NO válida.

                string error = ex.Message; // Poné breakpoint acá
                return false;
                
            }





        }
    }
}
