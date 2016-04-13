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

    <style>
        .Ol {
            border: solid 1px black;
        }
    </style>
    <br />

    <div class="row">
        <div class="hidden-xs col-sm-1"></div>

        <div class="col-xs-12 col-sm-10">

            <div class="row">
                <div class="alert alert-info" data-dismiss="alert">
                    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                    Open the Target Page, a template provided by: http://startbootstrap.com/template-overviews/shop-homepage/. The HTML has been provided, 
                    but all the Bootstrap classes have been removed! Try and fill them in
                to create the target page. If you get stuck, try use the cheat sheet for help. 
                    Note: You may need to do additional research into Bootstrap!
                </div>
            </div>

            <div class="row">

                <div class="col-xs-12 col-sm-8">

                    <div class="row">
                        <div class="col-xs-12 col-sm-11">
                            <p class="h3">Code: </p>
                            <p>
                                <asp:TextBox ID="inpt" runat="server" CssClass="form-control" TextMode="MultiLine" onkeyup="reload()" Height="10em" style="overflow-y: scroll; resize: vertical;"></asp:TextBox>
                            </p>
                        </div>

                        <div class="hidden-xs col-sm-1"></div>
                    </div>

                    <div class="row" style="font-size: 2em;">

                        <div class="col-xs-4 col-sm-5">
                            <a id="lnkReload" class="glyphicon glyphicon-play" onclick="reload();"></a>
                            <asp:LinkButton ID="lnk" runat="server" OnClick="btnSave_Click" UseSubmitBehaviour="false"><span class="glyphicon glyphicon-floppy-disk" /></asp:LinkButton>
                            <a class="glyphicon glyphicon-new-window" onclick="newWindow();"></a>
                        </div>

                        <div class="col-xs-8 col-sm-6 text-right">
                            <input type="button" value="View Target Page" class="btn btn-primary" onclick="window.open('AExample.html', '_blank', 'height=600, width=800', 'false')" />
                            <asp:Button runat="server" ID="btnDownload" CssClass="btn btn-info" OnClick="btnDownload_Click" Text="Download Task" />
                        </div>

                        <div class="hidden-xs col-sm-1"></div>
                    </div>

                </div>

                <div class="col-xs-12 col-sm-4">

                    <div class="row">
                        <div class="col-xs-12">
                            <p class="h3">Validation Results:</p>
                            <p>
                                <asp:TextBox ID="validationResponse" runat="server" CssClass="form-control" TextMode="MultiLine" Height="10em" ReadOnly="true" style="overflow-y: scroll; resize: vertical;"></asp:TextBox>
                            </p>
                        </div>
                    </div>

                    <div class="row" style="font-size: 2em;">
                        <div class="col-xs-12">
                            <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" CssClass="btn btn-primary" Text="Validate HTML" />
                        </div>
                    </div>

                    <div class="row">
                        <div class="col-xs-12">
                            <br />
                            <p class="text-center">Validation provided by <a href="https://validator.w3.org/">https://validator.w3.org/</a></p>
                        </div>
                    </div>

                </div>

            </div>

            <div class="row">
                <div class="col-xs-12">
                    <p class="h3">Results:</p>
                    <pre id="outpt" style="height: 20em; overflow-y: scroll; resize: vertical;"></pre>
                </div>
            </div>

        </div>

        <div class="hidden-xs col-sm-1"></div>

    </div>
</asp:Content>