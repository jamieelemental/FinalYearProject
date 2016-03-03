<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="One.aspx.cs" Inherits="BootstrapLearningExperience._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <p class="h2 text-center">Chapter 1</p>
        </div>
        <div class="row">

            <div class="col-md-3 col-xs-2"></div>

            <div class="col-md-6 col-xs-8">
                <div class="col-md-2 col-xs-2 text-center">
                    <p class="btn-primary">1</p>
                </div>

                <div class="col-md-2 col-xs-2 text-center">
                    <p class="btn-danger">2</p>
                </div>

                <div class="col-md-2 col-xs-2 text-center">
                    <p class="btn-danger">3</p>
                </div>

                <div class="col-md-2 col-xs-2 text-center">
                    <p class="btn-danger">4</p>
                </div>

                <div class="col-md-2 col-xs-2 text-center">
                    <p class="btn-danger">5</p>
                </div>

                <div class="col-md-2 col-xs-2 text-center">
                    <p class="btn-danger">6</p>
                </div>
            </div>

            <div class="col-md-3 col-xs-2"></div>

        </div>

        <div class="row">

            <div class="col-md-1 col-xs-1"></div>
            <div class="col-md-10 col-xs-10">
                <p>
                    This is the part where all of the content is placed. It will typically be instructions and information about the bootstrap framework
                    but for now it is just a random stream of content to test how it will appear on the page. 
                </p>
            </div>
            <div class="col-md-1 col-xs-1"></div>

        </div>


        <div class="row">
            <div class="col-md-6 col-xs-6 text-center"></div>
            <div class="col-md-6 col-xs-6 text-center">
                <input type="button" value="Next" class="btn btn-success" onclick="window.location = '/Begin/Two.aspx'" />
            </div>
        </div>


    </div>

</asp:Content>
