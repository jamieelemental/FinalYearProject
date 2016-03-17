<%@ Page Title="Chapter 1" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="One.aspx.cs" Inherits="BootstrapLearningExperience._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

        <div class="row">
            <p class="h2 text-center">Chapter 1</p>
        </div>

        <div class="row">

            <div class="col-xs-1 col-sm-2 col-md-3 col-lg-3"></div>

            <div class="col-xs-10 col-sm-8 col-md-6 col-lg-6">
                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 text-center">
                    <p class="bg-primary">1</p>
                </div>

                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 text-center">
                    <p class="bg-danger">2</p>
                </div>

                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 text-center">
                    <p class="bg-danger">3</p>
                </div>

                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 text-center">
                    <p class="bg-danger">4</p>
                </div>

                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 text-center">
                    <p class="bg-danger">5</p>
                </div>

                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 text-center">
                    <p class="bg-danger">6</p>
                </div>
            </div>
            <div class="col-xs-1 col-sm-2 col-md-3 col-lg-3"></div>
        </div>

        <div class="row">

            <div class="hidden-xs col-sm-1 col-md-1 col-lg-1"></div>
            <div class="col-xs-12 col-sm-10 col-md-10 col-lg-10">

                <p class="h3">What is BootStrap?</p>
                <p>
                    Bootstrap is a collection of files, CSS (cascading style sheets) and JavaScript, that you can include as part of a website to help
                    create a structured layout and add some functionality. Bootstrap has many useful features, and is quite notable for including tools
                    to make your website responsive, resizing items to fit different screen sizes. 
                </p>
            </div>
            <div class="hidden-xs col-sm-1 col-md-1 col-lg-1"></div>

        </div>


        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">
                <input type="button" value="Begin" class="btn btn-success" onclick="window.location = '/Begin/Two.aspx'" />
            </div>
        </div>

    </div>

</asp:Content>
