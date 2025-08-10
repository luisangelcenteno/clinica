using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace clinica.Models
{
    public class Producto
    {
        [Key]
        public int Id { get; set; }
        [Required(ErrorMessage = "La descripción es obligatorio")]
        [StringLength(255, ErrorMessage = "La {0} debe ser al menos {2} y máximo {1} caracteres", MinimumLength = 3)]
        [Display(Name = "Descripción")]
        public string Descripcion { get; set; }
        [Required(ErrorMessage = "El detalle es obligatorio")]
        [StringLength(255, ErrorMessage = "El {0} debe ser al menos {2} y máximo {1} caracteres", MinimumLength = 3)]
        [Display(Name = "Detalle")]
        public string Detalle { get; set; }
        [Required(ErrorMessage = "El estado es obligatorio")]
        [StringLength(1, ErrorMessage = "El {0} debe ser al menos {2} y máximo {1} caracteres", MinimumLength = 1)]
        [Display(Name = "Estado")]
        public string Estado { get; set; }
        [Required(ErrorMessage = "La imagen es obligatoria")]
        [StringLength(150, ErrorMessage = "La {0} debe ser al menos {2} y máximo {1} caracteres", MinimumLength = 5)]
        [Display(Name = "Imagen")]
        public string Imagen { get; set; }
        [Required(ErrorMessage = "La información es obligatoria")]
        [StringLength(255, ErrorMessage = "La {0} debe ser al menos {2} y máximo {1} caracteres", MinimumLength = 5)]
        [Display(Name = "Información")]
        public string Informacion { get; set; }
        [Required(ErrorMessage = "El precio es obligatorio")]
        [Display(Name = "Precio")]
        public Double Precio { get; set; }
        [Required(ErrorMessage = "El stock es obligatorio")]
        [Display(Name = "Stock")]
        public int Stock { get; set; }
        [Required(ErrorMessage = "La categoria es obligatoria")]
        [Display(Name = "Categoria")]
        public int Categoria { get; set; }

    }
}
