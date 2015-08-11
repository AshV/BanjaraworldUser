using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BW_User.Controllers
{
    public class ContactController : ApplicationController
    {
        // GET: Contact
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult ContactMail()
        {
            string Name = Request.Form["txtName"].ToString();
            string Phone = Request.Form["txtPhone"].ToString();
            string Email = Request.Form["txtEmail"].ToString();
            string Message ="<b>Name : </b>"+Name+"<br/><b>Phone</b>"+Phone+"<br/><b>Email : </b>"+Email+"<br/><br/><b>Message : </b><br/>"+ Request.Form["txtMessage"].ToString();
            WebMail.SendMail(Subject:"From Contact Page",Message: Message);
            WebMail.SendMail(To: Email);
            return new JsonResult { Data = "Sent" };
        }
    }
}