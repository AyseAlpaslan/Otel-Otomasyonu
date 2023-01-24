using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Security;
using Otel_Proje.Models;
using Microsoft.SqlServer.Server;

namespace Otel_Proje.Controllers
{
    public class AccountsController : Controller
    {
        [AllowAnonymous]

        // GET: Accounts
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(User user)
        {
            using (OtelEntities3 db = new OtelEntities3())
            {
                var result = db.UserMasters.Where(x => x.UserId == user.Username && x.Password1 == user.Password1);
                if (result.Count() != 0)
                {
                    FormsAuthentication.SetAuthCookie(user.Username, false);
                    //Session["userId]=user.Username;
                    return RedirectToAction("Index", "Admin");
                }
                else
                {
                    TempData["msg"] = "hatalı";
                }
            }
            return View();
        }

        public ActionResult Logout()
        {
            Session.Clear();
            FormsAuthentication.SignOut();
            return View("Login");
        }
    }
}