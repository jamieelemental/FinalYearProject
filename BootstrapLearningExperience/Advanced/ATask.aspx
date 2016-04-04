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
            w.document.write("<script https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\"><\/script>\
                <link href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\" rel=\"stylesheet\">\
                    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"><\/script>"
                + document.getElementById("MainContent_inpt").value.trim());
            w.resizeTo(800, 600);
        }

    </script>


    <div class="row">

        <div class="col-xs-1 col-sm-2 col-md-2 col-lg-2"></div>

        <div class="col-xs-10 col-sm-8 col-md-8 col-lg-8">

            <div id="Task">

                <p class="h3">Code: </p>

                <div style="margin-bottom: 1em;">
                    <asp:TextBox ID="inpt" runat="server" CssClass="form-control" TextMode="MultiLine" onkeyup="reload()" Height="10em"></asp:TextBox>
                </div>


                <div class="row">
                    <div class="col-xs-2">
                        <a id="lnkReload" class="glyphicon glyphicon-play" onclick="reload();" style="font-size: 2em;"></a>&nbsp;
                            <asp:LinkButton ID="lnk" runat="server" OnClick="btnSave_Click" Style="font-size: 2em;" UseSubmitBehaviour="false"><span class="glyphicon glyphicon-floppy-disk" /></asp:LinkButton>
                    </div>
                    <div class="col-xs-8">
                    </div>
                    <div class="col-xs-2">
                        <input type="button" value="View Target Page" class="btn btn-primary" onclick="window.open('AExample.html', '_blank', 'height=600, width=800', 'false')" />
                    </div>

                </div>

                <p class="h3">Results:</p>


                <pre id="outpt" style="min-height: 10em"></pre>
                <p>
                    <a class="glyphicon glyphicon-new-window" onclick="newWindow();" style="font-size: 2em;"></a>
                </p>
            </div>
        </div>
        <div class="col-xs-1 col-sm-2 col-md-2 col-lg-2"></div>
    </div>

</asp:Content>
