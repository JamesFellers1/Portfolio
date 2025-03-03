<%@ Page Title="" Language="C#" MasterPageFile="~/REMaster.Master" AutoEventWireup="true" CodeBehind="ScheduleHomeShowing.aspx.cs" Inherits="Term_Project.ScheduleHomeShowing" %>
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
    <div class="shs-section wf-section">
        <div class="shs-container container w-container">
            <h1 class="shs-heading">Schedule a Home Showing</h1>
            <div class="schedule-home-detail-wrapper">
            <div class="shs-div-block">
                <h3 class="shs-home-heading">Home Details</h3>
                <div class="shs-profile-text shs-detail-header">Name</div>
                <div class="shs-profile-text">Name</div>
                <div class="shs-image-holder">
                    <asp:Image ImageUrl="https://images.pexels.com/photos/1115804/pexels-photo-1115804.jpeg" runat="server" ID="HomeImageBox"/>

                </div>
            </div>
            <div class="shs-div-block">
                <h3 class="shs-rea-heading">Real Estate Agent</h3>
                <div class="shs-rea-text">Name</div>
                <div class="shs-rea-text">Email: </div>
                <div class="shs-rea-text">Phone Number: </div>
                <h3 class="shs-time-select-heading">Select A Time</h3>
                <div class="w-form">
                    <div class="form" data-name="SHS Time" id="wf-form-SHS-Time" method="get" name="wf-form-SHS-Time">
                     <label class="shs-label" for="Date">Select Date</label>
                     <asp:TextBox runat="server" CssClass="w-input" MaxLength="10" placeholder="MM/DD/YYYY" Type="text" ID="ScheduleDateTextBox"/>
                     <label class="shs-label shs-label-2" for="Date-2">Select Time Range That Works For You</label>
                     <label class="shs-radio w-radio">
                      <asp:RadioButton runat="server" ID="NineAMRadioButton" CssClass="w-form-formradioinput w-radio-input" GroupName="shs-time" Value="9AM" required="required"/>
                      <span class="w-form-label" for="radio">9am - 10am</span>
                     </label>
                     <label class="shs-radio w-radio">
                      <asp:RadioButton runat="server" ID="TenAMRadioButton" CssClass="w-form-formradioinput w-radio-input" GroupName="shs-time" Value="10AM" required="required"/>
                      <span class="w-form-label" for="radio-5">10am - 11am</span>
                     </label>
                     <label class="shs-radio w-radio">
                      <asp:RadioButton runat="server" ID="ElevenAMRadioButton" CssClass="w-form-formradioinput w-radio-input" GroupName="shs-time" Value="11AM" required="required"/>
                      <span class="w-form-label" for="radio-4">11am - 12pm</span>
                     </label>
                     <label class="shs-radio w-radio">
                      <asp:RadioButton runat="server" ID="TwoPMRadioButton" CssClass="w-form-formradioinput w-radio-input" GroupName="shs-time" Value="2PM" required="required"/>
                      <span class="w-form-label" for="radio-3">2pm - 3pm</span>
                     </label>
                     <label class="shs-radio w-radio">
                      <asp:RadioButton runat="server" ID="ThreePMRadioButton" CssClass="w-form-formradioinput w-radio-input" GroupName="shs-time" Value="3PM" required="required"/>
                      <span class="w-form-label" for="radio-2">3pm - 4pm</span>
                     </label>
                     <label class="shs-radio w-radio">
                      <asp:RadioButton runat="server" ID="FourPMRadioButton" CssClass="w-form-formradioinput w-radio-input" GroupName="shs-time" Value="4PM" required="required"/>
                      <span class="w-form-label" for="radio-6">4pm - 5pm</span>
                     </label>
                     <asp:Label Text="text" runat="server" CssClass="add-home-error-label" ID="ErrorLabel" style="display: none;"/>
                     <asp:Button Text="Schedule" runat="server" CssClass="shs-schedule-button w-button" Type="submit" ID="ScheduleButton" OnClick="ScheduleButton_Click"/>
                    </div>
                </div>
            </div>
            </div>
        </div>
    </div>
    <script>
        
    </script>
</asp:Content>
