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



    <div class="container">
        <div class="row">
            <p class="h2 text-center">Chapter 3</p>
        </div>
        <div class="row">
            <div class="col-md-3 col-xs-2"></div>

            <div class="col-md-6 col-xs-8">

                <div class="col-md-2 col-xs-2 text-center">
                    <p class="btn-success">1</p>
                </div>

                <div class="col-md-2 col-xs-2 text-center">
                    <p class="btn-success">2</p>
                </div>

                <div class="col-md-2 col-xs-2 text-center">
                    <p class="btn-primary">3</p>
                </div>

                <div class="col-md-2 col-xs-2 text-center">
                    <p class="btn-danger">4</p>
                </div>

                <div class="col-md-2 col-xs-2 text-center">
                    <p class="btn-danger">5</p>
                </div>

                <div class="col-md-2 col-xs-2 text-center">
                    <p class="btn-danger">6</p>
                </div>
            </div>

            <div class="col-md-3 col-xs-2"></div>

        </div>

        <div class="row">
            <div class="col-md-1 col-xs-1"></div>
            <div class="col-md-10 col-xs-10">
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
                The all option, <code>table table-condensed table-bordered</code> adds padding left and right, adds smaller padding top and bottom, makes the table as wide
                    as the container and adds all gridlines. The reason for this is that <code>table</code> and <code>table-condensed</code> conflict. Despite this, it is
                    useful to combine the others, <code>table table-bordered</code> which gives a similar result to the All example. This is because <code>table</code>
                gives us a good base, and <code>table-bordered</code> extends it with further styling.
                </ul>
                <p class="h2">Buttons</p>
                <p>
                    Another quick style that can be applied to elements of your website is the button styles. You may have already noticed some of them already on this website. 
                    Different coloured buttons can be used to signify different things. In bootstrap we have a few different ones: 
                    <code>btn-default</code>,
                    <code>btn-primary</code>,
                    <code>btn-success</code>,
                    <code>btn-info</code>,
                    <code>btn-warning</code>, 
                    <code>btn-danger</code>, and
                    <code>btn-link</code>.
                </p>
                <p>
                    We then also have suppliment classes to modify the size of the button:

                    <code>btn-block</code>,
                    <code>btn-lg</code>,
                    <code>btn-md</code>, 
                    <code>btn-sm</code> and
                    <code>btn-xs</code>.

                    
                </p>


                <p class="btn btn-default">hello</p>
                <p class="btn btn-primary">hello</p>
                <p class="btn btn-success">hello</p>
                <p class="btn btn-info">hello</p>
                <p class="btn btn-warning">hello</p>
                <p class="btn btn-danger">hello</p>
                <p class="btn btn-link">hello</p>
                <p class="btn btn-default btn-block">hello</p>
                <p class="btn btn-default btn-lg">hello</p>
                <p class="btn btn-default btn-md">hello</p>
                <p class="btn btn-default btn-sm">hello</p>
                <p class="btn btn-default btn-xs">hello</p>



            </div>
            <div class="col-md-1 col-xs-1"></div>

        </div>



        <div class="row">
            <div class="col-md-6 col-xs-6 text-center">
                <input type="button" value="Previous" class="btn btn-primary" onclick="window.location = '/Begin/Two.aspx'" />
            </div>
            <div class="col-md-6 col-xs-6 text-center">
                <input type="button" value="Next" class="btn btn-success" onclick="window.location = '/Begin/Four.aspx'" />
            </div>
        </div>
    </div>

</asp:Content>
