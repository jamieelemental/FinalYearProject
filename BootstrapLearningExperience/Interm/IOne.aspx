<%@ Page Title="Intermediate Guide" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IOne.aspx.cs" Inherits="BootstrapLearningExperience.IOne" ValidateRequest="false" %>

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
            var html = document.getElementById("MainContent_inpt").value;
            html = html.replace(/(\r\n|\n|\r|\t)/gm, "");
            html = html.replace(/(\s+)/gm, " ");
            html = html.replace(/> </g, "><");
            document.getElementById("outpt").innerHTML = html;
            // window.alert(html);
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

            document.getElementById("MainContent_inpt").value = '\
<div class="container-fluid text-center">\n\
    <div class="row">This Row could contain your title for the page</div>\n\
    \n\
    <div class="row">\n\
\n\
        <div class="col-md-4 col-sm-6">This is an</div>\n\
\n\
        <div class="col-md-4 col-sm-6">edited example of a </div>\n\
\n\
        <div class="col-md-4 col-sm-6">three column layout</div>\n\
\n\
    </div>            \n\
</div>';
            myFunction();

        }

        function newWindow() {

            var w = window.open("", '_blank', false);
            w.document.write("<script https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\"><\/script>\
                <link href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\" rel=\"stylesheet\">\
                    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"><\/script>" + document.getElementById("MainContent_inpt").value.trim());
            w.resizeTo(800, 600);
        }
    </script>

    <div class="row" style="max-height: calc(98% - 50px) !important;">

       <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3" style="height: 85vh; overflow-y: scroll;">
            <div class="col-xs-offset-1">

                <div id="1" class="visible">
                    <p class="h3 text-center">Introduction</p>
                    <p class="h4">Understanding this page</p>
                    <p>
                        To the right we have two boxes. The upper box, 'Code' allows you to enter and modify code yourself!
                        The lower box, 'Results' shows the result of the code in the upper box. We have several buttons on this page:
                    </p>
                    <ul>
                        <li><strong>Run</strong> - if you think the page hasn't updated the code in the lower box, this button will prompt an update.</li>
                        <li><strong>Save</strong> - This option will save you code from this page, until your return.</li>
                        <li><strong>Open in a new window</strong> - Open your code in a seperate window, to test resizing.</li>
                        <li><strong>Next &rarr;</strong> - Move forward a chapter (doesn't affect your code).</li>
                        <li><strong>&larr;</strong> - Move to previous chapter (doesn't affect your code).</li>
                    </ul>

                    

                </div>


                <div id="2" class="hidden">
                    <p class="h3 text-center">Chapter 1</p>
                   <p>
                        In the beginner tutorial, we covered the grid. The example we
                        used was a three column layout, that adapted to two columns depending
                        on the screen size. If we remember it used <code>col-md-4</code> and <code>col-xs-6</code>.
                        Click the button below to bring back the code.
                    </p>
                    <p>NOTE: this will replace your code.</p>
                    <p>
                        <input type="button" value="Load Example" class="btn btn-primary" onclick="exerciseOne();" />
                    </p>
                    <p>
                        Open the code in a new window, and see how it reacts when resizing the window. 
                        ****** FINISH ******
                        We can view how the code reacts in the lower box on the right hand side. To see how it reacts
                        to different device sizes, click "Open in a new window". This will create a page with the 
                        code entered in the upper right hand box.
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
            <div class="col-sm-12 col-md-12 col-lg-12">
                <p class="h3">Code: </p>

                <div style="margin-bottom: 1em;">
                    <asp:TextBox ID="inpt" runat="server" CssClass="form-control" TextMode="MultiLine" onkeyup="myFunction()" Height="10em"></asp:TextBox>
                </div>

                <p>
                    <input type="button" class="btn btn-primary" value="Run" onclick="myFunction();" />
                    <asp:Button ID="btnSave" runat="server" CssClass="btn btn-primary" Text="Save" OnClick="btnSave_Click" UseSubmitBehavior="false" />
                </p>
                <p class="h3">Results:</p>


                <pre id="outpt" style="min-height: 10em">

            </pre>
                <p>
                    <input type="button" class="btn btn-primary" value="Open in new Window" onclick="newWindow();" />
                </p>


            </div>
        </div>
    </div>
</asp:Content>
