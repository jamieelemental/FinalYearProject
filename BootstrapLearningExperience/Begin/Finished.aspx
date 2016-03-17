<%@ Page Title="Finished" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Finished.aspx.cs" Inherits="BootstrapLearningExperience.Begin.Finished" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

        <div class="row">
            <p class="h2 text-center">Finished!</p>
        </div>

        <div class="row">

            <div class="col-xs-1 col-sm-2 col-md-3 col-lg-3"></div>

            <div class="col-xs-10 col-sm-8 col-md-6 col-lg-6">
                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 text-center">
                    <p class="btn-success">1</p>
                </div>

                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 text-center">
                    <p class="btn-success">2</p>
                </div>

                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 text-center">
                    <p class="btn-success">3</p>
                </div>

                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 text-center">
                    <p class="btn-success">4</p>
                </div>

                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 text-center">
                    <p class="btn-success">5</p>
                </div>

                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 text-center">
                    <p class="btn-success">6</p>
                </div>
            </div>

            <div class="col-xs-1 col-sm-2 col-md-3 col-lg-3"></div>
        </div>

        <div class="row">

            <div class="hidden-xs col-sm-1 col-md-1 col-lg-1"></div>
            <div class="col-xs-12 col-sm-10 col-md-10 col-lg-10">

                <p class="h3">You've achieved the rank of Initiate!</p>
                <p>
                    You've completed the beginner tutorial, and as such are granted the rank of initiate... Unfortunately there is no certificate, but if you are lucky, 
                    we may give you a badge. If you think you've got what it takes, move on to the next set of tutorials and a earn the next rank.
                </p>
            </div>
            <div class="hidden-xs col-sm-1 col-md-1 col-lg-1"></div>

        </div>


        <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 text-center">
                <input type="button" value="Begin" class="btn btn-warning" onclick="window.location = '/Interm/IOne.aspx'" />
            </div>
        </div>

    </div>

</asp:Content>
