using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Example.Controllers {
    [HandleError]
    public class HomeController : Controller {
        public ActionResult Index() {
            ViewData["Message"] = "Welcome to DevExpress Extensions for ASP.NET MVC!";
            ViewData["ShowGrid"] = false;
            return View();
        }

        public ActionResult CallbackPanelPartial() {
            if (!string.IsNullOrEmpty(Request.Params["ShowGrid"]))
                ViewData["ShowGrid"] = Convert.ToBoolean(Request.Params["ShowGrid"]);

            return PartialView("CallbackPartial");
        }

        public ActionResult GridViewPartial() {

            return PartialView("GridPartial");
        }
    }
}
