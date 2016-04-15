<%@ Page Title="Get Strapped | A bootstrap tutorial website" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        $(document).ready(function () {
            $('body').scrollspy({ target: ".navbar", offset: 50 });
        });
    </script>
    

    <div id="Beginner" class="row text-center" onclick="window.location = '/Begin/One.aspx'">
        <div class="pad"></div>
        <div class="pad">
            <p class="h2">Beginner</p>
            <p>
                Your starting point for learning Bootstrap. Introduction to the Bootstrap framework, 
                            how to integrate into your project and what it can do.
            </p>
            <p>
                <input type="button" value="Begin" class="btn btn-success" name="Beginner" onclick="window.location = '/Begin/One.aspx'" />
            </p>
        </div>
        <div class="pad"></div>
    </div>

    <div id="Intermediate" class="row text-center" onclick="window.location = '/Interm/IOne.aspx'">
        <div class="pad"></div>
        <div class="pad">
            <p class="h2">Intermediate</p>
            <p>
                You've had some experience with the Bootstrap framework before, and want to jump straight into coding. Jump right on in
                        and start editing code for yourself.
            </p>
            <p>
                <input type="button" value="Begin" class="btn btn-warning" name="Intermediate" onclick="window.location = '/Interm/IOne.aspx'" />
            </p>
        </div>
        <div class="pad"></div>
    </div>

    <div id="Advanced" class="row text-center" onclick="window.location = '/Advanced/AOne.aspx'">
        <div class="pad"></div>
        <div class="pad">
            <p class="h2">Advanced</p>
            <p>Need no guidance, jump in and practive what you've learned. A true master of Bootstrap in the making, returned for old times. Be bold, try something new!</p>
            <p>
                <input type="button" value="Begin" class="btn btn-danger" name="Advanced" onclick="window.location = '/Advanced/AOne.aspx'" />
            </p>
        </div>
        <div class="pad"></div>
    </div>

    <nav class="navbar navbar-inverse navbar-fixed-bottom">
        <ul class="nav navbar-nav">
            <li class="hidden-xs"><a runat="server" href="~/">&copy; <%: DateTime.Now.Year %> - Jamie Element</a></li>
            <li><a href="https://docs.google.com/forms/d/1BNcJicEsQ6M1KK7iHSn-Hb5a42D0rNFhlBr9BFuHBdw/edit?usp=forms_home&ths=true">&nbsp;Got some feedback?</a></li>
        </ul>

        <ul class="nav navbar-nav navbar-right hidden-xs">
            <li><a runat="server" href="~/"><%= Session["VersionNo"].ToString() %> &nbsp;</a></li>
        </ul>
    </nav>
</asp:Content>
