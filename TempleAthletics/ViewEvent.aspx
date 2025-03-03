<%@ Page Title="" Language="C#" MasterPageFile="~/TempleAthletics.Master" AutoEventWireup="true" CodeBehind="ViewEvent.aspx.cs" Inherits="TempleAthletics.ViewEvent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
    <div class="heading">
        <h2>Event Information</h2>
    </div>
    <div class="view">
        <div class="mb-3"><label class="form-label" for="name">Name:</label> Reading for the Kids</div>
        <div class="mb-3"><label class="form-label" for="phonenumber">Phone Number:</label> 202-555-0115</div>
        <div class="mb-3"><label class="form-label" for="address">Address:</label> 1350 Scenic Hwy S #100</div>
        <div class="mb-3"><label class="form-label" for="eventdate">Event Date:</label> 11/02/2022</div>
        <div class="mb-3"><label class="form-label" for="description">Description:</label> Reading for the Kids is a sponsored event that allows students from different colleges to read to different elementary childrens. </div>
        <div class="mb-3"><label class="form-label" for="hours">Hours:</label> 12:00AM - 3:00PM</div>
        <div class="mb-3">
            <div class="row">
                <div class="col-md-6 button"><a href="StudentHome.aspx"><button class="btn btn-danger d-block w-100" type="button">Back</button></a></div>
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
