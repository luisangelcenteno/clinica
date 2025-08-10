using System;
using clinica.Data;
using clinica.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System.Collections.Generic;
using Microsoft.AspNetCore.Mvc;
using System.Linq;
using System.Threading.Tasks;


namespace clinica.Controllers
{
    public class Adminmensaje : Controller
    {
        private readonly ApplicationDbContext _context;

        public Adminmensaje(ApplicationDbContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            IEnumerable<Contacto> listMensajes = _context.Contacto;
            ViewData["mensajes"] = listMensajes;
            return View();
        }
    }
}