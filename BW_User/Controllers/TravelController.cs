using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BW_User.Controllers
{
    public class TravelController : ApplicationController
    {
        // GET: Travel
        public ActionResult Index()
        {
            return RedirectToAction("Index", "Home");
        }

        public ActionResult Categories()
        {
            return View();
        }

        public ActionResult Category(int id)
        {
            ViewBag.CatID = id;
            return View();
        }

        public ActionResult Subcategories()
        {
            return View();
        }

        public ActionResult Subcategory(int id)
        {
            dynamic MyModel = new ExpandoObject();
            MyModel.Packages = DataContext.tbl_Package.Where(w => w.pkg_SubcategoryFK == id && w.pkg_Active == true).OrderBy(o => o.pkg_Priority).ToList();
            ViewBag.SctID = id;
            ViewBag.SctName = DataContext.tbl_Subcategory.Where(w => w.sct_ID == id).FirstOrDefault().sct_Name;
            return View(MyModel);
        }

        public ActionResult Packages()
        {
            dynamic MyModel = new ExpandoObject();
            MyModel.Packages = DataContext.tbl_Package.Where(w => w.pkg_Active == true).OrderBy(o => o.pkg_Priority).ToList();
            return View(MyModel);
        }

        public ActionResult Package(int id,string name)
        {
            tbl_Package package = DataContext.tbl_Package.Where(w => w.pkg_ID == id && w.pkg_Active == true).FirstOrDefault();
            package.pkf_Name = package.pkf_Name.Replace("'", "singleQuoteEsc");
            package.pkg_Subtitle = package.pkg_Subtitle.Replace("'", "singleQuoteEsc");
            package.pkg_Overview = package.pkg_Overview.Replace(Environment.NewLine, @"").Replace("'", "singleQuoteEsc").Replace("\r", @"").Replace("\n", @"");
            package.pkg_Description = package.pkg_Description.Replace(Environment.NewLine, @"").Replace("'", "singleQuoteEsc").Replace("\r", @"").Replace("\n", @"");
            package.pkg_Inclusion = package.pkg_Inclusion.Replace(Environment.NewLine, @"").Replace("'", "singleQuoteEsc").Replace("\r", @"").Replace("\n", @"");
            package.pkg_DayHeading1 = package.pkg_DayHeading1.Replace("'", "singleQuoteEsc");
            package.pkg_DayHeading2 = package.pkg_DayHeading2.Replace("'", "singleQuoteEsc");
            package.pkg_DayHeading3 = package.pkg_DayHeading3.Replace("'", "singleQuoteEsc");
            package.pkg_DayItinerary1 = package.pkg_DayItinerary1.Replace(Environment.NewLine, @"").Replace("'", "singleQuoteEsc").Replace("\r", @"").Replace("\n", @"");
            package.pkg_DayItinerary2 = package.pkg_DayItinerary2.Replace(Environment.NewLine, @"").Replace("'", "singleQuoteEsc").Replace("\r", @"").Replace("\n", @"");
            package.pkg_DayItinerary3 = package.pkg_DayItinerary3.Replace(Environment.NewLine, @"").Replace("'", "singleQuoteEsc").Replace("\r", @"").Replace("\n", @"");
            package.pkg_Roomtype1 = package.pkg_Roomtype1.Replace("'", "singleQuoteEsc");
            package.pkg_Roomtype2 = package.pkg_Roomtype2.Replace("'", "singleQuoteEsc");
            package.pkg_Roomtype3 = package.pkg_Roomtype3.Replace("'", "singleQuoteEsc");
            package.tbl_CancelPolicy.cnp_Description = package.tbl_CancelPolicy.cnp_Description.Replace(Environment.NewLine, @"").Replace("'", "singleQuoteEsc").Replace("\r", @"").Replace("\n", @"");
            package.tbl_Exclusion.exc_Description = package.tbl_Exclusion.exc_Description.Replace(Environment.NewLine, @"").Replace("'", "singleQuoteEsc").Replace("\r", @"").Replace("\n", @"");
            package.tbl_TermsAndCondition.tnc_Description = package.tbl_TermsAndCondition.tnc_Description.Replace(Environment.NewLine, @"").Replace("'", "singleQuoteEsc").Replace("\r", @"").Replace("\n", @"");

            List<tbl_Price> tbl_Price = DataContext.tbl_Price.Where(w => w.prc_PackageId == id).ToList();
            List<string> Coords = new List<string>();
            List<string> Prices = new List<string>();
            foreach (tbl_Price p in tbl_Price)
            {
                Coords.Add(p.prc_Coordinate);
                Prices.Add(p.prc_Price.ToString());
            }
            ViewBag.Coord = Coords;
            ViewBag.Price = Prices;

            dynamic MyModel = new ExpandoObject();
            MyModel.Package = package;
            return View(MyModel);
        }

        [HttpPost]
        public ActionResult Booking()
        {
            string Package = Request.Form["nPackage"].ToString();
            string Day = Request.Form["nDay"].ToString();
            string Room = Request.Form["nRoom"].ToString();
            string Price = Request.Form["nPrice"].ToString();
            string Season = Request.Form["nSeason"].ToString();
            string Msg = Request.Form["nMessage"].ToString();
            string Name = Request.Form["nName"].ToString();
            string Mail = Request.Form["nMail"].ToString();
            string Mobile = Request.Form["nMobile"].ToString();
            string Date = Request.Form["nDate"].ToString();
            string Source = Request.Form["nSource"].ToString();
            string Destination = Request.Form["nDestination"].ToString();

            string Message = @"<b>From Package Booking Page</b><br/>" +
                "<br/><b>Package     : </b>" + Package +
                "<br/><b>Day         : </b>" + Day +
                "<br/><b>Room        : </b>" + Room +
                "<br/><b>Price       : </b>" + Price +
                "<br/><b>Season      : </b>" + Season +
                "<br/><b>Msg         : </b>" + Msg +
                "<br/><b>Name        : </b>" + Name +
                "<br/><b>Mail        : </b>" + Mail +
                "<br/><b>Mobile      : </b>" + Mobile +
                "<br/><b>Date        : </b>" + Date +
                "<br/><b>Source      : </b>" + Source +
                "<br/><b>Destination : </b>" + Destination +
                "<br/>";

            WebMail.SendMail(Subject: "Package Booking Enquiry", Message: Message);
            WebMail.SendMail(To: Mail);
            return new JsonResult { Data = "Enquiry Sent" };
        }

    }
}