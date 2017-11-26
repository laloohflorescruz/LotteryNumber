using Lotery.Data;
using Lotery.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace Lotery.Controllers
{
    public class NumbersController : Controller
    {
        private ApplicationDbContext context;

        public NumbersController(ApplicationDbContext context)
        {
            this.context = context;
        }

        [HttpGet]
        public IActionResult Index()
        {
            IEnumerable<NumberViewModel> model = context.Set<Numbers>().ToList().Select(s => new NumberViewModel
            {
                Id = s.Id,
                FirstPrize = s.FirstPrize,
                SecondPrize = s.SecondPrize,
                ThirdPrize = s.ThirdPrize,
                LotteryDate = s.LotteryDate,
            });
            return View("Index", model);
        }

        [HttpGet]
        public IActionResult AddEditNumber(long? id)
        {
            NumberViewModel model = new NumberViewModel();
            if (id.HasValue)
            {
                Numbers c = context.Set<Numbers>().SingleOrDefault(n => n.Id == id.Value);
                if (c != null)
                {
                    model.Id = c.Id;
                    model.FirstPrize = c.FirstPrize;
                    model.SecondPrize = c.SecondPrize;
                    model.LotteryDate = c.LotteryDate;
                    model.ThirdPrize = c.ThirdPrize;
                }
            }
            return PartialView("~/Views/Numbers/_AddEditNumber.cshtml", model);
        }


        [HttpPost]
        public ActionResult AddEditNumber(long? id, NumberViewModel model)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    bool isNew = !id.HasValue;
                    Numbers c = isNew ? new Numbers
                    {
                        AddedDate = DateTime.UtcNow
                    } : context.Set<Numbers>().SingleOrDefault(s => s.Id == id.Value);
                    c.FirstPrize = model.FirstPrize;
                    c.SecondPrize = model.SecondPrize;
                    c.LotteryDate = model.LotteryDate;
                    c.ThirdPrize = model.ThirdPrize;
                    c.IPAddress = Request.HttpContext.Connection.RemoteIpAddress.ToString();
                    c.ModifiedDate = DateTime.UtcNow;
                    if (isNew)
                    {
                        context.Add(c);
                    }
                    context.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return RedirectToAction("Index");
        }

        [HttpGet]
        public IActionResult DeleteNumber(long id)
        {
            Numbers c = context.Set<Numbers>().SingleOrDefault(n => n.Id == id);
            NumberViewModel model = new NumberViewModel
            {
                FirstPrize = $"{c.FirstPrize} {c.SecondPrize} {c.ThirdPrize}"
            };
            return PartialView("~/Views/Numbers/_DeleteNumber.cshtml", model);
        }

        [HttpPost]
        public IActionResult DeleteNumber(long id, FormCollection form)
        {
            Numbers c = context.Set<Numbers>().SingleOrDefault(n => n.Id == id);
            context.Entry(c).State = Microsoft.EntityFrameworkCore.EntityState.Deleted;
            context.SaveChanges();
            return RedirectToAction("Index");
        }




        [HttpGet]
        public IActionResult Reports()
        {

            return View("Reports");
        }

        
        public IActionResult ReportsList(DateTime start, DateTime end)
        {

            ViewBag.start = start;
            ViewBag.end = end;
       
            var sorteos = context.Numbers.Where(x =>  x.LotteryDate >= start && x.LotteryDate <= end)
                .OrderByDescending(x => x.LotteryDate).ToList();

            IEnumerable<NumberViewModel> model = context.Set<Numbers>().ToList().Select(s => new NumberViewModel
            {
                Id = s.Id,
                FirstPrize = s.FirstPrize,
                SecondPrize = s.SecondPrize,
                ThirdPrize = s.ThirdPrize,
                LotteryDate = s.LotteryDate
            });

            return View("Results", sorteos);       
        }
    }
}
