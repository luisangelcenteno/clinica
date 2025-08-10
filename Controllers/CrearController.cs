using clinica.Data;
using clinica.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace clinica.Controllers
{
    public class CrearController : Controller
    {
        private readonly ApplicationDbContext _context;

        public CrearController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: CrearController
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Create(Usuario usuario)
        {
            if (ModelState.IsValid)
            {
                _context.Usuario.Add(usuario);
                _context.SaveChanges();

                TempData["mensaje"] = "Usuario creado satisfactoriamente.";
                return RedirectToAction("Index");
            }
            return View();
        }

    }
}