<%@ Page Title="" Language="C#" MasterPageFile="~/TempleAthletics.Master" AutoEventWireup="true" CodeBehind="StudentHome.aspx.cs" Inherits="TempleAthletics.StudentHome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="rect">
    <h1 class="title">
        Dashboard
    </h1>
    <h3 class="title2">
        Team Roster:
        <br>
        Temple Owl Football
    </h3>
    <h3 class="title3">
        Total Department Hours:
        <br>
        1,600
    </h3>
    <h3 class="title4">
        Total Student Hours:
        <br>
        6
    </h3>
    <h3 class="title5">
        Total Team Hours:
        <br>
        160
    </h3>
</div>

<div class="d-flex justify-content-left">
    <a href="QRscan.aspx">
    <button type="button" class="btn btn-primary ms-1">Scan QR Code</button>
    </a>
    <a href="StudentEvent.aspx">
    <button type="button" class="btn btn-warning ms-1">Events</button>
    </a>
</div>

<div class="t1">
    Registered Events
</div>
<div>
    <table class="table">
    <thead>
        <tr>
            <th>Semester</th>
            <th>Event Name</th>
            <th>Description</th>
            <th></th>
            <th>Student Athletes Registered</th>
            <th>Total Participants</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Spring 2022</td>
            <td>Read to Kids</td>
            <td>Reading to Kids at the Local Library</td>
            <td>
                <a href="ViewEvent.aspx">
                    <button class="btn btn-primary" type="button">Open</button>
                </a>
            </td>
            <td>2</td>
            <td>3/18</td>
        </tr>
        <tr>
            <td>Spring 2022</td>
            <td>Bike Day</td>
            <td>Charity Biking Event to Raise Awareness</td>
            <td>
                <a href="ViewEvent.aspx">
                    <button class="btn btn-primary" type="button">Open</button>
                </a>
            </td>
            <td>5</td>
            <td>10/24</td>
        </tr>
        <tr>
            <td>Spring 2022</td>
            <td>Halloween Contest</td>
            <td>Halloween Costume Contest</td>
            <td>
                <a href="ViewEvent.aspx">
                    <button class="btn btn-primary" type="button">Open</button>
                </a>
            </td>
            <td>6</td>
            <td>26/50</td>
        </tr>
    </tbody>
</table>
</div>
<style>
.table{
    margin-top:2%;
    margin-left:12%;
    width: 80%;
}
.t1{
    padding-top:10px;
    font-size:35px;
    text-align:center;
    font-weight:bold;
}
.title{
    padding-top:5%;
    color:white;
    text-align:center;
}
.title2 {
    left:20%;
    position:absolute;
    top:130px;
    color:white;
    text-align:center;
}
.title3 {
    left:65%;
    position:absolute;
    top:130px;
    color:white;
    text-align:center;
}
.title4 {
    left:20%;
    position:absolute;
    top:220px;
    color:white;
    text-align:center;
}
.title5 {
    left:67%;
    position:absolute;
    top:220px;
    color:white;
    text-align:center;
}
.rect{
    height:280px;
    top:0;
    background-color: #912733;
}
</style>
</asp:Content>
