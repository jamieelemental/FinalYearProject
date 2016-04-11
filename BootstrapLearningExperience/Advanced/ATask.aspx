<%@ Page Title="Advanced" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ATask.aspx.cs" Inherits="BootstrapLearningExperience.Advanced.ATask" ValidateRequest="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <script>

        //Set the code content.
        window.onload = function setUp() {

            var content = document.getElementById("MainContent_inpt").value.trim();

            if (content != "") {
                document.getElementById("outpt").innerHTML = document.getElementById("MainContent_inpt").value.trim();
            }
            else {
                document.getElementById("MainContent_inpt").value
                    = document.getElementById("outpt").innerHTML
                    = '<input type="button" class="btn btn-primary" value="Click" />';
            }
        }

        //Reload the output when input changes.
        function reload() {
            var html = document.getElementById("MainContent_inpt").value;
            html = html.replace(/(\r\n|\n|\r|\t)/gm, "");
            html = html.replace(/(\s+)/gm, " ");
            html = html.replace(/> </g, "><");
            document.getElementById("outpt").innerHTML = html;
        }

        function newWindow() {

            var w = window.open("", '_blank', false);
            w.document.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"><\/script>\
                <script https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\"><\/script>\
                <link href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\" rel=\"stylesheet\">"
                + document.getElementById("MainContent_inpt").value.trim());
            w.resizeTo(800, 600);
        }

    </script>


    <div class="row">

        <div class="col-xs-1 col-sm-2"></div>

        <div class="col-xs-10 col-sm-8">
            <br />

            <div class="alert alert-info" data-dismiss="alert">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                Open the Target Page, a template provided by: http://startbootstrap.com/template-overviews/shop-homepage/. The HTML has been provided, 
                    but all the Bootstrap classes have been removed! Try and fill them in
                to create the target page. If you get stuck, try use the cheat sheet for help. 
                    Note: You may need to do additional research into Bootstrap!
            </div>

            <p class="h3">Code: </p>

            <div style="margin-bottom: 1em;">
                <asp:TextBox ID="inpt" runat="server" CssClass="form-control" TextMode="MultiLine" onkeyup="reload()" Height="10em"></asp:TextBox>
            </div>


            <div class="row">
                <div class="col-xs-4">
                    <a id="lnkReload" class="glyphicon glyphicon-play" onclick="reload();" style="font-size: 2em;"></a>&nbsp;
                            <asp:LinkButton ID="lnk" runat="server" OnClick="btnSave_Click" Style="font-size: 2em;" UseSubmitBehaviour="false"><span class="glyphicon glyphicon-floppy-disk" /></asp:LinkButton>&nbsp;
                    <a class="glyphicon glyphicon-new-window" onclick="newWindow();" style="font-size: 2em;"></a>
                </div>

                <div class="col-xs-4"></div>

                <div class="col-xs-4">
                    <asp:Button runat="server" ID="btnDownload" CssClass="btn btn-info" OnClick="btnDownload_Click" Text="Download Task" />
                    <input type="button" value="View Target Page" class="btn btn-primary pull-right" onclick="window.open('AExample.html', '_blank', 'height=600, width=800', 'false')" />
                </div>
            </div>

            <p class="h3">Results:</p>


            <pre id="outpt" style="min-height: 10em"></pre>

        </div>
    </div>
    <div class="col-xs-1 col-sm-2"></div>

</asp:Content>
