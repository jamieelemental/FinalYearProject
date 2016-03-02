<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="BootstrapLearningExperience._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <%--<div class="jumbotron">
        <h1>ASP.NET</h1>
        <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
        <p><a href="http://www.asp.net" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>Getting started</h2>
            <p>
                ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Get more libraries</h2>
            <p>
                NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2>Web Hosting</h2>
            <p>
                You can easily find a web hosting company that offers the right mix of features and price for your applications.
            </p>
            <p>
                <a class="btn btn-default" href="http://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
            </p>
        </div>
    </div>--%>

    <div class="container">

        <div class="row">
            <div class="text-center h1">
                Welcome to the bootstrap tutorial!
            </div>
        </div>

        <div class="row">

            <div class="col-md-4 text-center">

                <div class="col-md-12">
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

            </div>

            <div class="col-md-4 text-center">

                <div class="col-md-12">
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
            </div>


            <div class="col-md-4 text-center">

                <div class="col-md-12">
                    <div class="row">
                        <p class="h2">Advanced</p>
                    </div>
                    <div class="row">
                        <p>Need no guidance, jump in and practive what you've learned. A true master of Bootstrap in the making, returned for old times. Be bold, try something new!</p>
                    </div>
                    
                    <div class="row">
                        <input type="button" value="Begin" class="btn btn-danger" name="Advanced" />
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
        </div>



    </div>


</asp:Content>
