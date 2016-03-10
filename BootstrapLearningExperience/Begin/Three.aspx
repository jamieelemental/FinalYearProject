<%@ Page Title="Chapter 3" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Three.aspx.cs" Inherits="BootstrapLearningExperience._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <p class="h2 text-center">Chapter 3</p>
        </div>
        <div class="row">
            <div class="col-md-3 col-xs-2"></div>

            <div class="col-md-6 col-xs-8">

                <div class="col-md-2 col-xs-2 text-center">
                    <p class="btn-success">1</p>
                </div>

                <div class="col-md-2 col-xs-2 text-center">
                    <p class="btn-success">2</p>
                </div>

                <div class="col-md-2 col-xs-2 text-center">
                    <p class="btn-primary">3</p>
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


                </div>
           <div class="col-md-1 col-xs-1"></div>

       </div>



        <div class="row">
            <div class="col-md-6 col-xs-6 text-center">
                <input type="button" value="Previous" class="btn btn-primary" onclick="window.location = '/Begin/Two.aspx'" />
            </div>
            <div class="col-md-6 col-xs-6 text-center">
                <input type="button" value="Next" class="btn btn-success" onclick="window.location = '/Begin/Four.aspx'" />
            </div>
        </div>
    </div>

</asp:Content>
