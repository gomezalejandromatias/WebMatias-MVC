using System.ComponentModel.DataAnnotations;

namespace WebMatias_MVC.Models
{
    public class Giro
    {
        public int GiroId { get; set; }

        public DateTime FechaGiro { get; set; }

        [Required(ErrorMessage = "El DNI del remitente es obligatorio")]
        public string DniRemitente { get; set; } = string.Empty;

        [Required(ErrorMessage = "El nombre y apellido del remitente son obligatorios")]
        public string NombreRemitente { get; set; } = string.Empty;

        [Required(ErrorMessage = "El teléfono del remitente es obligatorio")]
        public string TelefonoRemitente { get; set; } = string.Empty;

        [Required(ErrorMessage = "El correo electrónico es obligatorio")]
        [EmailAddress(ErrorMessage = "Ingresá un correo electrónico válido")]
        public string EmailRemitente { get; set; } = string.Empty;

        [Required(ErrorMessage = "El nombre y apellido del destinatario son obligatorios")]
        public string NombreRecibe { get; set; } = string.Empty;

        [Required(ErrorMessage = "La cédula del destinatario es obligatoria")]
        public string CedulaRecibe { get; set; } = string.Empty;

        [Required(ErrorMessage = "El teléfono del destinatario es obligatorio")]
        public string TelefonoRecibe { get; set; } = string.Empty;

        [Required(ErrorMessage = "El monto a enviar es obligatorio")]
        [Range(typeof(decimal), "0.01", "999999999",
         ErrorMessage = "El monto debe ser mayor que cero")]
        public decimal MontoEnvio { get; set; }

        public decimal MontoMonedaExtranjera { get; set; }

        public decimal ComisionAgencia { get; set; }

        public decimal ComisionSistema { get; set; }

        public decimal MontoTotal { get; set; }

        public int TipoGiroId { get; set; }

        public TipoGiro? TipoGiro { get; set; }

        public decimal CambioExtranjero { get; set; }

        public string? AliasRecibe { get; set; }
    }
}
