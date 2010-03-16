using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Demo8.Models;

namespace Demo8.Controllers
{
    public class ValiDemoController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Process(UserInfo user)
        {
            if (!ViewData.ModelState.IsValid)
                return View("Index",user);
            return Content("Success");
        }

    }
}
