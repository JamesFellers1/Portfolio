<%@ Page Title="" Language="C#" MasterPageFile="~/REMaster.Master" AutoEventWireup="true" CodeBehind="ViewOffers.aspx.cs" Inherits="Term_Project.ViewOffers" %>
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
    <div class="vhs wf-section">
    <div class="vhs-container container w-container">
      <h1 class="vhs-heading">View Your Home Showings</h1>
      <h3 class="vhs-no-showings" id="NoShowingsHeading" runat="server">You currently have no home showings</h3>
        <asp:DataList runat="server">
            <ItemTemplate>
                <div class="vhs-block">
                    <h3 class="vhs-block-heading">Home Address</h3>
                    <p><%# Eval("Address") %></p>
                    <p>Offer: $<%# Eval("Offer") %></p>
                </div>
            </ItemTemplate>
        </asp:DataList>
      
    </div>
  </div>
</asp:Content>
