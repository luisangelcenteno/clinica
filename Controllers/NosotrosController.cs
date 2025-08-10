using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace clinica.Controllers
{
    public class NosotrosController : Controller
    {
        // GET: NosotrosController
        public ActionResult Index() {
            return View();
        }

    }
}