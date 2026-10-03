using Newtonsoft.Json;

namespace WebMatias_API.Models
{
    public class MercadoPagoPago
    {
        [JsonProperty("id")]
        public long Id { get; set; }

        [JsonProperty("status")]
        public string Status { get; set; }

        [JsonProperty("external_reference")]
        public string ExternalReference { get; set; }

        [JsonProperty("transaction_amount")]
        public decimal TransactionAmount { get; set; }


    }
}
