using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace clinica.Models
{
    public class Contacto
    {
        [Key]
        public int Id { get; set; }
        [Required(ErrorMessage ="El nombre es obligatorio")]
        [StringLength(100, ErrorMessage = "El {0} debe ser al menos {2} y máximo {1} caracteres", MinimumLength = 3)]
        [Display(Name = "Nombre")]
        public string Nombre { get; set; }
        [Required(ErrorMessage = "El correo es obligatorio")]
        [StringLength(100, ErrorMessage = "El {0} debe ser al menos {2} y máximo {1} caracteres", MinimumLength = 10)]
        [Display(Name = "Correo")]
        public string Correo { get; set; }
        [Required(ErrorMessage = "El celular es obligatorio")]
        [StringLength(9, ErrorMessage = "El {0} debe ser al menos {2} y máximo {1} caracteres", MinimumLength = 9)]
        [Display(Name = "Celular")]
        public string Celular { get; set; }
        [Required(ErrorMessage = "El mensaje es obligatorio")]
        [StringLength(255, ErrorMessage = "El {0} debe ser al menos {2} y máximo {1} caracteres", MinimumLength = 3)]
        [Display(Name = "Mensaje")]
        public string Mensaje { get; set; }

    }
}
