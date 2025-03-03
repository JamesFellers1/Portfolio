<%@ Page Title="" Language="C#" MasterPageFile="~/REMaster.Master" AutoEventWireup="true" CodeBehind="AddHome.aspx.cs" Inherits="Term_Project.AddHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="topnav">
        <a href="HomePage.aspx" id="HomeNav" runat="server">Home</a>
        <a href="SearchHomesPage.aspx" id="SearchNav" runat="server">Search</a>
        <a href="AddHome.aspx" id="AddHomeNav" runat="server">List a Home</a>
        <a href="MakeOffer.aspx" id="MakeOfferNav" runat="server">Make Offer</a>
        <a href="ManageHomeProfile.aspx" id="ManageHomeProfileNav" runat="server">Manage Profile</a>
        <a href="ViewHomeProfile.aspx" id="ViewHomeNav" runat="server">View Home</a>
    </div>
    <div class="add-home-section wf-section" id="add-home-section">
     <div class="add-home-container container w-container">
      <h1 class="add-home-main-heading">Add A Home Profile</h1>
      <asp:Label Text="Fixed Label" ID="ErrorLabel" runat="server" CssClass="add-home-error-label"/>
      <div class="add-home-form w-form">
           <div class="add-home-form-block" data-name="Add Home Form" id="wf-form-Add-Home-Form" method="get" name="wf-form-Add-Home-Form">
                <label class="add-home-label">I am the:</label>

               <label class="add-home-radio w-radio">
                   <asp:RadioButton runat="server" ID="HomeOwnerRadioButton" CssClass="w-form-formradioinput w-radio-input" GroupName="UserType" Value="Home Owner" required="required"/>
                   <span class="w-form-label" for="HomeOwnerRadioButton">Home Owner</span>
                </label>

               <label class="add-home-radio w-radio">
                    <asp:RadioButton ID="RealEstateAgentRadioButton" runat="server" CssClass="w-form-formradioinput w-radio-input" GroupName="UserType" value="Real Estate Agent" required="required" />
                    <span class="w-form-label" for="RealEstateAgentRadioButton">Real Estate Agent</span>
                </label>

                <label class="add-home-label" for="Street-Address">Address</label>
                <asp:TextBox ID="StreetAddressTextBox" runat="server" CssClass="add-home-text-field w-input" MaxLength="256" placeholder="Street Address" Required="True" Text="" />
                <asp:TextBox ID="CityTextBox" runat="server" CssClass="add-home-text-field ah-short-1 w-input" MaxLength="256" placeholder="City" Required="True" Text=""/>
                <asp:DropDownList ID="StateDropDownList" runat="server" CssClass="add-home-text-field ah-short-1 w-select" Required="True">
                    <asp:ListItem Value="" Text="Select State" />
                    <asp:ListItem Value="Alabama" Text="Alabama" />
                    <asp:ListItem Value="Alaska" Text="Alaska" />
                    <asp:ListItem Value="Arizona" Text="Arizona" />
                    <asp:ListItem Value="Arkansas" Text="Arkansas" />
                    <asp:ListItem Value="California" Text="California" />
                    <asp:ListItem Value="Colorado" Text="Colorado" />
                    <asp:ListItem Value="Connecticut" Text="Connecticut" />
                    <asp:ListItem Value="Delaware" Text="Delaware" />
                    <asp:ListItem Value="Florida" Text="Florida" />
                    <asp:ListItem Value="Georgia" Text="Georgia" />
                    <asp:ListItem Value="Hawaii" Text="Hawaii" />
                    <asp:ListItem Value="Idaho" Text="Idaho" />
                    <asp:ListItem Value="Illinois" Text="Illinois" />
                    <asp:ListItem Value="Indiana" Text="Indiana" />
                    <asp:ListItem Value="Iowa" Text="Iowa" />
                    <asp:ListItem Value="Kansas" Text="Kansas" />
                    <asp:ListItem Value="Kentucky" Text="Kentucky" />
                    <asp:ListItem Value="Louisiana" Text="Louisiana" />
                    <asp:ListItem Value="Maine" Text="Maine" />
                    <asp:ListItem Value="Maryland" Text="Maryland" />
                    <asp:ListItem Value="Massachusetts" Text="Massachusetts" />
                    <asp:ListItem Value="Michigan" Text="Michigan" />
                    <asp:ListItem Value="Minnesota" Text="Minnesota" />
                    <asp:ListItem Value="Mississippi" Text="Mississippi" />
                    <asp:ListItem Value="Missouri" Text="Missouri" />
                    <asp:ListItem Value="Montana" Text="Montana" />
                    <asp:ListItem Value="Nebraska" Text="Nebraska" />
                    <asp:ListItem Value="Nevada" Text="Nevada" />
                    <asp:ListItem Value="New Hampshire" Text="New Hampshire" />
                    <asp:ListItem Value="New Jersey" Text="New Jersey" />
                    <asp:ListItem Value="New Mexico" Text="New Mexico" />
                    <asp:ListItem Value="New York" Text="New York" />
                    <asp:ListItem Value="North Carolina" Text="North Carolina" />
                    <asp:ListItem Value="North Dakota" Text="North Dakota" />
                    <asp:ListItem Value="Ohio" Text="Ohio" />
                    <asp:ListItem Value="Oklahoma" Text="Oklahoma" />
                    <asp:ListItem Value="Oregon" Text="Oregon" />
                    <asp:ListItem Value="Pennsylvania" Text="Pennsylvania" />
                    <asp:ListItem Value="Rhode Island" Text="Rhode Island" />
                    <asp:ListItem Value="South Carolina" Text="South Carolina" />
                    <asp:ListItem Value="South Dakota" Text="South Dakota" />
                    <asp:ListItem Value="Tennessee" Text="Tennessee" />
                    <asp:ListItem Value="Texas" Text="Texas" />
                    <asp:ListItem Value="Utah" Text="Utah" />
                    <asp:ListItem Value="Vermont" Text="Vermont" />
                    <asp:ListItem Value="Virginia" Text="Virginia" />
                    <asp:ListItem Value="Washington" Text="Washington" />
                    <asp:ListItem Value="West Virginia" Text="West Virginia" />
                    <asp:ListItem Value="Wisconsin" Text="Wisconsin" />
                    <asp:ListItem Value="Wyoming" Text="Wyoming" />
                </asp:DropDownList>
                <asp:TextBox ID="ZipcodeTextBox" runat="server" CssClass="add-home-text-field ah-short-1 w-input" MaxLength="5" placeholder="Zipcode" Required="True" Text=""/>


                <label class="add-home-label" for="Property-Typye">Property Type</label>
                <asp:DropDownList ID="PropertyTypeDropDownList" runat="server" CssClass="add-home-text-field w-select" Required="True">
                    <asp:ListItem Value="Single-Family" Text="Single-Family" />
                    <asp:ListItem Value="Multi-Family" Text="Multi-Family" />
                    <asp:ListItem Value="Townhouse" Text="Townhouse" />
                    <asp:ListItem Value="Condo" Text="Condo" />
                </asp:DropDownList>
               

                <label class="add-home-label" for="Home-Size">Home Details</label>
                <asp:TextBox ID="HomeSizeTextBox" runat="server" CssClass="add-home-text-field ah-short-2 w-input" MaxLength="256" placeholder="Home size (in square ft)" Required="True" Text="" Type="number"/>
                <asp:TextBox ID="NumberOfBedroomsTextBox" runat="server" CssClass="add-home-text-field ah-short-2 w-input" MaxLength="256" placeholder="# of Bedrooms" Required="True" Text="" Type="number"/>
                <asp:TextBox ID="NumberOfBathroomsTextBox" runat="server" CssClass="add-home-text-field ah-short-2 w-input" MaxLength="256" placeholder="# of Bathrooms" Required="True" Text="" Type="number"/>
               

                <label class="add-home-label" for="Home-Size-2">Amenities</label>
                <label class="w-checkbox add-home-checkbox">
                  <asp:CheckBox ID="FireplaceCheckBox" runat="server" CssClass="w-checkbox-input" data-name="Fireplace" />
                  <span class="w-form-label" for="FireplaceCheckBox">Fireplace</span>
                </label>
                <label class="w-checkbox add-home-checkbox">
                    <asp:CheckBox ID="BasementCheckBox" runat="server" CssClass="w-checkbox-input" data-name="Basement" />
                    <span class="w-form-label" for="BasementCheckBox">Basement</span>
                </label>
                <label class="w-checkbox add-home-checkbox">
                    <asp:CheckBox ID="PoolCheckBox" runat="server" CssClass="w-checkbox-input" data-name="Pool" />
                    <span class="w-form-label" for="PoolCheckBox">Pool</span>
                </label>
                <label class="w-checkbox add-home-checkbox">
                    <asp:CheckBox ID="HottubCheckBox" runat="server" CssClass="w-checkbox-input" data-name="Hot-Tub" />
                    <span class="w-form-label" for="HottubCheckBox">Hot-Tub</span>
                </label>
                <label class="w-checkbox add-home-checkbox">
                    <asp:CheckBox ID="GardenCheckBox" runat="server" CssClass="w-checkbox-input" data-name="Garden" />
                    <span class="w-form-label" for="GardenCheckBox">Garden</span>
                </label>
                <asp:TextBox ID="OtherAmenitiesTextBox" runat="server" CssClass="add-home-text-field w-input" MaxLength="256" placeholder="Other Amenities" Text=""/>

                <label class="add-home-label" for="Heating">Heating</label>
                <asp:TextBox ID="HeatingTextBox" runat="server" CssClass="add-home-text-field w-input" MaxLength="256" Required="True" Text=""/>

                <label class="add-home-label" for="Cooling">Cooling</label>
                <asp:TextBox ID="CoolingTextBox" runat="server" CssClass="add-home-text-field w-input" MaxLength="256" Required="True" Text=""/>

                <label class="add-home-label" for="Utilities">Utilities</label>
                <asp:TextBox ID="UtilitiesTextBox" runat="server" CssClass="add-home-text-field w-input" MaxLength="256" Required="True" Text=""/>

                <label class="add-home-label" for="Home-Description">Home Description</label>
                <asp:TextBox ID="HomeDescriptionTextBox" runat="server" TextMode="MultiLine" Rows="4" CssClass="add-home-text-field add-home-text-area w-input" placeholder="" Required="True"></asp:TextBox>

                <label class="add-home-label" for="Price">Asking Price</label>
                <asp:TextBox ID="AskingPriceTextBox" runat="server" CssClass="add-home-text-field w-input ah-short-2" MaxLength="256" placeholder="$$$" Required="True" Text="" Type="number"/>

                <label class="add-home-label">Main Image</label>
                <asp:FileUpload ID="HomeImageUpload" runat="server" accept="image/*"/>
                <asp:TextBox ID="ImageCaptionTextBox" runat="server" CssClass="add-home-text-field w-input" MaxLength="256" placeholder="Image Caption" Text=""/>

                <label class="add-home-label" for="Total-Square-Footage">Total Square Footage</label>
                <asp:TextBox ID="TotalSquareFootageTextBox" runat="server" CssClass="add-home-text-field ah-short-2 w-input" data-name="Total Square Footage" MaxLength="256" Name="Total-Square-Footage" Placeholder="" Required="True" Type="number"></asp:TextBox>

                <label class="add-home-label" for="Kitchen-Dimensions">Kitchen Dimensions</label>
                <asp:TextBox ID="KitchenDimensionsTextBox" runat="server" CssClass="add-home-text-field w-input" MaxLength="256" Required="True" Text=""/>

                <label class="add-home-label" for="Living-Room-Dimensions">Living Room Dimensions</label>
                <asp:TextBox ID="LivingRoomDimensionsTextBox" runat="server" CssClass="add-home-text-field w-input" MaxLength="256" Required="True" Text=""/>

                <label class="add-home-label" for="Main-Bed-Dimensions">Main Bed Dimensions</label>
                <asp:TextBox ID="MainBedDimensionsTextBox" runat="server" CssClass="add-home-text-field w-input" MaxLength="256" Required="True" Text=""/>

                <label class="add-home-label" for="Year-Built">Year Built</label>
                <asp:TextBox ID="YearBuiltTextBox" runat="server" CssClass="add-home-text-field ah-short-2 w-input" MaxLength="4" Required="True" Text="" Type="number"/>

                <label class="add-home-label" for="Garage">Garage</label>
                <asp:TextBox ID="GarageTextBox" runat="server" CssClass="add-home-text-field w-input" MaxLength="50" Required="True" Text=""/>

                <label class="add-home-label" for="Date-Listed">Date Listed</label>
                <asp:TextBox ID="DateListedTextBox" runat="server" CssClass="add-home-text-field ah-short-2 w-input" MaxLength="10" Required="True" Text="" placeholder="MM/DD/YYYY"/>

                <asp:Button ID="AddHomeButton" runat="server" CssClass="add-home-button w-button" Text="Add Home" OnClick="AddHomeButton_Click" />
                <button id="ajax-add-home-button" class="add-home-button w-button" style="display: none;">Add Home</button>
                

               
           </div>
      </div>
     </div>
    </div>



    <div class="login-section wf-section add-home-success-section" id="add-home-success-section">
        <div class="login-container container w-container">
          <h3 class="create-account-heading add-home-success-heading">Success</h3>
          <div class="log-in-wrapper">
            <div class="w-form">
                <p>Congratulations! You've successfully listed a house.</p>
                <div class="add-home-success-button-wrapper">
                    <a href="HomePage.aspx" class="add-home-success-button w-button">Back To Dashboard</a>
                    <button class="add-home-success-button w-button" id="another-home-add">Add Another Home</button>
                </div>
            </div>
          </div>
        </div>
      </div>






    <script>
        
        var anotherHomeAddButton = document.getElementById("another-home-add");
        anotherHomeAddButton.addEventListener("click", function () {
            document.getElementById("add-home-section").style.display = "block";
            document.getElementById("add-home-success-section").style.display = "none";
        });


        var hideAddHomeForm = function () {
            document.getElementById("add-home-section").style.display = "none";
            document.getElementById("add-home-success-section").style.display = "block";
        }

        var showAddHomeForm = function () {
            document.getElementById("add-home-section").style.display = "block";
            document.getElementById("add-home-success-section").style.display = "none";
        }

        var clearAddHomeForm = function () {
            //radio buttons
            document.getElementById("<%=HomeOwnerRadioButton.ClientID%>").checked = false;
            document.getElementById("<%=RealEstateAgentRadioButton.ClientID%>").checked = false;

            //text fields
            var textInputs = document.querySelectorAll("input[type='text']");
            for (var i = 0; i < textInputs.length; i++) {
                textInputs[i].value = "";
            }

            //number field
            var numberInputs = document.querySelectorAll("input[type='number']");
            for (var i = 0; i < numberInputs.length; i++) {
                numberInputs[i].value = "";
            }

            //drop down lists
            document.getElementById("<%=StateDropDownList.ClientID%>").selectedIndex = 0;
            document.getElementById("<%=PropertyTypeDropDownList.ClientID%>").selectedIndex = 0;

            //checkboxes    
            var checkBoxInputs = document.querySelectorAll("input[type='checkbox']");
            for (var i = 0; i < checkBoxInputs.length; i++) {
                checkBoxInputs[i].checked = false;
            }

            //image upload
            document.getElementById("<%=HomeImageUpload.ClientID%>").value = "";

            //text area
            document.getElementById("<%=HomeDescriptionTextBox.ClientID%>").value = "";
        }

        var addSample = function () {
            //radio buttons
            document.getElementById("<%=HomeOwnerRadioButton.ClientID%>").checked = true;

            //text fields
            var textInputs = document.querySelectorAll("input[type='text']");
            for (var i = 0; i < textInputs.length; i++) {
                textInputs[i].value = "sampletext";
            }

            //date listed
            document.getElementById("<%=DateListedTextBox.ClientID%>").value = "11/11/1111";

            //number field
            var numberInputs = document.querySelectorAll("input[type='number']");
            for (var i = 0; i < numberInputs.length; i++) {
                numberInputs[i].value = "1234";
            }

            //drop down lists
            document.getElementById("<%=StateDropDownList.ClientID%>").selectedIndex = 4;
            document.getElementById("<%=PropertyTypeDropDownList.ClientID%>").selectedIndex = 0;

            //checkboxes    
            document.getElementById("<%=FireplaceCheckBox.ClientID%>").checked = true;

            //text area
            document.getElementById("<%=HomeDescriptionTextBox.ClientID%>").value = "sample text";
        }

        window.onload = function () {
            showAddHomeForm();
        }

        

    </script>

</asp:Content>
