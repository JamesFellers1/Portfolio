<%@ Page Title="" Language="C#" MasterPageFile="~/TempleAthletics.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="TempleAthletics.AdminHome" %>
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
        Total Team Hours:
        <br>
        160
    </h3>
    <h3 class="title4">
        Total Department Hours:
        <br>
        1,600
    </h3>
</div>

<div class="d-flex justify-content-left">
    <a href="ImportStudents.aspx">
    <button type="button" class="btn btn-primary ms-1">Import Students</button>
    </a>
</div>

<div class="t1">
    Upcoming Events
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
            <td>3</td>
            <td>10/24</td>
        </tr>
        <tr>
            <td>Spring 2022</td>
            <td>Baking for Homeless</td>
            <td>Make Baked Goods for the Unfortunate</td>
            <td>
                <a href="ViewEvent.aspx">
                    <button class="btn btn-primary" type="button">Open</button>
                </a>
            </td>
            <td>1</td>
            <td>3/30</td>
        </tr>
        <tr>
            <td>Spring 2022</td>
            <td>Recycling Trash</td>
            <td>Go around the City and Collect Trash</td>
            <td>
                <a href="ViewEvent.aspx">
                    <button class="btn btn-primary" type="button">Open</button>
                </a>
            </td>
            <td>9</td>
            <td>22/60</td>
        </tr>
        <tr>
            <td>Spring 2022</td>
            <td>Temple Meet Up</td>
            <td>Help Temple Set Up a Meet and Greet</td>
            <td>
                <a href="ViewEvent.aspx">
                    <button class="btn btn-primary" type="button">Open</button>
                </a>
            </td>
            <td>0</td>
            <td>47/130</td>
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
    left:41%;
    position:absolute;
    top:210px;
    color:white;
    text-align:center;
}

.rect{
    height:280px;
    top:0;
    background-color: #912733;
}
.btnn{
    text-align:center;
}
</style>
</asp:Content>
