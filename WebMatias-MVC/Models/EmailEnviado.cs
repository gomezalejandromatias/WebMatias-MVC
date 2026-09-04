namespace WebMatias_MVC.Models
{
    public class EmailEnviado
    {

        public int EmailEnviadoId { get; set; }

        public int GiroId { get; set; }

        public string EmailDestino { get; set; } = string.Empty;

        public DateTime FechaIntento { get; set; }

        public DateTime? FechaEntrega { get; set; }

        public string Estado { get; set; } = "PENDIENTE";

        public string? DetalleError { get; set; }

        public int CantidadIntentos { get; set; }

        public string? IdMensajeProveedor { get; set; }

        public Giro? Giro { get; set; }




    }
}
