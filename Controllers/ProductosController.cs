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
    public class ProductosController : Controller
    {
        /*List<Producto> listEmployee = new List<Producto>();*/
        private readonly ApplicationDbContext _context;

        public ProductosController(ApplicationDbContext context)
        {
            _context = context;
        }

        public IActionResult Index()
        {
            IEnumerable<Producto> listProductos = _context.Producto;
            IEnumerable<Categoria> listCategorias = _context.Categoria;
            ViewData["productos"] = listProductos;
            ViewData["categorias"] = listCategorias;
            return View();
        }

        public IActionResult Detalle(int? id)
        {
            if(id == null || id == 0) {
                return NotFound();
            }

            var producto = _context.Producto.Find(id);
            if(producto == null) {
                return NotFound();
            }
            IEnumerable<Producto> listProductos = _context.Producto.Where(x => x.Categoria == producto.Categoria);
            ViewData["productos"] = listProductos;
            return View(producto);
        }

        public IActionResult Categoria(int? id)
        {
            IEnumerable<Producto> listProductos = _context.Producto.Where(x => x.Categoria == id);
            IEnumerable<Categoria> listCategorias = _context.Categoria;
            ViewData["productos"] = listProductos;
            ViewData["categorias"] = listCategorias;
            return View();
        }

        public IActionResult Carrito()
        {
            return View();
        }

        public IActionResult Venta()
        {
            return View();
        }
    }
}
