﻿using Microsoft.AspNetCore.Identity.EntityFrameworkCore;

namespace Lotery.Data
{
    public class ApplicationUser:IdentityUser
    {
        public string Name { get; set; }
    }
}
