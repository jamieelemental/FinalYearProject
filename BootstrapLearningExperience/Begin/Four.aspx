<%@ Page Title="Chapter 4" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Four.aspx.cs" Inherits="BootstrapLearningExperience._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <p class="h2 text-center">Chapter 4</p>
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
                    <p class="btn-success">3</p>
                </div>

                <div class="col-md-2 col-xs-2 text-center">
                    <p class="btn-primary">4</p>
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

            <div class="row">
                <div class="col-md-1 col-xs-1"></div>
                <div class="col-md-10 col-xs-10">
                    <p class="h3">Different devices</p>
                    <p>
                        The grid will view differently depeneding on the size of the device
                    viewing the webpage. Generally, these devices are categorised as the following:
                    </p>
                </div>
                <div class="col-md-1 col-xs-1"></div>
            </div>

            <div class="row text-center">

                <div class="col-md-2"></div>

                <div class="col-md-2">
                    <div class="btn btn-default">
                        <p>Mobile Phone (xs)</p>
                        <p>Less than 798px wide.</p>
                    </div>
                    <div class="hidden-md">
                        <br />
                    </div>
                </div>

                <div class="col-md-2">
                    <div class="btn btn-default">
                        <p>Tablet (sm)</p>
                        <p>798px - 992px wide.</p>
                    </div>
                    <div class="hidden-md">
                        <br />
                    </div>
                </div>

                <div class="col-md-2">
                    <div class="btn btn-default">
                        <p>Laptop (md)</p>
                        <p>993px - 1200px wide.</p>
                    </div>
                    <div class="hidden-md">
                        <br />
                    </div>
                </div>

                <div class="col-md-2">
                    <div class=" btn btn-default">
                        <p>Desktop (lg)</p>
                        <p>Greater than 1200px.</p>
                    </div>
                    <div class="hidden-md">
                        <br />
                    </div>
                </div>

                <div class="col-md-2"></div>

            </div>

            <div class="row">

                <div class="col-md-1 col-xs-1"></div>
                <div class="col-md-10 col-xs-10">
                    <p>If we recall our example in chapter three, it used <code>col-md-4</code>, to define 3 columns of width 4 of 12. The <code>md</code>
                    part indicates which devices this column should display at 4 of 12. Medium size screens will view this column as a third of the screen, however,
                    if we open the same example page using a smaller screen size, we see the columns display differently. </p>
                <p><input type="button" value="View example" class="btn btn-primary" onclick="window.open('Example.html', '_blank', 'width=500, height=700', 'false')" /></p>

                </div>
                <div class="col-md-1 col-xs-1"></div>
            </div>


            <div class="row">
                <div class="col-md-6 col-xs-6 text-center">
                    <input type="button" value="Previous" class="btn btn-primary" onclick="window.location = '/Begin/Three.aspx'" />
                </div>
                <div class="col-md-6 col-xs-6 text-center">
                    <input type="button" value="Next" class="btn btn-success" onclick="window.location = '/Begin/Five.aspx'" />
                </div>
            </div>


        </div>
</asp:Content>
