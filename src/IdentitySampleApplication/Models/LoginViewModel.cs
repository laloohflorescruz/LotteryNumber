using System.ComponentModel.DataAnnotations;

namespace Lotery.Models
{
    public class LoginViewModel
    {
        [Required]
        [Display(Name = "Usuario")]

        public string UserName { get; set; }
        [Required]
        [Display(Name = "Contraseña")]

        [DataType(DataType.Password)]
        public string Password { get; set; }
        [Display(Name = "Recordar?")]
        public bool RememberMe { get; set; }
    }
}
