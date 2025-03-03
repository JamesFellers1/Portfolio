using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Reflection;

namespace Term_Project
{
    public partial class ViewHomeProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserType"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
            Home givenHome = new Home();
            List<object> homeData = new List<object>();

            givenHome.HomeStreet = "1234 5th Street";
            givenHome.HomeCity = "Philadelphia";
            givenHome.HomeState = "Pennsylvania";
            givenHome.HomeZip = 19122;
            givenHome.PropertyType = "Single-Family";
            givenHome.HomeSize = 44;
            givenHome.Bedrooms = 3;
            givenHome.Bathrooms = 3;
            givenHome.Amenities = "Fireplace, Garden";
            givenHome.Heating = "Yes";
            givenHome.Cooling = "Yes";
            givenHome.Utilities = "Yes";
            givenHome.HomeDescription = "A nice home";
            givenHome.AskingPrice = Convert.ToDecimal(300000);
            givenHome.TotalSQFootage = 2000;
            givenHome.KitchenDimensions = "A lot";
            givenHome.LivingRoomDimension = "A lot";
            givenHome.MainBedDimension = "A lot";
            givenHome.YearBuilt = 2005;
            givenHome.Garage = "It exists.";
            DateTime dateListed = DateTime.ParseExact("12/17/2015", "MM/dd/yyyy", CultureInfo.InvariantCulture);
            givenHome.DateListed = dateListed;




            homeData.Add(new { Heading = "Street Address", Data = givenHome.HomeStreet });

            
            homeData.Add(new { Heading = "City", Data = givenHome.HomeCity });

            
            homeData.Add(new { Heading = "State", Data = givenHome.HomeState });

            
            homeData.Add(new { Heading = "Zipcode", Data = givenHome.HomeZip.ToString() });

            
            homeData.Add(new { Heading = "Property Type", Data = givenHome.PropertyType });

            
            homeData.Add(new { Heading = "Home Size", Data = givenHome.HomeSize.ToString() });

            
            homeData.Add(new { Heading = "Number of Bedrooms", Data = givenHome.Bedrooms.ToString() });

            
            homeData.Add(new { Heading = "Number of Bathrooms", Data = givenHome.Bathrooms.ToString() });

            if (givenHome.Amenities.Length > 0)
            {
                homeData.Add(new { Heading = "Amenities", Data = givenHome.Amenities });
            }

            
            homeData.Add(new { Heading = "Heating", Data = givenHome.Heating });

            
            homeData.Add(new { Heading = "Cooling", Data = givenHome.Cooling });

            
            homeData.Add(new { Heading = "Utilities", Data = givenHome.Utilities });

            
            homeData.Add(new { Heading = "Home Description", Data = givenHome.HomeDescription });

            
            homeData.Add(new { Heading = "Asking Price", Data = givenHome.AskingPrice.ToString() });

            
            homeData.Add(new { Heading = "Total Square Footage", Data = givenHome.HomeState.ToString() });

            
            homeData.Add(new { Heading = "Kitchen Dimension", Data = givenHome.KitchenDimensions });

            
            homeData.Add(new { Heading = "Living Room Dimensions", Data = givenHome.LivingRoomDimension });

            
            homeData.Add(new { Heading = "Main Bedroom Dimensions", Data = givenHome.MainBedDimension });

            
            homeData.Add(new { Heading = "Year Built", Data = givenHome.YearBuilt.ToString() });

            
            homeData.Add(new { Heading = "Garage", Data = givenHome.Garage });

            
            homeData.Add(new { Heading = "Date Listed", Data = givenHome.DateListed.ToString("MM/dd/yyyy") });

            ViewHomeRepeater.DataSource = homeData;
            ViewHomeRepeater.DataBind();

            int userid = Convert.ToInt32(Session["UserID"]);
            SOAPApi webService = new SOAPApi();
            lblSoapDisplay.Text = "Webservice Output: " + webService.GetUser(Convert.ToInt32(Session["UserID"]));



        }
    }
}