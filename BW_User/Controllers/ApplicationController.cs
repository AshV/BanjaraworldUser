using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace BW_User.Controllers
{
    public abstract class ApplicationController : Controller
    {
        private Chandan_Banjara_WorldEntities db = new Chandan_Banjara_WorldEntities();

        public Chandan_Banjara_WorldEntities DataContext
        {
            get { return db; }
        }

        public ApplicationController()
        {
            ViewBag.Category = DataContext.tbl_Category.Where(w => w.cat_Active == true).OrderBy(o => o.cat_Priority).ToList();
            ViewBag.Subcategory = DataContext.tbl_Subcategory.Where(w => w.sct_Active == true).OrderBy(o => o.sct_Priority).ToList();
            ViewBag.PicturePath = "http://administrator.banjaraworld.com/Pictures";
            ViewBag.Url = "http://banjaraworld.com";
            ViewBag.Pattern = "pattern.png";
        }
    }
}