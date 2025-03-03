<%@ Page Title="" Language="C#" MasterPageFile="~/REMaster.Master" AutoEventWireup="true" CodeBehind="CreateAccountPage.aspx.cs" Inherits="Term_Project.CreateAccountPage" EnableEventValidation="False" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
                <div class="navBar">
                    <div class="topnav">
                        <a href="LoginPage.aspx">Login</a>

                    </div>
                <asp:Label ID="lblHomeBuy" class="centered" runat="server" Font-Bold="True" Font-Names="Rockwell Condensed" Font-Size="XX-Large" style="text-align: center; color: #ffffff; top: 15px; width: 347px;" Text="Home Buy" CssClass="centered" ForeColor="White"></asp:Label>
                </div>
                    <div class="register-section wf-section">
    <div class="register-container container w-container">
      <h1 class="create-account-heading">Create An Account</h1>
      <div class="register-wrapper">
        <div class="w-form">
          <div id="email-form" name="email-form" data-name="Email Form" method="get">
              <label for="name">Name</label>
              <asp:TextBox runat="server" type="text" class="w-input" maxlength="256" name="txtName" data-name="txtName" placeholder="" ID="txtName"></asp:TextBox>
              <label for="email">Email Address</label>
              <asp:TextBox runat="server" type="email" class="w-input" maxlength="256" name="email" data-name="Email" placeholder="" id="txtEmail" required=""></asp:TextBox>
              <label for="Home-Address">Home Address</label>
              <asp:TextBox runat="server" type="text" class="w-input" maxlength="256" name="Home-Address" data-name="Home Address" placeholder="" id="txtAddress" required=""></asp:TextBox>
              <label for="Phone">Phone Number</label>
              <asp:TextBox runat="server" type="tel" class="w-input" maxlength="256" name="Phone" data-name="Phone" placeholder="" id="txtPhone" required=""></asp:TextBox>
              <label for="Username">Username</label>
              <asp:TextBox runat="server" type="text" class="w-input" maxlength="256" name="Username" data-name="Username" placeholder="" id="txtUsername" required=""></asp:TextBox>
              <label for="Password">Password</label>
              <asp:TextBox runat="server" type="password" class="w-input" maxlength="256" name="Password" data-name="Password" placeholder="" id="txtPassword" required=""></asp:TextBox>
            <div class="user-type">
                <label class="w-radio">User Type: </label>
                    <asp:RadioButtonList ID="radType" runat="server">
                        <asp:ListItem>Home Seller</asp:ListItem>
                        <asp:ListItem>Home Buyer</asp:ListItem>
                        <asp:ListItem>Real Estate Agent</asp:ListItem>
                </asp:RadioButtonList>
            </div>
              <label for="Security-Question">Security Question 1</label>

              <asp:DropDownList ID="ddlSQ1" runat="server" CssClass="w-select">
                  <asp:ListItem Value="1">What is your mother&#39;s maiden name?</asp:ListItem>
                  <asp:ListItem Value="2">What is your first pet&#39;s name?</asp:ListItem>
              </asp:DropDownList>
              <asp:TextBox runat="server" type="text" class="w-input" maxlength="256" name="SQ1" data-name="SQ1" placeholder="" id="txtSQ1" required=""></asp:TextBox>
              
              
              <label for="Security-Question-4">Security Question 2</label>
              
              <asp:DropDownList ID="ddlSQ2" runat="server" CssClass="w-select">
                  <asp:ListItem Value="1">What city were you born in?</asp:ListItem>
                  <asp:ListItem Value="2">In what city or town did your parents meet?</asp:ListItem>
              </asp:DropDownList>

              <asp:TextBox runat="server" type="text" class="w-input" maxlength="256" name="SQ2" data-name="SQ2" placeholder="" id="txtSQ2" required=""></asp:TextBox>
              
              
              <label for="Security-Question-4">Security Question 3</label>

              <asp:DropDownList ID="ddlSQ3" runat="server" CssClass="w-select">
                  <asp:ListItem Value="1">What high school did you attend?</asp:ListItem>
                  <asp:ListItem Value="2">What is your date of birth (MM/DD/YYYY)</asp:ListItem>
              </asp:DropDownList>
              <asp:TextBox runat="server" type="text" class="w-input" maxlength="256" name="SQ3" data-name="SQ3" placeholder="" id="txtSQ3" required=""></asp:TextBox>

              <asp:Button ID="btnSubmit" runat="server" Text="Submit"  CssClass="log-in-button2 w-button" OnClick="btnSubmit_Click"/>
          </div>
        </div>
      </div>
    </div>
  </div>

</asp:Content>

