using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using Microsoft.Extensions.Configuration;

namespace WebApplication1.Controllers
{
    [ApiController]
    [Route("test")]
    public class EmployeeController : ControllerBase
    {

        

        [HttpGet]
        [Route("/getEmp")]
        public async Task<IActionResult> GetEmployees()
        {
            var employes = await Services.Service.getService().getEmployees();
            return Ok(employes);
        }
    }
}
