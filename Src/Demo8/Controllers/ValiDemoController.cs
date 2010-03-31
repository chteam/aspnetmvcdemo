using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Demo8.Models;
using System.ComponentModel.DataAnnotations;

namespace Demo8.Controllers
{
    public class ValiDemoController : Controller
    {
        public ActionResult Index()
        {
         
            return View(new UserInfo());
        }
        public ActionResult Process(UserInfo user)
        {
            if (!ViewData.ModelState.IsValid)
                return View("Index",user);
            return Content("Success");
        }
        public ActionResult ProcessCustom(int? uid)
        {
            if (!uid.HasValue)
            {
                ViewData.ModelState.AddModelError("uid", "uid不能为空");
                return View("Index");
            }
            return Content("Success");
        }
    }
}
