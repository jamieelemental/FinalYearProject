<%@ Page Title="Finished" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" Inherits="BootstrapLearningExperience.Begin.Finished" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

        <div class="row">
            <p class="h2 text-center">Finished!</p>
        </div>

        <div class="row">

            <div class="col-xs-1 col-sm-2 col-md-3"></div>

            <div class="col-xs-10 col-sm-8 col-md-6">
              
                <div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="100"
                        aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                        <span>100%</span>
                    </div>
                </div>
            </div>

            <div class="col-xs-1 col-sm-2 col-md-3"></div>
        </div>

        <div class="row">

            <div class="hidden-xs col-sm-1"></div>
            <div class="col-xs-12 col-sm-10">

                <p class="h3">You've achieved the rank of Initiate!</p>
                <p>
                    You've completed the beginner tutorial, and as such are granted the rank of initiate... Unfortunately there is no certificate, but if you are lucky, 
                    we may give you a badge. If you think you've got what it takes, move on to the next set of tutorials and a earn the next rank.
                </p>
            </div>
            <div class="hidden-xs col-sm-1"></div>

        </div>


        <div class="row">
            <div class="col-xs-12 text-center">
                <input type="button" value="Continue" class="btn btn-warning" onclick="window.location = '/Interm/IOne.aspx'" />
            </div>
        </div>

    </div>

</asp:Content>
