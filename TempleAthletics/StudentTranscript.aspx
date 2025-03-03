<%@ Page Title="" Language="C#" MasterPageFile="~/TempleAthletics.Master" AutoEventWireup="true" CodeBehind="StudentTranscript.aspx.cs" Inherits="TempleAthletics.StudentTranscript" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="rect">
    <h1 class="title">
        Transcript
    </h1>
    <h1 class="name1">
        John Smith
    </h1>
</div>
<div class="table-responsive table">
    <table class="table2">
        <thead class="table2">
            <tr>
                <th>Semester</th>
                <th>Team:</th>
                <th>Event Name:</th>
                <th>Hours:</th>
                <th>Date/Time:</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Spring 2022</td>
                <td>Temple Owl Basketball</td>
                <td>Reading with Kids</td>
                <td>5</td>
                <td>March 20, 2022<br />11:30 AM</td>
            </tr>
            <tr>
                <td>Spring 2022</td>
                <td>Temple Owl Basketball</td>
                <td>Shopping with Walmart</td>
                <td>5</td>
                <td>March 21, 2022<br />9:00 AM</td>
            </tr>
            <tr>
                <td>Spring 2022</td>
                <td>Temple Owl Basketball</td>
                <td>Looking for Trash</td>
                <td>3</td>
                <td>March 30, 2022<br />11:00 AM</td>
            </tr>
        </tbody>
    </table>
</div>
<div class="buttun">
    <button class="btn btn-primary">Export</button>
</div>

<style>
.rect{
    height:280px;
    top:0;
    background-color: #912733;
}
.title{
    left:15%;
    letter-spacing:0;
    line-height:normal;
    position:absolute;
    top:60px;
    width:556px;
    color:white;
}
.name1{
    left:46%;
    letter-spacing:0;
    position:absolute;
    top:180px;
    color:white;
}
.table{
    border:1px solid black;
    margin-top:30px;
}
.table2{
    width:100%;  
    text-align:center;
}
.buttun{
    text-align:center;
}
</style>
</asp:Content>
