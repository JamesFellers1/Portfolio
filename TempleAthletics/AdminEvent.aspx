<%@ Page Title="" Language="C#" MasterPageFile="~/TempleAthletics.Master" AutoEventWireup="true" CodeBehind="AdminEvent.aspx.cs" Inherits="TempleAthletics.AdminEvent1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="mt-xl-5 pt-xl-5 mx-5">
        <h2 class="text-center mb-4">Upcoming Events</h2>
        <section class="mx-auto d-flex justify-content-between align-items-center mb-5 controls">
            <div class="d-flex flex-column h-100 align-content-end">
                <label for="addEvent" class="text-white">f</label>
                <a href="AdminCreateEvent.aspx" id="btn-addEvent" class="btn btn-danger btn-lg" name="addEvent">ADD EVENT</a>
            </div>
            <div class="w-25">
                <label for="search"></label>
                <input type="text" placeholder="Search..." class="form-control form-control-lg" name="search" id="search" />
            </div>
            <div class="">
                <label for="filter">Filter</label>
                <select name="filter" id="filter" class="form-control form-control-lg w-100 event-filter text-center">
                    <option>Current</option>
                    <option>All</option>
                    <option>Past</option>
                </select>
            </div>
        </section>
        <section class="table-wrapper-scroll-y my-custom-scrollbar">
            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Event</th>
                        <th scope="col" class="text-center">Capacity</th>
                        <th scope="col" class="text-center">Date</th>
                        <th scope="col" class="text-center">Duration</th>
                        <th scope="col" class="text-center">Community/Organization</th>
                        <th scope="col" class="text-center"></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row" class="align-middle">Read to Kids</th>
                        <td class="align-middle text-center">3/12</td>
                        <td class="text-center">Sunday, March 18, 2023 <span class="d-block">at 10:00 AM EST</span></td>
                        <td class="align-middle text-center">2h30m</td>
                        <td class="align-middle text-center">Smith Elementary School</td>
                        <td class="align-middle text-center">
                            <img class="file-icon" src="Images/File-icon.svg" alt="icon" /></td>
                    </tr>
                    <tr class="bg-gray">
                        <th scope="row" class="align-middle">Bike Day</th>
                        <td class="align-middle text-center">10/10</td>
                        <td class="text-center">Tuesday, March 21, 2023 <span class="d-block">at 9:30 AM EST</span></td>
                        <td class="align-middle text-center">5h00m</td>
                        <td class="align-middle text-center">St. Louis BikeWorks</td>
                        <td class="align-middle text-center">
                            <img class="file-icon" src="Images/File-icon.svg" alt="icon" /></td>
                    </tr>
                    <tr>
                        <th scope="row" class="align-middle">Halloween Party</th>
                        <td class="align-middle text-center">15/20</td>
                        <td class="text-center">Friday, March 31, 2023 <span class="d-block">at 1:30 AM EST</span></td>
                        <td class="align-middle text-center">1h00m</td>
                        <td class="align-middle text-center">Temple University</td>
                        <td class="align-middle text-center">
                            <img class="file-icon" src="Images/File-icon.svg" alt="icon" /></td>
                    </tr>
                    <tr class="bg-gray">
                        <th scope="row" class="align-middle">Habitat for Humanity</th>
                        <td class="align-middle text-center">3/12</td>
                        <td class="text-center">Sunday, March 18, 2023 <span class="d-block">at 10:00 AM EST</span></td>
                        <td class="align-middle text-center">2h30m</td>
                        <td class="align-middle text-center">Smith Elementary School</td>
                        <td class="align-middle text-center">
                            <img class="file-icon" src="Images/File-icon.svg" alt="icon" /></td>
                    </tr>
                    <tr>
                        <th scope="row" class="align-middle">Read to Kids</th>
                        <td class="align-middle text-center">3/12</td>
                        <td class="text-center">Sunday, March 18, 2023 <span class="d-block">at 10:00 AM EST</span></td>
                        <td class="align-middle text-center">2h30m</td>
                        <td class="align-middle text-center">Smith Elementary School</td>
                        <td class="align-middle text-center">
                            <img class="file-icon" src="Images/File-icon.svg" alt="icon" /></td>
                    </tr>
                </tbody>
            </table>
        </section>
    </section>
</asp:Content>
