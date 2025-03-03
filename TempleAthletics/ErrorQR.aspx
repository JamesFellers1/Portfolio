<%@ Page Title="" Language="C#" MasterPageFile="~/TempleAthletics.Master" AutoEventWireup="true" CodeBehind="ErrorQR.aspx.cs" Inherits="TempleAthletics.ErrorQR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="qr-code-profile wf-section">
  <div class="qrpage-container container w-container">
    <div class="qr-block">
      <div class="qr-error-block">
        <div class="qr-error-text">Sorry, you're not registered for this event, please check your upcoming events.</div>

      </div>
      <a href="#" class="qr-button w-button" style="margin-top: 70px; display: none;">Scan QR Code</a>
    </div>
  </div>
</div>
<script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=642d86d793cc94185f11239f" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
<script src="js/webflow.js" type="text/javascript"></script>
<!-- [if lte IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/placeholders/3.0.2/placeholders.min.js"></script><![endif] -->

</body>
<style>
    .qr-code-profile {
        margin-top: 45px;
    }
</style>
</asp:Content>
