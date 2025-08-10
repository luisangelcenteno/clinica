using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace clinica.Controllers
{
    public class ServiciosController : Controller
    {
        // GET: ServiciosController
        public ActionResult Index()
        {
            return View();
        }

    }
}
