<%@ Page Title="Advanced" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AOne.aspx.cs" Inherits="BootstrapLearningExperience.Advanced.AOne" %>

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
        function myFunction() {
            //document.getElementById("outpt").innerHTML = document.getElementById("MainContent_inpt").value.trim();
            document.getElementById("outpt").src = "data:text/html;charset=utf-8," +  escape(document.getElementById("MainContent_inpt").value.trim());

        }


        //Pagination handling
        var page = 1;
        var maxPage = 3;
        var minPage = 1;

        function paginationNext() {
            if (page < maxPage) {
                document.getElementById(page).className = "hidden";
                page++;
                document.getElementById(page).className = "visible";
            }
        }

        function paginationPrev() {
            if (page > minPage) {
                document.getElementById(page).className = "hidden";
                page--;
                document.getElementById(page).className = "visible";
            }
        }


        //Exercise one
        function exerciseOne() {

            window.alert('fired?1');
            document.getElementById("MainContent_inpt").value = '<!DOCTYPE html>\
<html>\
<head>\
    <title>Simple Example</title>\
    <script https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js">\<\/script>   \
 <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">\
    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\">\<\/script>\
</head>\
<body class="container text-center">\
    <div class="row">This Row could contain your title for the page</div>\
    \
    <div class="row">\
\
        <div class="col-md-4 col-sm-6">This is an</div>\
\
        <div class="col-md-4 col-sm-6">edited example of a </div>\
\
        <div class="col-md-4 col-sm-6">three column layout</div>\
\
    </div>\
</body>\
</html>';
            window.alert('fired?');
        }

    </script>

    <div class="row">

        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
            <div class="col-md-11 col-md-offset-1 col-lg-10 coll-lg-offset-2">


                <div id="1" class="visible">
                    <p class="h3 text-center">Chapter 1</p>
                    <p>
                        In the beginner tutorial, we covered the grid. The example we
                        used was a three column layout, that adapted to two columns depending
                        on the screen size.</p>
                    <p>
                        <input type="button" value="Click" class="btn btn-primary" onclick="exerciseOne();" />
                    </p>
                    
                </div>


                <div id="2" class="hidden">
                    <p class="h3 text-center">Chapter 2</p>
                    <p>
                        This is where the content for chapter 2 will go.
                    </p>
                </div>


                <div id="3" class="hidden">
                    <p class="h3 text-center">Chapter 3</p>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis maximus elit ac justo varius, sed viverra ligula mollis. Aenean aliquam nisl vitae est aliquam, sed sagittis ipsum luctus. 
                        Nam dapibus quam at nulla scelerisque, vel vulputate ligula iaculis. Curabitur consequat augue semper posuere vulputate. Suspendisse potenti. Phasellus eleifend bibendum enim. 
                        Integer tristique porttitor metus, at molestie mauris porttitor quis. Donec finibus mi aliquam, convallis risus vel, pharetra libero. 
                        Proin diam ipsum, hendrerit quis mi id, sollicitudin tincidunt arcu. 
                        Nunc interdum aliquam dolor et interdum. Donec eget purus at magna ornare commodo et et ex. Vestibulum vulputate massa felis, at pulvinar leo cursus tincidunt.
                    </p>
                </div>

                <nav>
                    <ul class="pager">
                        <li class="previous"><a onclick="paginationPrev();" class="btn"><span aria-hidden="true">&larr;</span></a></li>
                        <li class="next"><a onclick="paginationNext();" class="btn">Next <span aria-hidden="true">&rarr;</span></a></li>
                    </ul>
                </nav>
            </div>
        </div>











        <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8">

            <p class="h3">Code: </p>

            <div style="margin-bottom: 1em;">
                <asp:TextBox ID="inpt" runat="server" CssClass="form-control" TextMode="MultiLine" Height="100px" onkeyup="myFunction()"></asp:TextBox>
            </div>

            <p>
                <input type="button" class="btn btn-primary" value="Run" onclick="myFunction();" />
                <asp:Button ID="btnSave" runat="server" CssClass="btn btn-primary" Text="Save" OnClick="btnSave_Click" UseSubmitBehavior="false" />
            </p>
            <p class="h3">Results:</p>


            <iframe id="outpt" style="min-height: 6em; width:100%;">

            </iframe>


        </div>
    </div>



</asp:Content>
