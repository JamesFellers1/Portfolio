<%@ Page Title="" Language="C#" MasterPageFile="~/TempleAthletics.Master" AutoEventWireup="true" CodeBehind="StudentProfile.aspx.cs" Inherits="TempleAthletics.StudentProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <div class ="content">


<section style="margin-top: 100px">
  

    <div class="row">
      <div class="col-lg-4">
        <div class="card mb-4">
          <div class="card-body text-center">
            <img src="https://t4.ftcdn.net/jpg/02/24/86/95/360_F_224869519_aRaeLneqALfPNBzg0xxMZXghtvBXkfIA.jpg" alt="avatar"
              class="rounded-circle img-fluid" style="width: 150px;">
            <h5 class="my-3">John Smith</h5>
            <p class="text-muted mb-1">Temple Student Athlete</p>
            <p class="text-muted mb-4">Philadelphia, PA</p>
            <div class="d-flex justify-content-center mb-2">
              <button type="button" class="btn btn-primary" onclick="editFields()">Edit Profile</button>
              <button id="saveButton" style="display:none" type="button" class="btn btn-primary ms-1" onclick="saveFields()">Save Profile</button>
            </div>
          </div>
        </div>


        <div class="card mb-4 mb-lg-0">
          <div class="card-body p-0">
            <ul class="list-group list-group-flush rounded-3">
              <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                <i class="fab fa-twitter fa-lg" style="color: #55acee;"></i>
                <p id="twitterUsername" class="mb-0">Add your Twitter +</p>
              </li>
              <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                <i class="fab fa-instagram fa-lg" style="color: #ac2bac;"></i>
                <p id="instagramUsername" class="mb-0">Add your Instagram +</p>
              </li>
              <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                <i class="fab fa-facebook-f fa-lg" style="color: #3b5998;"></i>
                <p id="facebookUsername" class="mb-0">Add your Facebook +</p>
              </li>
            </ul>
          </div>
        </div>
      </div>


      <div class="col-lg-8">
        <div class="card mb-4">
          <div class="card-body">
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Full Name</p>
              </div>
              <div class="col-sm-9">
                <p id="name" class="text-muted mb-0">Johnatan Smith</p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Email</p>
              </div>
              <div class="col-sm-9">
                <p id="email" class="text-muted mb-0">tuo12345@temple.edu</p>
              </div>
            </div>
            <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Phone</p>
              </div>
              <div class="col-sm-9">
                <p id="phone" class="text-muted mb-0">(097) 234-5678</p>
              </div>
            </div>
              <hr>
            <div class="row">
              <div class="col-sm-3">
                <p class="mb-0">Address</p>
              </div>
              <div class="col-sm-9">
                <p id="address" class="text-muted mb-0">Philadelphia, PA</p>
              </div>
            </div>
          </div>
        </div>


        <div class="row">
          <div class="col-md-6">
            <div class="card mb-4 mb-md-0">
              <div class="card-body">
                <p class="mb-4"><span class="text-primary font-italic me-1">Individual Goal</span>
                </p>
                
                <p class="mt-4 mb-1" style="font-size: .77rem;">Goal Progress</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 72%" aria-valuenow="72"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
                
                
                
              </div>
            </div>
          </div>


          <div class="col-md-6">
            <div class="card mb-4 mb-md-0">
              <div class="card-body">
                <p class="mb-4"><span class="text-primary font-italic me-1">Team Goal</span>
                </p>

                <p class="mb-1" style="font-size: .77rem;">Team Progress</p>
                <div class="progress rounded" style="height: 5px;">
                  <div class="progress-bar" role="progressbar" style="width: 80%" aria-valuenow="80"
                    aria-valuemin="0" aria-valuemax="100"></div>
                </div>
               
                </div>
              
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
            


<%--End of content div--%>   
</div>

<script>
    function editFields() {
        // enable the save button
        document.getElementById("saveButton").style.display = "block";

        // get the elements by their Ids
        var name = document.getElementById("name");
        var email = document.getElementById("email");
        var phone = document.getElementById("phone");
        var address = document.getElementById("address");
        var githubusername = document.getElementById("githubUsername");
        var twitterusername = document.getElementById("twitterUsername");
        var instagramusername = document.getElementById("instagramUsername");
        var facebookusername = document.getElementById("facebookUsername");


        // make the elements editable
        name.contentEditable = "true";
        email.contentEditable = "true";
        phone.contentEditable = "true";
        address.contentEditable = "true";
        githubusername.contentEditable = "true";
        twitterusername.contentEditable = "true";
        instagramusername.contentEditable = "true";
        facebookusername.contentEditable = "true";

        // adding a border to show the editable field
        name.style.border = "1px solid #000";
        email.style.border = "1px solid #000";
        phone.style.border = "1px solid #000";
        address.style.border = "1px solid #000";
        githubusername.style.border = "1px solid #000";
        twitterusername.style.border = "1px solid #000";
        instagramusername.style.border = "1px solid #000";
        facebookusername.style.border = "1px solid #000";
    }
    function saveFields() {
        // hiding the save button
        document.getElementById("saveButton").style.display = "none";

        // get the elements by their Ids
        var name = document.getElementById("name");
        var email = document.getElementById("email");
        var phone = document.getElementById("phone");
        var address = document.getElementById("address");
        var githubusername = document.getElementById("githubUsername");
        var twitterusername = document.getElementById("twitterUsername");
        var instagramusername = document.getElementById("instagramUsername");
        var facebookusername = document.getElementById("facebookUsername");

        // make the elements non-editable
        name.contentEditable = "false";
        email.contentEditable = "false";
        phone.contentEditable = "false";
        address.contentEditable = "false";
        githubusername.contentEditable = "false";
        twitterusername.contentEditable = "false";
        instagramusername.contentEditable = "false";
        facebookusername.contentEditable = "false";

        // removing the border to from the editable field
        name.style.border = "none";
        email.style.border = "none";
        phone.style.border = "none";
        address.style.border = "none";
        githubusername.style.border = "none";
        twitterusername.style.border = "none";
        instagramusername.style.border = "none";
        facebookusername.style.border = "none";
    }
</script>
</asp:Content>

