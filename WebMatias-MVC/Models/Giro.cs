using System.ComponentModel.DataAnnotations;

namespace WebMatias_MVC.Models
{
    public class Giro
    {
        public int GiroId { get; set; }

        public DateTime FechaGiro { get; set; }
        [Required]
        public string DniRemitente { get; set; } = string.Empty;

        // EL STRING.EMPTY DICE QUE ARRANQUE VACIO,ES DECIR," " EN VEZ DE NULL
        [Required]
        public string NombreRemitente { get; set; } = string.Empty;

        // EL STRING.EMPTY DICE QUE ARRANQUE VACIO,ES DECIR," " EN VEZ DE NULL
        [Required ]
        public string TelefonoRemitente { get; set; } = string.Empty;


        // EL STRING.EMPTY DICE QUE ARRANQUE VACIO,ES DECIR," " EN VEZ DE NULL
        [Required]
        public string EmailRemitente { get; set; }  = string.Empty;

        [Required ]
        public string NombreRecibe { get; set; } = string.Empty;
        [Required]
        public string CedulaRecibe { get; set; }  = string.Empty;

        [Required]
        // EL STRING.EMPTY DICE QUE ARRANQUE VACIO,ES DECIR," " EN VEZ DE NULL
        public string TelefonoRecibe { get; set; } = string.Empty;

        [Required]
        public decimal MontoEnvio { get; set; }

        public decimal MontoMonedaExtranjera { get; set; }

        public decimal ComisionAgencia { get; set; }

        public decimal ComisionSistema { get; set; }

        public decimal MontoTotal { get; set; }
        public int TipoGiroId { get; set; }
        public TipoGiro? TipoGiro { get; set; } 

        public decimal CambioExtranjero { get; set; }
        public string EmailService { get; set; } = string.Empty;




    }
}
