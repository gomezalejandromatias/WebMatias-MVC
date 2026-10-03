using Newtonsoft.Json;

namespace WebMatias_API.Models
{
    public class MercadoPagoWebhook
    {

        [JsonProperty("type")]
        public string Type { get; set; }

        [JsonProperty("data")]
        public WebhookData Data { get; set; }

    }
}
