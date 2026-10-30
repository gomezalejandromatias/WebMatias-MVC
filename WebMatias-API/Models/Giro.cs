namespace WebMatias_API.Models
{
    public class Giro
    {



        public int GiroId { get; set; }

        // Datos del remitente
        public string NombreRemitente { get; set; } = string.Empty;
        public string DniRemitente { get; set; } = string.Empty;
        public string TelefonoRemitente { get; set; } = string.Empty;
        public string EmailRemitente { get; set; } = string.Empty;

        // Datos del destinatario
        public string NombreRecibe { get; set; } = string.Empty;
        public string CedulaRecibe { get; set; } = string.Empty;
        public string TelefonoRecibe { get; set; } = string.Empty;
        public string? AliasRecibe { get; set; }

        // Tipo de giro
        public int TipoGiroId { get; set; }
        public TipoGiro? TipoGiro { get; set; }

        // Importes
        public decimal MontoEnvio { get; set; }
        public decimal MontoTotal { get; set; }
        public decimal MontoMonedaExtranjera { get; set; }

        // Fecha
        public DateTime FechaGiro { get; set; }

        // Estado del giro
        public string Estado { get; set; } = string.Empty;






    }
}
