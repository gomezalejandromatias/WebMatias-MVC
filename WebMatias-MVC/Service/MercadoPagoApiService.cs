namespace WebMatias_MVC.Service
{
    public class MercadoPagoApiService
    {

          private readonly HttpClient?_httpClient;

        public MercadoPagoApiService(HttpClient httpClient)
        {

             _httpClient = httpClient;
                
        }



    }
}
