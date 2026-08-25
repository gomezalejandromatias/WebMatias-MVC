using Newtonsoft.Json;

namespace WebMatias_API.Models
{
    public class RespuestaCotizacion
    {

        // Fecha correspondiente a la cotización
        [JsonProperty("date")]
        public string Fecha { get; set; }


        // Moneda desde la cual se realiza la conversión, por ejemplo ARS
        [JsonProperty("base")]
        public string MonedaOrigen { get; set; }


        // Moneda a la cual se realiza la conversión, por ejemplo PYG
        [JsonProperty("quote")]
        public string MonedaDestino { get; set; }


        // Valor de cambio: cuánta moneda de destino equivale a una unidad de origen
        [JsonProperty("rate")]
        public decimal Valor { get; set; }






    }




}
