<%@ Page Title="" Language="C#" MasterPageFile="~/TempleAthletics.Master" AutoEventWireup="true" CodeBehind="CommunityPage.aspx.cs" Inherits="TempleAthletics.CommunityPage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
<div id="content" style="margin-top: 100px; width: 80%; text-align: center; margin-left: auto; margin-right: auto;" >

    <form>
       
  <!-- Name input -->
  <div class="form-outline mb-4">
    <input type="text" id="form4Example1" class="form-control" />
    <label class="form-label" for="form4Example1">Name</label>
  </div>
       

  <!-- Email input -->
  <div class="form-outline mb-4">
    <input type="email" id="form4Example2" class="form-control" />
    <label class="form-label" for="form4Example2">Email Address</label>
  </div>

  <!-- Company input -->
  <div class="form-outline mb-4">
    <input type="text" id="form4Example3" class="form-control" />
    <label class="form-label" for="form4Example3">Company</label>
  </div>

  <!-- Message input -->
  <div class="form-outline mb-4">
    <textarea class="form-control" id="form4Example4" rows="4"></textarea>
    <label class="form-label" for="form4Example4">Message</label>
  </div>

  <!-- Checkbox -->
  <div class="form-check d-flex justify-content-center mb-4">
    <input class="form-check-input me-2" type="checkbox" value="" id="form4Example5" checked />
    <label class="form-check-label" for="form4Example5">
      Send me a copy of this message
    </label>
  </div>

  <!-- Submit button -->
        <div class="form-check d-flex justify-content-center mb-4">
  <button type="submit" class="btn btn-primary btn-block mb-4" >Send</button>
        </div>
            

</form>

</div>

</asp:Content>
