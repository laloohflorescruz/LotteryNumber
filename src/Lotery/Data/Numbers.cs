﻿using System;

namespace Lotery.Data
{
    public class Numbers : BaseEntity
    {
        public string FirstPrize { get; set; }
        public string SecondPrize { get; set; }
        public string ThirdPrize { get; set; }
        public DateTime LotteryDate { get; set; }
    }
}
