namespace WebMatias_MVC.Models
{
    public class Giro
    {
        public int GiroId { get; set; }

        public DateTime FechaGiro { get; set; }

        // EL STRING.EMPTY DICE QUE ARRANQUE VACIO,ES DECIR," " EN VEZ DE NULL
        public string NombreRemitente { get; set; } = string.Empty;

        // EL STRING.EMPTY DICE QUE ARRANQUE VACIO,ES DECIR," " EN VEZ DE NULL
        public string TelefonoRemitente { get; set; } = string.Empty;

        // EL STRING.EMPTY DICE QUE ARRANQUE VACIO,ES DECIR," " EN VEZ DE NULL
        public string NombreRecibe { get; set; } = string.Empty;


        // EL STRING.EMPTY DICE QUE ARRANQUE VACIO,ES DECIR," " EN VEZ DE NULL
        public string TelefonoRecibe { get; set; } = string.Empty;

        public decimal MontoEnvio { get; set; }

        public decimal MontoMonedaExtranjera { get; set; }

        public decimal ComisionAgencia { get; set; }

        public decimal ComisionSistema { get; set; }

        public decimal MontoTotal { get; set; }
        public int TipoGiroId { get; set; }
        public TipoGiro? TipoGiro { get; set; } 

        public decimal CambioExtranjero { get; set; }





    }
}
