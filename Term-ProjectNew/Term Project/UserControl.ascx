<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserControl.ascx.cs" Inherits="Term_Project.UserControl" %>
<link href="Stylesheets/main.css" rel="stylesheet" type="text/css" />
<link href="Stylesheets/cis3342-term-project.webflow.css" rel="stylesheet" type="text/css" />


<div class="pad">
<table id="Table1" border="0" cellpadding="5" cellspacing="0" class="ctrlTable">

    <tr>

        <td rowspan="4" style="width: 123px; height: 140px;" valign="top">

            <asp:Image ID="imgHome" runat="server" /></td>

        <td colspan="2">

            <asp:Label ID="lblTitle" runat="server"

                style="font-weight: 700; font-size: medium"></asp:Label></td>

    </tr>

    <tr>

        <td colspan="2">

            <asp:Label ID="lblAddress" runat="server"></asp:Label>
            <asp:Label ID="lblCity" runat="server"></asp:Label>
            <asp:Label ID="lblState" runat="server"></asp:Label>
            <asp:Label ID="lblZip" runat="server"></asp:Label>

        </td>

    </tr>

    <tr>

        <td colspan="2">

            <asp:Label ID="lblPrice" runat="server"></asp:Label></td>

    </tr>

    <tr>

        <td class="style1">

            <asp:Button ID="btnViewProfile" runat="server" CssClass="log-in-button2" Text="View Profile" />

            </td>

    </tr>

</table>
    </div>