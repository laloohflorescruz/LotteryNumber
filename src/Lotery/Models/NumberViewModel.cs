using System;
using System.ComponentModel.DataAnnotations;

namespace Lotery.Models
{
    public class NumberViewModel
    {
        public long Id { get; set; }
        [Display(Name = "1er Premio")]
        public string FirstPrize { get; set; }
        [Display(Name = "2do Premio")]
        public string SecondPrize { get; set; }
        [Display(Name = "3er Premio")]
        public string ThirdPrize { get; set; }
        [Display(Name = "Fecha de sorteo")]
        public DateTime LotteryDate { get; set; }


        public int Cuantos { get; set; }

    }
}
