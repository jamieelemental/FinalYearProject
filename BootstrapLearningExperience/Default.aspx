<%@ Page Title="Get Strapped | A bootstrap tutorial website" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BootstrapLearningExperience._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

        <div class="row">
            <p class="text-center h1">
                Welcome to the bootstrap tutorial!
            </p>
        </div>

        <div class="row">

            <div class="col-xs-12 col-sm-4 text-center">

                <div class="row">
                    <h2>Beginner</h2>
                </div>
                <div class="row">
                    <p>
                        Your starting point for learning Bootstrap. Introduction to the Bootstrap framework, 
                            how to integrate into your project and what it can do.
                    </p>
                </div>

                <div class="row">
                    <input type="button" value="Begin" class="btn btn-success" name="Beginner" onclick="window.location = '/Begin/One.aspx'" />
                </div>
            </div>



            <div class="col-xs-12 col-sm-4 text-center">
                <div class="row">
                    <h2>Intermediate</h2>
                </div>
                <div class="row">
                    <p>
                        You've had some experience with the Bootstrap framework before, and want to jump straight into coding. Jump right on in
                    and start editing code for yourself.
                    </p>
                </div>

                <div class="row">
                    <input type="button" value="Begin" class="btn btn-warning" name="Intermediate" onclick="window.location = '/Interm/IOne.aspx'" />
                </div>
            </div>



            <div class="col-xs-12 col-sm-4 text-center">


                <div class="row">
                    <p class="h2">Advanced</p>
                </div>
                <div class="row">
                    <p>Need no guidance, jump in and practive what you've learned. A true master of Bootstrap in the making, returned for old times. Be bold, try something new!</p>
                </div>

                <div class="row">
                    <input type="button" value="Begin" class="btn btn-danger" name="Advanced" onclick="window.location = '/Advanced/AOne.aspx'"/>
                </div>
            </div>
        </div>

        <footer class="container body-content">
            <hr />
            <p class="col-xs-6">&copy; <%: DateTime.Now.Year %> - Jamie Element </p>
            <p class="col-xs-6" style="text-align: right;"><%= Session["VersionNo"].ToString() %></p>
        </footer>
    </div>
</asp:Content>
