<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IOne.aspx.cs" Inherits="BootstrapLearningExperience.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
   
    <script>
        window.onload = function setUp() {

            var html = document.getElementById("inpt").value = document.getElementById("outpt").innerHTML.trim();
            <%--window.alert(html);--%>
        }

        function myFunction() {
            document.getElementById("outpt").innerHTML = document.getElementById("inpt").value.trim();
        }
    </script>


   

        <div class="row">

            <div class="col-md-2 col-xs-3 OutLine">
                <p class="h3">Comments</p>
                <p>Here is where the comments for the tutorial will reside. They will be informative, with instructions to guide you using bootstrap. 
                    They will aid you to learn the bootstrap framework, by making you type in the code yourself.
                </p>
            </div>
            
            <div class="col-md-10 col-xs-9 OutLine">

                <p class="h3">Code: </p>

                <div>
                    <textarea id="inpt" class="table" rows="15" onkeyup="myFunction()"></textarea>
                </div>

                <p class="h3">Results:</p>

                <div id="outpt" class="OutLine">
                    <p class="h3">Hello World</p>
                </div>
            </div>

        </div>

</asp:Content>
