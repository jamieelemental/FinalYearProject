<%@ Page Title="Chapter 3" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Three.aspx.cs" Inherits="BootstrapLearningExperience._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        $(document).ready(function () {

            $("#showTable").click(function () {
                $("#Table").removeClass("table-condensed table-bordered table-striped");
            });

            $("#showTableCondensed").click(function () {
                $("#Table").removeClass("table table-condensed table-bordered table-striped");
                $("#Table").addClass("table-condensed");
            });

            $("#showTableBordered").click(function () {
                $("#Table").removeClass("table table-condensed table-bordered table-striped");
                $("#Table").addClass("table-bordered");
            });

            $("#showTableStriped").click(function () {
                $("#Table").removeClass("table table-condensed table-bordered table-striped");
                $("#Table").addClass("table-striped");
            });

            $("#showTableAll").click(function () {
                $("#Table").removeClass("table table-condensed table-bordered table-striped");
                $("#Table").addClass("table table-condensed table-bordered table-striped");
            });
        });
    </script>
    <script>
        window.onload = function setUp() {

            var html = document.getElementById("inpt").value = document.getElementById("outpt").innerHTML.trim();
            <%--window.alert(html);--%>
        }

        function myFunction() {
            document.getElementById("outpt").innerHTML = document.getElementById("inpt").value.trim();
        }
    </script>


    <div class="container">

        <div class="row">
            <p class="h2 text-center">Chapter 3</p>
        </div>

        <div class="row">

            <div class="col-xs-1 col-sm-2 col-md-3 col-lg-3"></div>
            <div class="col-xs-10 col-sm-8 col-md-6 col-lg-6">


                <div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="33"
                        aria-valuemin="0" aria-valuemax="100" style="width: 33%">
                        <span>33%</span>
                    </div>
                </div>
            </div>
            <div class="col-xs-1 col-sm-2 col-md-3 col-lg-3"></div>

        </div>

        <div class="row">

            <div class="hidden-xs col-sm-1 col-md-1 col-lg-1"></div>
            <div class="col-xs-12 col-sm-10 col-md-10 col-lg-10">
                <p class="h3">The Basics</p>
                <p>
                    The first part of bootstrap to get to grips with is the style elements. These are typically simple, but useful stylings for your webpage, that are conviniently set up for
                    you to use straight out of the box.
                </p>
                <p class="h3">Tables</p>
                <p>Tables are a key element of many webspages, and Boostrap provides us with some useful styles for tables. Take a look at this simple HTML table below:</p>
                <div>
                    <table style="width: 100%; display: table; border: 1px black solid;">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Address</th>
                                <th>Town/City</th>
                                <th>Postcode</th>
                            </tr>
                        </thead>
                        <tr>
                            <td>John Smith</td>
                            <td>128 Beaker Street</td>
                            <td>Townsville</td>
                            <td>TW4 1IK</td>
                        </tr>
                        <tr>
                            <td>Jane Doe</td>
                            <td>32 Rinestone Grove</td>
                            <td>Fortington</td>
                            <td>FT5 9AD</td>
                        </tr>
                    </table>
                </div>
                <br />

                <p>
                    This table is very simple, and uses no styling, apart from a border that outlines it. Bootstrap can handle some different styles for tables, being:
                    <code>table</code>, <code>table-condensed</code>, <code>table-bordered</code>, <code>table-striped</code>. Below is an example of the same table, but with the different styles.
                </p>

       
                    <table id="Table" class="table">
                        <thead>
                            <tr>
                                <th>Name</th>
                                <th>Address</th>
                                <th>Town/City</th>
                                <th>Postcode</th>
                            </tr>
                        </thead>
                        <tr>
                            <td>John Smith</td>
                            <td>128 Beaker Street</td>
                            <td>Townsville</td>
                            <td>TW4 1IK</td>
                        </tr>
                        <tr>
                            <td>Jane Doe</td>
                            <td>32 Rinestone Grove</td>
                            <td>Fortington</td>
                            <td>FT5 9AD</td>
                        </tr>
                    </table>
                    <br />
              

                <p>
                    <input id="showTable" type="button" class="btn btn-primary btn-sm" value="table" />
                    <input id="showTableCondensed" type="button" class="btn btn-primary btn-sm" value="table-condensed" />
                    <input id="showTableBordered" type="button" class="btn btn-primary btn-sm" value="table-bordered" />
                    <input id="showTableStriped" type="button" class="btn btn-primary btn-sm" value="table-striped" />
                    <input id="showTableAll" type="button" class="btn btn-primary btn-sm" value="All" />
                </p>
                <br />
                <ul>
                    <li><code>table</code> adds padding in the cells, makes the table as wide as the container, and adds row lines.</li>
                    <li><code>table-condensed</code> adds a smaller amount of padding then table, but the table stays as small as the content. </li>
                    <li><code>table-bordered</code> does not add padding, does not alter size, adds all gridlines.</li>
                    <li><code>table-striped</code> does not add padding, does not alter size, adds darker colour to alternating rows.</li>
                </ul>
                <p>
                    The all option, <code>table table-condensed table-bordered table-striped</code> adds padding left and right, adds smaller padding top and bottom, makes the table as wide
                    as the container, adds all gridlines and adds darker colour to alternating rows. The reason for this is that <code>table</code> and <code>table-condensed</code> conflict. Despite this, it is
                    useful to combine the others, <code>table table-bordered</code> which gives a similar result to the All example. This is because <code>table</code>
                    gives us a good base, and <code>table-bordered</code> extends it with further styling.
                </p>

                <p class="h3">Buttons</p>
                <p>
                    Another quick style that can be applied to elements of your website is the button styles. You may have already noticed some of them already on this website. 
                    Different coloured buttons can be used to signify different things. In bootstrap we have a few different ones: 
                </p>


                <table class="table-bordered table-condensed text-center" style="font-size: 0.9em;">

                    <tr>
                        <td><code>btn</code></td>
                        <td><code>btn-default</code></td>
                        <td><code>btn-primary</code></td>
                        <td><code>btn-success</code></td>
                        <td><code>btn-info</code></td>
                        <td><code>btn-warning</code></td>
                        <td><code>btn-danger</code></td>
                        <td><code>btn-link</code></td>
                    </tr>

                    <tr>
                        <td>
                            <input class="btn btn-xs" type="button" value="Click" /></td>
                        <td>
                            <input class="btn btn-default btn-xs" type="button" value="Click" /></td>
                        <td>
                            <input class="btn btn-primary btn-xs" type="button" value="Click" /></td>
                        <td>
                            <input class="btn btn-success btn-xs" type="button" value="Click" /></td>
                        <td>
                            <input class="btn btn-info btn-xs" type="button" value="Click" /></td>
                        <td>
                            <input class="btn btn-warning btn-xs" type="button" value="Click" /></td>
                        <td>
                            <input class="btn btn-danger btn-xs" type="button" value="Click" /></td>
                        <td>
                            <input class="btn btn-link btn-xs" type="button" value="Click" /></td>
                    </tr>
                </table>

                <br />
                <p>
                    We then also have suppliment classes to modify the size of the button:
                </p>

                <table class="table-condensed table-bordered text-center">
                    <tr>
                        <td><code>btn-xs</code></td>
                        <td><code>btn-sm</code></td>
                        <td><code>btn-md</code></td>
                        <td><code>btn-lg</code></td>
                    </tr>

                    <tr>
                        <td>
                            <input type="button" value="Click" class="btn btn-default btn-xs" /></td>
                        <td>
                            <input type="button" value="Click" class="btn btn-default btn-sm" /></td>
                        <td>
                            <input type="button" value="Click" class="btn btn-default btn-md" /></td>
                        <td>
                            <input type="button" value="Click" class="btn btn-default btn-lg" /></td>
                    </tr>

                </table>
                <br />
                <p>We also have <code>btn-block</code> which fills whatever container it is placed in:</p>
                <p>
                    <input type="button" value="Click" class="btn btn-default btn-block" />
                </p>
                <p>
                    Finally, we can add in <code>active</code> or <code>disabled</code> to determine
                    whether the button is clickable.
                </p>
                <p>
                    <input type="button" value="Active" class="btn btn-primary active" />&nbsp;<input type="button" value="Disabled" class="btn btn-primary disabled" /></p>
                <p>All these should be combined with the base button class <code>btn</code>. So <code>btn-danger</code> becomes <code>btn btn-danger</code>.</p>
                <p>Have a go combining these classes below:</p>



                <div class="col-md-6 col-xs-12">
                    <p class="h3">Code: </p>
                    <textarea id="inpt" class="table" onkeyup="myFunction()" style="height: 80px;"></textarea>
                </div>

                <div class="col-md-6 col-xs-12">
                    <p class="h3">Results:</p>
                    <pre id="outpt" style="height: 80px;">
<input type="button" class="btn btn-danger btn-xs" value="Click" />
                        </pre>
                </div>


            </div>
            <div class="hidden-xs col-sm-1 col-md-1 col-lg-1"></div>

        </div>

        <div class="row">
            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 text-center">
                <input type="button" value="Previous" class="btn btn-primary" onclick="window.location = '/Begin/Two.aspx'" />
            </div>
            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 text-center">
                <input type="button" value="Next" class="btn btn-success" onclick="window.location = '/Begin/Four.aspx'" />
            </div>
        </div>

    </div>
</asp:Content>
