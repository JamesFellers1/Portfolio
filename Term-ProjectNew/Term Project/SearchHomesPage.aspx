<%@ Page Title="" Language="C#" MasterPageFile="~/REMaster.Master" AutoEventWireup="true" CodeBehind="SearchHomesPage.aspx.cs" Inherits="Term_Project.SearchHomesPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <div class="topnav">
        <a href="HomePage.aspx" id="HomeNav" runat="server">Home</a>
        <a href="SearchHomesPage.aspx" id="SearchNav" runat="server">Search</a>
        <a href="AddHome.aspx" id="AddHomeNav" runat="server">List a Home</a>
        <a href="MakeOffer.aspx" id="MakeOfferNav" runat="server">Make Offer</a>
        <a href="ManageHomeProfile.aspx" id="ManageHomeProfileNav" runat="server">Manage Profile</a>
        <a href="ViewHomeProfile.aspx" id="ViewHomeNav" runat="server">View Home</a>
    </div>
        <div class="register-section wf-section">
            <div class="register-container container w-container">
                <h1 class="create-account-heading">Search Homes</h1>
                <asp:Label ID="lblType" runat="server" Text=""></asp:Label>
                <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
                <div>Search Criteria:
                    <div>
                                    <asp:Label ID="lblLocation" runat="server" Text="Enter a State"></asp:Label><asp:TextBox ID="txtLocation" runat="server"></asp:TextBox></div>
                    <div>
                        <asp:Label ID="lblPrice" runat="server" Text="Enter your budget/price to stay under: "></asp:Label><asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblPropertyType" runat="server" Text="Property Type: "></asp:Label>
                        <asp:DropDownList ID="ddlPropertyType" runat="server" Width="200px"></asp:DropDownList>
                    </div>
                    <div>
                        <asp:Label ID="lblBathrooms" runat="server" Text="Enter desired amount of bathrooms: "></asp:Label><asp:TextBox ID="txtBathrooms" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblBedrooms" runat="server" Text="Enter desired amount of bedrooms: "></asp:Label><asp:TextBox ID="txtBedrooms" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblAmenities" runat="server" Text="Amenities:"></asp:Label>
                        <asp:CheckBoxList ID="chkListAmenities" runat="server" RepeatDirection="Horizontal" Width="50%" >
                            <asp:ListItem>Fireplace</asp:ListItem>
                            <asp:ListItem>Basement</asp:ListItem>
                            <asp:ListItem>Pool</asp:ListItem>
                            <asp:ListItem>Hot Tub</asp:ListItem>
                            <asp:ListItem>Garden</asp:ListItem>
                            <asp:ListItem>Bar</asp:ListItem>
                        </asp:CheckBoxList>
                    </div>
                </div>
                <div class="register-container container w-container" style="text-align: center">
                    <asp:Button class="log-in-button2" ID="Button1" runat="server" Text="Search by State & Price" />
                    <asp:Button class="log-in-button2" ID="Button2" runat="server" Text="Search by State, Property Type, & Price" />
                    <asp:Button class="log-in-button2" ID="Button3" runat="server" Text="Search by State, Price, Size, & Rooms" />
                    <asp:Button class="log-in-button2" ID="Button4" runat="server" Text="Search by State, Price, Size, Rooms, & Amenities" />
                </div>
                <asp:Panel ID="Panel1" runat="server"></asp:Panel>
                <asp:DataList ID="dlHome" runat="server"></asp:DataList>
            </div>

        </div>
</asp:Content>

