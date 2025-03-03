using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Term_Project
{
    public partial class ScheduleHomeShowing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserType"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
        }

        protected void ScheduleButton_Click(object sender, EventArgs e)
        {
            DateTime datescheduled;
            bool success = DateTime.TryParseExact(ScheduleDateTextBox.Text, "MM/dd/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out datescheduled);
            if (!success)
            {
                ErrorLabel.Text = "Format of date listed is incorrect.";
                ErrorLabel.Style["display"] = "block";
                return;
            }

            DateTime todaysDate = DateTime.Today;
            int dateCompare = DateTime.Compare(todaysDate, datescheduled);
            if (dateCompare > 0 || dateCompare == 0)
            {
                ErrorLabel.Text = "Please select a later date.";
                ErrorLabel.Style["display"] = "block";
                return;
            }

            if (NineAMRadioButton.Checked == false && TenAMRadioButton.Checked == false && ElevenAMRadioButton.Checked == false && TwoPMRadioButton.Checked == false && ThreePMRadioButton.Checked == false && FourPMRadioButton.Checked == false)
            {
                ErrorLabel.Text = "Please select a time range that works for you.";
                ErrorLabel.Style["display"] = "block";
                return;
            }

            HomeShowing scheduledHomeShow = new HomeShowing();
            
            scheduledHomeShow.timeSlot = Request.Form["shs-time"];
            if (!string.IsNullOrEmpty(scheduledHomeShow.timeSlot))
            {
                scheduledHomeShow.timeSlot = "not selected";
            }
        }
    }
}