using Newtonsoft.Json;

namespace WebMatias_API.Models
{
    public class MercadoPagoResponse
    {
        public string Id { get; set; }

        [JsonProperty("init_point")]
        public string InitPoint { get; set; }

        [JsonProperty("sandbox_init_point")]
        public string SandboxInitPoint { get; set; }



    }
}
