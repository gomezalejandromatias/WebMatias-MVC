using Newtonsoft.Json;

namespace WebMatias_API.Models
{
    public class RespuestaGM
    {

        [JsonProperty("data")]
        public List<Cotizacion> Data { get; set; }

        [JsonProperty("meta")]
        public Meta Meta { get; set; }




    }
}
