using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Backend
{
    [Route("api/[controller]")]
    [ApiController]
    public class ValuesController: ControllerBase
    {
        public ActionResult<string[]> Get()
        {
            return new[] { "Value 1", "Value 2", "Value 3" };
        }
    }
}
