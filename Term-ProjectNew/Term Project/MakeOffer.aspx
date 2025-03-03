<%@ Page Title="" Language="C#" MasterPageFile="~/REMaster.Master" AutoEventWireup="true" CodeBehind="MakeOffer.aspx.cs" Inherits="Term_Project.MakeOffer" %>
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
    <div class="wf-section">
    <div class="mo-container container w-container">
      <h1 class="mo-heading">Make Offer</h1>
      <div class="mo-block">
        <div class="w-form">
          <div id="email-form" name="email-form" data-name="Email Form" method="get"><label for="Price">Offer Price</label><input type="number" class="mo-input-short w-input" maxlength="256" name="Price" data-name="Price" placeholder="" id="Price" required=""><input type="submit" value="Submit" data-wait="Please wait..." class="mo-offer-submit w-button"></div>
          <div class="w-form-done">
            <div>Thank you! Your submission has been received!</div>
          </div>
          <div class="w-form-fail">
            <div>Oops! Something went wrong while submitting the form.</div>
          </div>
        </div>
        <h3>House Details</h3>
        <p class="mo-data-head">House ID</p>
        <p class="mo-data-body">Body</p>
        <p class="mo-data-head">House Address</p>
        <p class="mo-data-body">Body</p>
        <a href="#" class="mo-view-house-data w-button">View Home Data</a>
      </div>
    </div>
  </div>
</asp:Content>
