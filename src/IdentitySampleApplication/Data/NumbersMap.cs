using Microsoft.EntityFrameworkCore.Metadata.Builders;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Lotery.Data
{
    public class NumbersMap
    {
        public NumbersMap(EntityTypeBuilder<Numbers> entityBuilder)
        {
            entityBuilder.HasKey(t => t.Id);
            entityBuilder.Property(t => t.FirstPrize).IsRequired();
            entityBuilder.Property(t => t.SecondPrize).IsRequired();
            entityBuilder.Property(t => t.ThirdPrize).IsRequired();
            entityBuilder.Property(t => t.LotteryDate).IsRequired();
        }
    }
}
