using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BW_User.Controllers
{
    public class HomeController : ApplicationController
    {
        // GET: Home
        public ActionResult Index()
        {
            dynamic MyModel = new ExpandoObject();
            MyModel.Packages = DataContext.tbl_Package.SqlQuery("Select * from tbl_Package where pkg_Active=1 AND pkg_ID in(Select ftp_PlaceFK from tbl_FeaturedPackage) Order By pkg_Priority").ToList<tbl_Package>();
            return View(MyModel);
        }

        [HttpPost]
        public ActionResult EnquiryMail()
        {
            string Name =Request.Form["Name"].ToString();
            string Mobile =Request.Form["Mobile"].ToString();
            string Mail =Request.Form["Mail"].ToString();
            string Date =Request.Form["Date"].ToString();
            string Source =Request.Form["Source"].ToString();
            string Destination =Request.Form["Destination"].ToString();
            string Message = @"<b>From Home Page Enquiry Form</b>" +
                            "<br/><b>Name : </b> :" + Name +
                            "<br/><b>Mobile : </b> :" + Mobile +
                            "<br/><b>Mail : </b> :" + Mail +
                            "<br/><b>Journey Date : </b> :" + Date +
                            "<br/><b>Source : </b> :" + Source +
                            "<br/><b>Destination : </b> :" + Destination;

            WebMail.SendMail(Subject: "Home Page Enquiry", Message: Message);
            WebMail.SendMail(To: Mail);
            return new JsonResult { Data = "Mail Sent" };
        }
    }
}