<%@ Page Title="" Language="C#" MasterPageFile="~/TempleAthletics.Master" AutoEventWireup="true" CodeBehind="AdminEditProfile.aspx.cs" Inherits="TempleAthletics.AdminEditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div class="edit-profile wf-section">
    <div class="edit-profile-container container w-container">
      <h1 class="edit-profile-heading">Admin Edit Profile</h1>
      <div class="w-form">
        <form id="wf-form-Edit-Profile-Form" name="wf-form-Edit-Profile-Form" data-name="Edit Profile Form" method="get">
          <div class="w-layout-grid edit-profile-grid">
            <div id="w-node-dede1a6a-4766-ebc9-1161-2c4ba89e7ee4-c51123a0" class="edit-profile-grid-div"><label for="Email" class="ep-field-label">Email</label><input type="email" class="ep-text-field w-input" maxlength="256" name="Email" data-name="Email" placeholder="" id="Email" required="">
              <h3 class="ep-social-heading">Socials</h3><label for="LinkedIn" class="ep-field-label">LinkedIn</label><input type="text" class="ep-text-field w-input" maxlength="256" name="LinkedIn" data-name="LinkedIn" placeholder="" id="LinkedIn" required=""><label for="Twitter-3" class="ep-field-label">Twitter</label><input type="text" class="ep-text-field w-input" maxlength="256" name="Twitter" data-name="Twitter" placeholder="" id="Twitter-3" required=""><label for="Facebook" class="ep-field-label">Facebook</label><input type="text" class="ep-text-field w-input" maxlength="256" name="Facebook" data-name="Facebook" placeholder="" id="Facebook" required=""><label for="Instagram" class="ep-field-label">Instagram</label><input type="text" class="ep-text-field w-input" maxlength="256" name="Instagram" data-name="Instagram" placeholder="" id="Instagram" required="">
            </div>
            <div id="w-node-bb72bb29-1910-07ba-2a1b-21c370acce79-c51123a0" class="edit-profile-grid-div"><label for="Email-2" class="ep-field-label">Update Profile Photo</label><img src="Images/upload.PNG" loading="lazy" sizes="(max-width: 479px) 94vw, (max-width: 887px) 96vw, 852px" srcset="Images/upload-p-500.png 500w, Images/upload-p-800.png 800w, Images/upload.PNG 852w" alt=""></div>
            <div id="w-node-_12f0b7ae-b276-dab7-0e03-deb32555434b-c51123a0" class="edit-profile-grid-div"><label for="Bio" class="ep-field-label">Edit Bio</label><textarea placeholder="" maxlength="5000" id="Bio" name="Bio" data-name="Bio" required="" class="ep-text-field ep-text-area w-input"></textarea></div>
          </div>
          <div class="ep-button-wrapper"><input type="submit" value="Submit" data-wait="Please wait..." class="ep-button w-button"></div>
        </form>
        <div class="w-form-done">
          <div>Thank you! Your submission has been received!</div>
        </div>
        <div class="w-form-fail">
          <div>Oops! Something went wrong while submitting the form.</div>
        </div>
      </div>
    </div>
  </div>
  <script src="https://d3e54v103j8qbb.cloudfront.net/js/jquery-3.5.1.min.dc5e7f18c8.js?site=642d86d793cc94185f11239f" type="text/javascript" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  <script src="js/webflow.js" type="text/javascript"></script>
  <!-- [if lte IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/placeholders/3.0.2/placeholders.min.js"></script><![endif] -->
    <style>
        .edit-profile {
            margin-top: 40px;
        }
    </style>
</asp:Content>
