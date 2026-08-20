using System.ComponentModel.DataAnnotations;

namespace WebMatias_MVC.Models
{
    public class Viajes
    {


        public int Id { get; set; }

        [Required]
        [StringLength(100)]
        public string Origen { get; set; } = string.Empty;

        [Required]
        [StringLength(100)]
        public string Destino { get; set; } = string.Empty;

        [Required]
        public string Descripcion { get; set; } = string.Empty;

        [Required]
        public string Requisitos { get; set; } = string.Empty;

        [Display(Name = "Duración aproximada")]
        public string? DuracionAproximada { get; set; }

        [Display(Name = "Imagen")]
        public string? UrlImagen { get; set; }

        [DataType(DataType.Date)]
        [Display(Name = "Última actualización")]
        public DateTime FechaActualizacion { get; set; } = DateTime.Today;

        public bool Activo { get; set; } = true;

        
        public TimeSpan? HorarioSalida { get; set; }

       public   double Precio {  get; set; }

       public  string? Servicio { get; set; }


    }
}
