<%@ Page Title="" Language="C#" MasterPageFile="~/REMaster.Master" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Term_Project.LoginPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <div class="navBar">
        <div class="topnav">
            <a href="CreateAccountPage.aspx">Create Account</a>
        </div>
        <asp:Label ID="lblHomeBuy" class="centered" runat="server" Font-Bold="True" Font-Names="Rockwell Condensed" Font-Size="XX-Large" style="text-align: center; color: #ffffff; top: 15px; width: 347px;" Text="Home Buy" CssClass="centered" ForeColor="White"></asp:Label>

    </div>
    <div class="login-section wf-section">
    <div class="login-container container w-container">
      <h1 class="create-account-heading">Log In</h1>
      <div class="log-in-wrapper">
        <div class="w-form">
            <asp:Panel ID="Panel1" runat="server"></asp:Panel>
            <%--  <label for="Username-3">Username</label>--%>
              <%--<asp:TextBox runat="server" type="text" class="w-input" maxlength="256" name="Username-3" data-name="Username 3" placeholder="" ID="txtUsername"></asp:TextBox>
              <label for="Password-3">Password</label>
              <asp:TextBox runat="server" type="password" CssClass="w-input" maxlength="256" name="Password" data-name="Password" placeholder="" ID="txtPassword"></asp:TextBox>
            <div class="login-button-wrapper">
                <asp:Button ID="btnLogin" runat="server" type="submit" value="Submit" data-wait="Please wait..." text="Log in" CssClass="log-in-button2 w-button" OnClick="btnLogin_Click"/>--%>
              <a href="#" class="login-forgot-password">Forgot Username or Password?</a>
                <asp:Button ID="btnDeleteCookie" runat="server" Text="Delete Cookie" CssClass="log-in-button2" OnClick="btnDeleteCookie_Click"/>

                <asp:Label ID="lblError" runat="server" CssClass="w-file-upload-error-msg" />
            </div>
          <div class="w-form-done">
            <div>Thank you! Your submission has been received!</div>
          </div>
          <div class="w-form-fail">
            <div>Oops! Something went wrong while submitting the form.</div>
          </div>
        </div>
      </div>
    </div>
</asp:Content>

