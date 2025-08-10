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
    public class ContactoController : Controller
    {
        private readonly ApplicationDbContext _context;

        public ContactoController(ApplicationDbContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public IActionResult Create(Contacto contacto)
        {
            if (ModelState.IsValid)
            {
                _context.Contacto.Add(contacto);
                _context.SaveChanges();

                TempData["mensaje"] = "Mensaje enviado correctamente";
                return RedirectToAction("Index");
            }
            return View();
        }

    }
}
