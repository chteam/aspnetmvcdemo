using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Demo8.Models;

namespace Demo8.Controllers
{
    [HandleError]
    public class HomeController : Controller
    {
        public ActionResult Index(string name)
        {
 
            var model = new UserInfo()
            {
                Name = "abc",
                Age = 11
            };
            if (Request.Form.Count != 0)
                if (!ViewData.ModelState.IsValid)
                    ViewData.ModelState.AddModelError("Name", "Name是必添项!");

           // ViewData["Message"] = "Welcome to ASP.NET MVC!";
            //return View();
       
            return View("ValidateDemo", model);
        }

        public ActionResult About()
        {
            return View();
        }
        
        public ActionResult ChildPage() {
            return PartialView();
        }
    }
}
