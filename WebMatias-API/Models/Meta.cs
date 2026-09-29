using Newtonsoft.Json;

namespace WebMatias_API.Models
{
    public class Meta
    {


        [JsonProperty("count")]
        public int Count { get; set; }

        [JsonProperty("nextCursor")]
        public string? NextCursor { get; set; }

        [JsonProperty("consultadoEn")]
        public DateTime ConsultadoEn { get; set; }

        [JsonProperty("tipo")]
        public string? Tipo { get; set; }

        [JsonProperty("incluyeAjustes")]
        public bool IncluyeAjustes { get; set; }

        [JsonProperty("incluyeComisiones")]
        public bool IncluyeComisiones { get; set; }


    }
}
