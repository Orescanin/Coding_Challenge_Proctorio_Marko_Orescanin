﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace WebApplication1.Model
{
    public class SalaryHistory
    {
        public Guid Id { get; set; }

        public Guid employeeId { get; set; }

        public decimal previousSalary{ get; set; }
    
        public DateTime modificationDate { get; set; }


    }
}
