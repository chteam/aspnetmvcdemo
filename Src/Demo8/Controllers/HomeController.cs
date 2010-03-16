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
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Process(UserInfo user)
        {
            return Content("Success");
        }
 
        
        public ActionResult ChildPage() {
            return PartialView();
        }
    }
}
