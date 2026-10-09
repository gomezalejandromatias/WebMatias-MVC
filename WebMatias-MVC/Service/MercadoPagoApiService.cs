using WebMatias_MVC.Models;

namespace WebMatias_MVC.Service
{
    public class MercadoPagoApiService
    {

          private readonly HttpClient?_httpClient;

        public MercadoPagoApiService(HttpClient httpClient)
        {

             _httpClient = httpClient;
                
        }

        public async Task<MercadoPagoResponse> ReferenciaMercadoPago(int giroId)
        {


            // Hace una petición POST desde el MVC hacia nuestro MercadoPagoController
            // de la Web API.
          
            // Como el HttpClient ya tiene configurado el BaseAddress "https://localhost:44316"
            
            // La dirección completa termina siendohttps://localhost:44316/api/MercadoPago?id=...&monto=...
   
            // Mandamos el id y el monto como parámetros en la URL.
            // El null significa que en este caso no estamos enviando contenido en el BODY.
            HttpResponseMessage response =
                await _httpClient.PostAsync(
                    $"api/MercadoPago?id={giroId}",
                    null
                );


            // Verifica que la respuesta HTTP haya sido exitosa.
            // Por ejemplo: 200 OK.
            //
            // Si la API devuelve un error como 400, 404 o 500,
            // lanza una excepción.
            response.EnsureSuccessStatusCode();


            // La respuesta de nuestra API llega por HTTP como JSON.
            //
            // ReadFromJsonAsync toma ese JSON y lo DESERIALIZA,
            // convirtiéndolo en un objeto C# de tipo MercadoPagoResponse.
            MercadoPagoResponse mercadoPagoResponse =
                await response.Content
                              .ReadFromJsonAsync<MercadoPagoResponse>();


            // Devolvemos el objeto ya convertido para poder utilizarlo
            // normalmente desde el MVC:
            //
            // mercadoPagoResponse.Id
            // mercadoPagoResponse.InitPoint
            // mercadoPagoResponse.SandboxInitPoint
            return mercadoPagoResponse;


        }

        public async Task<string> BuscarEstadoPago(int giroId)
        {
            HttpResponseMessage response =
                await _httpClient.GetAsync(
                    $"api/MercadoPago/Details/{giroId}"
                );

            response.EnsureSuccessStatusCode();

            string estado = await response.Content.ReadAsStringAsync();

            return estado;
        }



    }
}
