<%@ Page Title="Intermediate Guide" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IOne.aspx.cs" Inherits="BootstrapLearningExperience.IOne" ValidateRequest="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <script>
       <%-- window.onload = function setUp() {

            document.getElementById("outpt").innerHTML = document.getElementById("MainContent_inpt").innerHTML = '<p class="h3">Hello World</p>';
            <%--window.alert(html);-
        }--%>

        function myFunction() {
            document.getElementById("outpt").innerHTML = document.getElementById("MainContent_inpt").value.trim();
        }

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


    </script>

    <div class="row">

        <div class="col-xs-12 col-sm-3 col-md-3 col-lg-3">
            <div class="col-md-11 col-md-offset-1 col-lg-10 coll-lg-offset-2">


                <div id="1" class="visible">
                    <p class="h3 text-center">Chapter 1</p>
                    <p>
                        Here is where the comments for the tutorial will reside. They will be informative, with instructions to guide you using bootstrap. 
                    They will aid you to learn the bootstrap framework, by making you type in the code yourself.
                    </p>
                </div>


                <div id="2" class="hidden">
                    <p class="h3 text-center">Chapter 2</p>
                    <p>
                        Here is where the comments for the tutorial will reside. They will be informative, with instructions to guide you using bootstrap. 
                    They will aid you to learn the bootstrap framework, by making you type in the code yourself.
                    </p>
                </div>


                <div id="3" class="hidden">
                    <p class="h3 text-center">Chapter 3</p>
                    <p>
                        Here is where the comments for the tutorial will reside. They will be informative, with instructions to guide you using bootstrap. 
                    They will aid you to learn the bootstrap framework, by making you type in the code yourself.
                    </p>
                </div>

                <nav>
                    <ul class="pager">
                        <li class="previous"><a onclick="paginationPrev();" class="btn"><span aria-hidden="true">&larr;</span> Previous</a></li>
                        <li class="next"><a onclick="paginationNext();" class="btn">Next <span aria-hidden="true">&rarr;</span></a></li>
                    </ul>
                </nav>
            </div>
        </div>











        <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 OutLine">

            <p class="h3">Code: </p>

           <!-- onkeyup="myFunction()" -->

            <div>
                <asp:TextBox ID="inpt" runat="server" CssClass="" TextMode="MultiLine" Height="100px" Width="700px" onkeyup="myFunction()"></asp:TextBox>
                <asp:Button ID="btnSave" runat="server" CssClass="btn btn-primary" Text="Save" OnClick="btnSave_Click"/>
            </div>

            <p class="h3">Results:</p>


            <pre id="outpt"></pre>


        </div>
    </div>

</asp:Content>
