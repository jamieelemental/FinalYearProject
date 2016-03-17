<%@ Page Title="Chapter 3" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Three.aspx.cs" Inherits="BootstrapLearningExperience._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <script>
        $(document).ready(function () {

            $("#showTable").click(function () {
                $("#Table").show();
                $("#TableBordered").hide();
                $("#TableCondensed").hide();
                $("#TableAll").hide();
            });

            $("#showTableCondensed").click(function () {
                $("#Table").hide();
                $("#TableBordered").hide();
                $("#TableCondensed").show();
                $("#TableAll").hide();
            });

            $("#showTableBordered").click(function () {
                $("#Table").hide();
                $("#TableBordered").show();
                $("#TableCondensed").hide();
                $("#TableAll").hide();
            });

            $("#showTableAll").click(function () {
                $("#Table").hide();
                $("#TableBordered").hide();
                $("#TableCondensed").hide();
                $("#TableAll").show();
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
            <div class="col-xs-2 col-sm-2 col-md-3 col-lg-3"></div>

            <div class="col-xs-8 col-sm-8 col-md-6 col-lg-6">

                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 text-center">
                    <p class="btn-success">1</p>
                </div>

                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 text-center">
                    <p class="btn-success">2</p>
                </div>

                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 text-center">
                    <p class="btn-primary">3</p>
                </div>

                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 text-center">
                    <p class="btn-danger">4</p>
                </div>

                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 text-center">
                    <p class="btn-danger">5</p>
                </div>

                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 text-center">
                    <p class="btn-danger">6</p>
                </div>
            </div>

            <div class="col-xs-2 col-sm-2 col-md-3 col-lg-3"></div>

        </div>

        <div class="row">
            <div class="hidden-xs col-sm-1 col-md-1 col-lg-1"></div>
            <div class="col-xs-12 col-sm-10 col-md-10 col-lg-10">
                <p class="h2">The Basics</p>
                <p>
                    The first part of bootstrap to get to grips with is the style elements. These are typically simple, but useful stylings for your webpage, that are conviniently set up for
                    you to use straight out of the box. Take a look at this simple table below:
                </p>
                <br />
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

                <p>
                    This table is very simple, and uses very little styling but a border that outlines it. Bootstrap can handle some different styles for tables, a few being:
                    <code>table</code>, <code>table-condensed</code>, <code>table-bordered</code>. Below is an example of the same table, but with the different styles.
                </p>

                <div id="Table">
                    <table class="table">
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

                <div id="TableCondensed" hidden="hidden">
                    <table class="table-condensed">
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
                </div>

                <div id="TableBordered" hidden="hidden">
                    <table class="table-bordered">
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
                </div>

                <div id="TableAll" hidden="hidden">
                    <table class="table table-condensed table-bordered">
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

                <p>
                    <input id="showTable" type="button" class="btn btn-primary" value="table" />
                    <input id="showTableCondensed" type="button" class="btn btn-primary" value="table-condensed" />
                    <input id="showTableBordered" type="button" class="btn btn-primary" value="table-bordered" />
                    <input id="showTableAll" type="button" class="btn btn-primary" value="All" />
                </p>
                <br />
                <ul>
                    <li><code>table</code> adds padding in the cells, makes the table as wide as the container, and adds row lines.</li>
                    <li><code>table-condensed</code> adds a smaller amount of padding, does not alter width of the table. </li>
                    <li><code>table-bordered</code> does not add padding, does not alter width, adds all gridlines.</li>
                </ul>
                <p>
                    The all option, <code>table table-condensed table-bordered</code> adds padding left and right, adds smaller padding top and bottom, makes the table as wide
                    as the container and adds all gridlines. The reason for this is that <code>table</code> and <code>table-condensed</code> conflict. Despite this, it is
                    useful to combine the others, <code>table table-bordered</code> which gives a similar result to the All example. This is because <code>table</code>
                    gives us a good base, and <code>table-bordered</code> extends it with further styling.
                </p>

                <p class="h2">Buttons</p>
                <p>
                    Another quick style that can be applied to elements of your website is the button styles. You may have already noticed some of them already on this website. 
                    Different coloured buttons can be used to signify different things. In bootstrap we have a few different ones: 
                </p>
                

                <table class="table-bordered table-condensed text-center">

                    <tr>
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
                            <input class="btn btn-default" type="button" value="Click" /></td>
                        <td>
                            <input class="btn btn-primary" type="button" value="Click" /></td>
                        <td>
                            <input class="btn btn-success" type="button" value="Click" /></td>
                        <td>
                            <input class="btn btn-info" type="button" value="Click" /></td>
                        <td>
                            <input class="btn btn-warning" type="button" value="Click" /></td>
                        <td>
                            <input class="btn btn-danger" type="button" value="Click" /></td>
                        <td>
                            <input class="btn btn-link" type="button" value="Click" /></td>
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
                <p>Finally, we can add in <code>active</code> or <code>disabled</code> to determine
                    whether the button is clickable.
                </p>
                <p><input type="button" value="Active" class="btn btn-primary active" />&nbsp;<input type="button" value="Disabled" class="btn btn-primary disabled" /></p>
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


        <br />
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
