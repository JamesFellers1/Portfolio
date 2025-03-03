<%@ Page Title="" Language="C#" MasterPageFile="~/REMaster.Master" AutoEventWireup="true" CodeBehind="ManageHomeProfile.aspx.cs" Inherits="Term_Project.ManageHomeProfile" %>
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
    <div class="add-home-container container w-container">
        <h1 class="add-home-main-heading">Manage Home Profile</h1>
        <div class="add-home-form w-form">
               <div class="add-home-form-block">

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
                    <asp:TextBox ID="AmenitiesTextBox" runat="server" CssClass="add-home-text-field w-input" MaxLength="256" Text=""/>

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

                    <label class="add-home-label">Update Image</label>
                    <asp:FileUpload ID="HomeImageUpload" runat="server" accept="image/*"/>
                    <asp:TextBox ID="ImageCaptionTextBox" runat="server" CssClass="add-home-text-field w-input" MaxLength="256" placeholder="Image Caption" Text=""/>
                    <p class="current-image-show current-image-title">Current Image</p>
                    <asp:Image ImageUrl="https://images.pexels.com/photos/1115804/pexels-photo-1115804.jpeg" runat="server" CssClass="current-image-show" alt="Current House Image"/>

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

                    <asp:Button ID="AddHomeButton" runat="server" CssClass="add-home-button w-button" Text="Add Home" style="display: none;"/>
                    <button id="ajax-add-home-button" class="add-home-button w-button save-home-button">Save</button>
                    <asp:Label Text="Fixed Label" ID="ErrorLabel" runat="server" CssClass="add-home-error-label"/>

               
               </div>
          </div>
        </div>
    <style>
        .save-home-button {
            margin-bottom: 10px;
        }

        #current-house-image {
            width: 85%;
            display: block;
            margin-right: auto;
            margin-left: auto;
        }

        .current-image-title {
            text-align: center;
            font-weight: bold;
            margin-top: 40px;
            margin-bottom: 5px;
        }
    </style>
</asp:Content>
