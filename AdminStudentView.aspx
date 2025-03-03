<%@ Page Title="" Language="C#" MasterPageFile="~/TempleAthletics.Master" AutoEventWireup="true" CodeBehind="AdminStudentView.aspx.cs" Inherits="TempleAthletics.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <section class="mt-xl-5 pt-xl-5 mx-5">
        <h2 class="text-center mb-4">Students</h2>
        
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
                        <th scope="col">Name</th>
                        <th scope="col" class="text-center">Hours</th>
                        <th scope="col" class="text-center">Last Active</th>
                        <th scope="col" class="text-center">Team</th>
                        <th scope="col" class="text-center">Sport</th>
                        <th scope="col" class="text-center"></th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row" class="align-middle">Sally Sitwell</th>
                        <td class="align-middle text-center">30</td>
                        <td class="text-center">Sunday, March 18, 2023 <span class="d-block">at 10:00 AM EST</span></td>
                        <td class="align-middle text-center">Temple Owls</td>
                        <td class="align-middle text-center">Football</td>
                        <td class="align-middle text-center">
                            <img class="file-icon" src="Images/File-icon.svg" alt="icon" /></td>
                    </tr>
                    <tr class="bg-gray">
                        <th scope="row" class="align-middle">Billy Bob</th>
                        <td class="align-middle text-center">10</td>
                        <td class="text-center">Tuesday, March 21, 2023 <span class="d-block">at 9:30 AM EST</span></td>
                        <td class="align-middle text-center">Temple Owls</td>
                        <td class="align-middle text-center">Soccer</td>
                        <td class="align-middle text-center">
                            <img class="file-icon" src="Images/File-icon.svg" alt="icon" /></td>
                    </tr>
                    <tr>
                        <th scope="row" class="align-middle">Tina Turner</th>
                        <td class="align-middle text-center">30</td>
                        <td class="text-center">Sunday, March 18, 2023 <span class="d-block">at 10:00 AM EST</span></td>
                        <td class="align-middle text-center">Temple Owls</td>
                        <td class="align-middle text-center">Softball</td>
                        <td class="align-middle text-center">
                            <img class="file-icon" src="Images/File-icon.svg" alt="icon" /></td>
                    </tr>
                    <tr class="bg-gray">
                        <th scope="row" class="align-middle">Greasy Greg</th>
                        <td class="align-middle text-center">10</td>
                        <td class="text-center">Tuesday, March 21, 2023 <span class="d-block">at 9:30 AM EST</span></td>
                        <td class="align-middle text-center">Temple Owls</td>
                        <td class="align-middle text-center">Baseball</td>
                        <td class="align-middle text-center">
                            <img class="file-icon" src="Images/File-icon.svg" alt="icon" /></td>
                    </tr>
                     <tr>
                        <th scope="row" class="align-middle">Hulk Hogan</th>
                        <td class="align-middle text-center">30</td>
                        <td class="text-center">Sunday, March 18, 2023 <span class="d-block">at 10:00 AM EST</span></td>
                        <td class="align-middle text-center">Temple Owls</td>
                        <td class="align-middle text-center">Wrestling</td>
                        <td class="align-middle text-center">
                            <img class="file-icon" src="Images/File-icon.svg" alt="icon" /></td>
                    </tr>
                </tbody>
            </table>
        </section>
    </section>


</asp:Content>
