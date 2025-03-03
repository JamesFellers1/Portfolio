<%@ Page Title="" Language="C#" MasterPageFile="~/TempleAthletics.Master" AutoEventWireup="true" CodeBehind="AdminCreateEvent.aspx.cs" Inherits="TempleAthletics.AdminCreateEvent1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
    <div class="heading">
        <h2>Create an Event</h2>
    </div>
    <div class="view">
        <div class="mb-3"><label class="form-label" for="name">Name</label><input id="name" class="form-control" type="text" /></div>
        <div class="mb-3"><label class="form-label" for="phonenumber">Phone Number</label><input id="phonenumber" class="form-control" type="number" /></div>
        <div class="mb-3"><label class="form-label" for="address">Address</label><input id="Address" class="form-control" type="text" /></div>
        <div class="mb-3"><label class="form-label" for="eventdate">Event Date</label><input id="eventdate" class="form-control" type="date" /></div>
        <div class="mb-3"><label class="form-label" for="description">Description</label><textarea id="description" class="form-control"></textarea></div>
        <div class="mb-3"><label class="form-label" for="hours">Hours</label><input id="hours" class="form-control" type="text" /></div>
        <div class="mb-3">
            <div class="row">
                <div class="col-md-6"><label class="form-label" for="hire-date">Date</label><input id="hire-date" class="form-control" type="date" /></div>
                <div class="col-md-6 button"><button class="btn btn-danger d-block w-100" type="submit">Create</button></div>
            </div>
        </div>
    </div>
</div>
<style>
    .view{
        margin-top:50px;
    }
    .container{
        margin-top:120px;
    }
    .col-md-6 button{
        margin-top:30px;
        background-color: rgba(145, 39, 51, 1);
    }
</style>
</asp:Content>
