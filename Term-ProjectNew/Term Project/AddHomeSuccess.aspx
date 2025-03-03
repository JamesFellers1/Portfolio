<%@ Page Title="" Language="C#" MasterPageFile="~/REMaster.Master" AutoEventWireup="true" CodeBehind="AddHomeSuccess.aspx.cs" Inherits="Term_Project.AddHomeSuccess" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-section wf-section add-home-success-section" id="add-home-success-section">
        <div class="login-container container w-container">
          <h3 class="create-account-heading add-home-success-heading">Success</h3>
          <div class="log-in-wrapper">
            <div class="w-form">
                <p>Congratulations! You've successfully listed a house.</p>
                <div class="add-home-success-button-wrapper">
                    <a href="HomePage.aspx" class="add-home-success-button w-button">Back To Dashboard</a>
                    <a href="AddHome.aspx" class="add-home-success-button w-button" id="another-home-add">Add Another Home</a>
                </div>
            </div>
          </div>
        </div>
      </div>
</asp:Content>
