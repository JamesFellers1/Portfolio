using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Term_Project
{
    public partial class ManageHomeProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserType"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
            ErrorLabel.Style["display"] = "none";
            ImageCaptionTextBox.Style["margin-top"] = "7px";


            Home givenHome = new Home();
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

            StreetAddressTextBox.Text = givenHome.HomeStreet;
            CityTextBox.Text = givenHome.HomeCity;


            string selectedStateValue = givenHome.HomeState;
            foreach (ListItem item in StateDropDownList.Items)
            {
                if (item.Value == selectedStateValue)
                {
                    StateDropDownList.SelectedIndex = StateDropDownList.Items.IndexOf(item);
                    break;
                }
            }
            ZipcodeTextBox.Text = givenHome.HomeZip.ToString();

            string selectedPTValue = givenHome.PropertyType;
            foreach (ListItem item in PropertyTypeDropDownList.Items)
            {
                if (item.Value == selectedPTValue)
                {
                    PropertyTypeDropDownList.SelectedIndex = PropertyTypeDropDownList.Items.IndexOf(item);
                    break;
                }
            }

            HomeSizeTextBox.Text = givenHome.HomeSize.ToString();
            NumberOfBedroomsTextBox.Text = givenHome.Bedrooms.ToString();
            NumberOfBathroomsTextBox.Text = givenHome.Bathrooms.ToString();
            AmenitiesTextBox.Text = givenHome.Amenities.ToString();
            HeatingTextBox.Text = givenHome.Heating;
            CoolingTextBox.Text = givenHome.Cooling;
            UtilitiesTextBox.Text = givenHome.Utilities;
            HomeDescriptionTextBox.Text = givenHome.HomeDescription;

            AskingPriceTextBox.Text = givenHome.AskingPrice.ToString();
            TotalSquareFootageTextBox.Text = givenHome.TotalSQFootage.ToString();
            KitchenDimensionsTextBox.Text = givenHome.KitchenDimensions;
            LivingRoomDimensionsTextBox.Text = givenHome.LivingRoomDimension;
            MainBedDimensionsTextBox.Text = givenHome.MainBedDimension;

            YearBuiltTextBox.Text = givenHome.YearBuilt.ToString();
            GarageTextBox.Text = givenHome.Garage;
            DateListedTextBox.Text = givenHome.DateListed.ToString("MM/dd/yyyy");


        }
    }
}