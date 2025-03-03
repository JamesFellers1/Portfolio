<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="LoginControl.ascx.cs" Inherits="Term_Project.LoginControl" %>
<link href="Stylesheets/main.css" rel="stylesheet" type="text/css" />
<link href="Stylesheets/cis3342-term-project.webflow.css" rel="stylesheet" type="text/css" />


<div class="pad">
<table id="Table1" border="0" cellpadding="5" cellspacing="0" class="ctrlTable">

    <tr>

        <td rowspan="4" style="width: 123px; height: 140px;" valign="top">

        <td colspan="2">
    </tr>

    <tr>

        <td colspan="2">
            <asp:Label ID="lblUsername" runat="server" Text="Username"></asp:Label>
            <asp:TextBox ID="txtUsername" runat="server" ></asp:TextBox>

        </td>

    </tr>

    <tr>

        <td colspan="2">
            <asp:Label ID="lblPassword" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>

        </td>

    </tr>

    <tr>

        <td class="style1">
            <asp:Label ID="lblError" runat="server" Text=""></asp:Label>
            <asp:Button ID="btnLogin" runat="server" CssClass="log-in-button2" Text="Login" OnClick="btnLogin_Click" />

            </td>

    </tr>

</table>
    </div>