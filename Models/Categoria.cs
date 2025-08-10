using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace clinica.Models
{
    public class Categoria
    {
        [Key]
        public int Id { get; set; }
        [Required(ErrorMessage = "La descripción es obligatorio")]
        [StringLength(100, ErrorMessage = "La {0} debe ser al menos {2} y máximo {1} caracteres", MinimumLength = 3)]
        [Display(Name = "Descripción")]
        public string Descripcion { get; set; }
        [Required(ErrorMessage = "El estado es obligatorio")]
        [StringLength(1, ErrorMessage = "El {0} debe ser al menos {2} y máximo {1} caracteres", MinimumLength = 1)]
        [Display(Name = "Estado")]
        public string Estado { get; set; }
    }
}
