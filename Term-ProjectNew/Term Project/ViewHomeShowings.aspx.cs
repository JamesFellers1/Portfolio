using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Term_Project
{
    public partial class ViewHomeShowings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserType"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
            List<HomeShowing> homeShowingObjects = new List<HomeShowing>();
            List<object> homeshowings = new List<object>();
            //add here

            if (homeShowingObjects.Count == 0)
            {
                NoShowingsHeading.Style["display"] = "block";
            }
        }
    }
}