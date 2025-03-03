<%@ Page Title="" Language="C#" MasterPageFile="~/REMaster.Master" AutoEventWireup="true" CodeBehind="HomeShowingFeedback.aspx.cs" Inherits="Term_Project.HomeShowingFeedback" %>
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
    <div class="ssf-container container w-container">
      <h1 class="ssf-heading">Submit Showing Feedback</h1>
      <div class="ssf-block">
        <h3 class="ssf-block-heading">Address</h3>
        <div>Address goes here</div>
        <h3 class="ssf-block-heading">Time</h3>
        <p>Date goes here</p>
        <p>Time slot goes here</p>
        <div class="w-form">
          <div id="wf-form-SSF-Form" name="wf-form-SSF-Form" data-name="SSF Form" method="get"><label for="SSF-Feedback">Submit Your Feedback here</label><textarea id="SSF-Feedback" name="SSF-Feedback" maxlength="5000" data-name="SSF Feedback" placeholder="" required="" class="ssf-text-area w-input"></textarea><input type="submit" value="Submit" data-wait="Please wait..." class="ssf-button w-button"></div>
        </div>
      </div>
    </div>
  </div>
</asp:Content>
