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
    public class AdminProducto : Controller
    {
        private readonly ApplicationDbContext _context;

        public AdminProducto(ApplicationDbContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            IEnumerable<Producto> listProductos = _context.Producto;
            ViewData["productos"] = listProductos;
            return View();
        }
    }
}
