using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace clinica.Models
{
    public class Usuario
    {
        [Key]
        public int Id { get; set; }
        [Required(ErrorMessage = "El nombre es obligatorio")]
        [StringLength(100, ErrorMessage = "El {0} debe ser al menos {2} y máximo {1} caracteres", MinimumLength = 2)]
        [Display(Name = "Nombre")]
        public string Nombre { get; set; }
        [Required(ErrorMessage = "El apellido paterno es obligatorio")]
        [StringLength(100, ErrorMessage = "El {0} debe ser al menos {2} y máximo {1} caracteres", MinimumLength = 2)]
        [Display(Name = "Apellido Paterno")]
        public string Appaterno { get; set; }
        [Required(ErrorMessage = "El apellido materno es obligatorio")]
        [StringLength(100, ErrorMessage = "El {0} debe ser al menos {2} y máximo {1} caracteres", MinimumLength = 2)]
        [Display(Name = "Apellido Materno")]
        public string Apmaterno { get; set; }
        [Required(ErrorMessage = "El email es obligatorio")]
        [StringLength(100, ErrorMessage = "El {0} debe ser al menos {2} y máximo {1} caracteres", MinimumLength = 2)]
        [Display(Name = "Email")]
        public string Email { get; set; }
        [Required(ErrorMessage = "La dirección es obligatoria")]
        [StringLength(100, ErrorMessage = "La {0} debe ser al menos {2} y máximo {1} caracteres", MinimumLength = 2)]
        [Display(Name = "Dirección")]
        public string Direccion { get; set; }
        [Required(ErrorMessage = "El teléfono es obligatorio")]
        [StringLength(20, ErrorMessage = "El {0} debe ser al menos {2} y máximo {1} caracteres", MinimumLength = 2)]
        [Display(Name = "Teléfono")]
        public string Telefono { get; set; }
        [Required(ErrorMessage = "La contraseña es obligatoria")]
        [StringLength(100, ErrorMessage = "La {0} debe ser al menos {2} y máximo {1} caracteres", MinimumLength = 2)]
        [Display(Name = "Contraseña")]
        public string Contrasena { get; set; }
    }
}
