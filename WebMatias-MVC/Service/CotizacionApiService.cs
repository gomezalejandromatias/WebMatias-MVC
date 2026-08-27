namespace WebMatias_MVC.Service
{
    public class CotizacionApiService
    {


        private readonly HttpClient _httpClient;

        public CotizacionApiService(HttpClient httpClient)
        {
            _httpClient = httpClient;




        }


        public async Task<decimal> ObtenerCotizacion()
        {

            decimal valor = await _httpClient.GetFromJsonAsync<decimal>("Api/Cotizacion");


            return valor;





        }






    }
}
