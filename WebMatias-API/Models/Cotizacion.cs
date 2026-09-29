using Newtonsoft.Json;

namespace WebMatias_API.Models
{
    public class Cotizacion
    {


        [JsonProperty("cotizacionId")]
        public string CotizacionId { get; set; }

        [JsonProperty("activo")]
        public bool Activo { get; set; }

        [JsonProperty("monedaOrigen")]
        public string MonedaOrigen { get; set; }

        [JsonProperty("monedaDestino")]
        public string MonedaRecibe { get; set; }

        [JsonProperty("valor")]
        public decimal CotizacionValor { get; set; }
    }
}
