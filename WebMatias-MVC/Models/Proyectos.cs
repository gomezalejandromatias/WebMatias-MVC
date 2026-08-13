using System.ComponentModel.DataAnnotations;

namespace WebMatias_MVC.Models
{
    public class Proyectos
    {


        public int Id { get; set; }

        [Required]
        [StringLength(100)]
        public string Nombre { get; set; } = string.Empty;

        [Required]
        [StringLength(250)]
        [Display(Name = "Descripción corta")]
        public string DescripcionCorta { get; set; } = string.Empty;

        [Required]
        [Display(Name = "Descripción completa")]
        public string DescripcionCompleta { get; set; } = string.Empty;

        [Required]
        public string Tecnologias { get; set; } = string.Empty;

        public string Estado { get; set; } = string.Empty;

        [Display(Name = "Imagen")]
        public string? UrlImagen { get; set; }

        [Url]
        [Display(Name = "Repositorio de GitHub")]
        public string? UrlGitHub { get; set; }

        public bool Destacado { get; set; }




    }
}
