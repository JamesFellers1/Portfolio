using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.IO;
using System.Globalization;
using System.Web.Script.Serialization;
using System.Net.Http;
using System.Text;

using System.Net;

namespace Term_Project
{
    public class ValidationData
    {
        public bool valid { get; set; }
        public string reason { get; set; }
    }
    public partial class AddHome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserType"] == null)
            {
                Response.Redirect("LoginPage.aspx");
            }
            ErrorLabel.Style["display"] = "none";
        }

        protected void AddHomeButton_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                Home newHome = new Home();
                
                if (HomeOwnerRadioButton.Checked == false && RealEstateAgentRadioButton.Checked == false)
                {
                    ErrorLabel.Text = "Must be checked as real estate agent or home owner";
                    ErrorLabel.Style["display"] = "block";
                    return;
                }

                if (StateDropDownList.Text == "")
                {
                    ErrorLabel.Text = "State must be selected";
                    ErrorLabel.Style["display"] = "block";
                    return;
                }

                newHome.HomeStreet = StreetAddressTextBox.Text;
                newHome.HomeCity = CityTextBox.Text;
                newHome.HomeState = StateDropDownList.Text;
                newHome.HomeZip = Int16.Parse(ZipcodeTextBox.Text);
                newHome.PropertyType = PropertyTypeDropDownList.Text;

                newHome.HomeSize = Int16.Parse(HomeSizeTextBox.Text);
                newHome.Bedrooms = Int16.Parse(NumberOfBedroomsTextBox.Text);
                newHome.Bathrooms = Int16.Parse(NumberOfBathroomsTextBox.Text);

                List<string> amenities = new List<string>();
                if (FireplaceCheckBox.Checked)
                {
                    amenities.Add("Fireplace");
                }
                if (BasementCheckBox.Checked)
                {
                    amenities.Add("Fireplace");
                }
                if (PoolCheckBox.Checked)
                {
                    amenities.Add("Fireplace");
                }
                if (HottubCheckBox.Checked)
                {
                    amenities.Add("Fireplace");
                    
                }
                if (GardenCheckBox.Checked)
                {
                    amenities.Add("Fireplace");
                }
                if (OtherAmenitiesTextBox.Text != "")
                {
                    amenities.Add(OtherAmenitiesTextBox.Text);
                }

                if (amenities.Count > 0)
                {
                    newHome.Amenities = String.Join(", ", amenities);
                }

                newHome.Heating = HeatingTextBox.Text;
                newHome.Cooling = CoolingTextBox.Text;
                newHome.Utilities = UtilitiesTextBox.Text;
                newHome.HomeDescription = HomeDescriptionTextBox.Text;

                newHome.AskingPrice = Convert.ToDecimal(Int16.Parse(AskingPriceTextBox.Text));

                if (!HomeImageUpload.HasFile)
                {
                    ErrorLabel.Text = "Image must be uploaded";
                    ErrorLabel.Style["display"] = "block";
                    return;
                }

                newHome.TotalSQFootage = Int16.Parse(TotalSquareFootageTextBox.Text);
                newHome.KitchenDimensions = KitchenDimensionsTextBox.Text;
                newHome.LivingRoomDimension = LivingRoomDimensionsTextBox.Text;
                newHome.MainBedDimension = MainBedDimensionsTextBox.Text;

                newHome.YearBuilt = Int16.Parse(YearBuiltTextBox.Text);
                newHome.Garage = GarageTextBox.Text;

                DateTime datelisted;
                bool success = DateTime.TryParseExact(DateListedTextBox.Text, "MM/dd/yyyy", CultureInfo.InvariantCulture, DateTimeStyles.None, out datelisted);
                if (!success)
                {
                    ErrorLabel.Text = "Format of date listed is incorrect.";
                    ErrorLabel.Style["display"] = "block";
                    return;
                }
                newHome.DateListed = datelisted;

                string apiURL = "http://localhost:35245/api/Home";
                string postData = @"{
                    ""HomeStreet"": ""123 Main St"",
                    ""HomeCity"": ""Philadelphia"",
                    ""HomeState"": ""Pennsylvania"",
                    ""HomeZip"": 19104,
                    ""PropertyType"": ""Single-Family"",
                    ""HomeSize"": 1500,
                    ""Bedrooms"": 3,
                    ""Bathrooms"": 2,
                    ""Amenities"": ""Fireplace, Pool"",
                    ""Heating"": ""Gas"",
                    ""Cooling"": ""Central Air"",
                    ""Utilities"": ""Electric, Gas"",
                    ""HomeDescription"": ""Beautiful home in a great neighborhood"",
                    ""AskingPrice"": 300000,
                    ""Images"": ""image1.jpg"",
                    ""ImgCaption"": ""Front view, Backyard"",
                    ""TotalSQFootage"": 2000,
                    ""KitchenDimensions"": ""10'x12'"",
                    ""LivingRoomDimension"": ""20'x15'"",
                    ""MainBedDimension"": ""15'x15'"",
                    ""YearBuilt"": 1990,
                    ""Garage"": ""Exists"",
                    ""DateListed"": ""2023-05-10T00:00:00""
                }";


                WebRequest request = WebRequest.Create(apiURL);
                request.Method = "POST";
                request.ContentType = "application/json";
                request.ContentLength = postData.Length;

                using (var streamWriter = new StreamWriter(request.GetRequestStream()))
                {
                    streamWriter.Write(postData);
                }

                WebResponse response = request.GetResponse();

                using (var streamReader = new StreamReader(response.GetResponseStream()))
                {
                    string result = streamReader.ReadToEnd();
                }

                response.Close();


                //redirect to success page
                Response.Redirect("AddHomeSuccess.aspx");
            }
        }

        
    }
}