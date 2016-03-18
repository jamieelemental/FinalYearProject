<%@ Page Title="Chapter 5" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Five.aspx.cs" Inherits="BootstrapLearningExperience._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

        <div class="row">
            <p class="h2 text-center">Chapter 5</p>
        </div>

        <div class="row">

            <div class="col-xs-1 col-sm-2 col-md-3 col-lg-3"></div>
            <div class="col-xs-10 col-sm-8 col-md-6 col-lg-6">
                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 text-center">
                    <p class="bg-success">1</p>
                </div>

                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 text-center">
                    <p class="bg-success">2</p>
                </div>

                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 text-center">
                    <p class="bg-success">3</p>
                </div>

                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 text-center">
                    <p class="bg-success">4</p>
                </div>

                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 text-center">
                    <p class="bg-primary">5</p>
                </div>

                <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2 text-center">
                    <p class="bg-danger">6</p>
                </div>
            </div>
            <div class="col-xs-1 col-sm-2 col-md-3 col-lg-3"></div>

        </div>

        <div class="row">

            <div class="hidden-xs col-sm-1 col-md-1 col-lg-1"></div>
            <div class="col-xs-12 col-sm-10 col-md-10 col-lg-10">
                <p class="h3">Different devices</p>
                <p>
                    The grid will display differently depending on the size of the device
                    viewing the webpage. Generally, these devices are categorised as the following:
                </p>
            </div>
            <div class="hidden-xs col-sm-1 col-md-1 col-lg-1"></div>

        </div>

        <div class="row">

            <div class="col-md-2 col-lg-2"></div>

            <div class="col-xs-12 col-sm-4 col-sm-offset-2 col-md-2 col-md-offset-0 col-lg-2 col-lg-offset-0 text-center">
                <div class="btn btn-default">
                    <p>Mobile Phone (xs)</p>
                    <p>&lt; 798px wide.</p>
                </div>
                <div class="">
                    <br />
                </div>
            </div>

            <div class="col-xs-12 col-sm-4 col-md-2 col-lg-2 text-center">
                <div class="btn btn-default">
                    <p>Tablet (sm)</p>
                    <p>798px - 992px wide.</p>
                </div>
                <div class="">
                    <br />
                </div>
            </div>

            <div class="col-xs-12 col-sm-4 col-sm-offset-2 col-md-2 col-md-offset-0 col-lg-2 col-lg-offset-0 text-center">
                <div class="btn btn-default">
                    <p>Laptop (md)</p>
                    <p>993px - 1200px wide.</p>
                </div>
                <div class="">
                    <br />
                </div>
            </div>

            <div class="col-xs-12 col-sm-4 col-md-2 col-lg-2 text-center">
                <div class="btn btn-default">
                    <p>Desktop (lg)</p>
                    <p>&gt; 1200px wide.</p>
                </div>
                <div class="">
                    <br />
                </div>
            </div>

            <div class="col-md-2 col-lg-2"></div>

        </div>

        <div class="row">

            <div class="hidden-xs col-sm-1 col-md-1 col-lg-1"></div>
            <div class="col-xs-12 col-sm-10 col-md-10 col-lg-10">
                <p>
                    If we recall our example in chapter 4, it used <code>col-md-4</code>, to define 3 columns of width 4 of 12. The <code>md</code>
                    part indicates which devices this column should display at width of 4 of 12. Medium size (md) screens will view this column as a third of the screen, however,
                    if we open the same example page using a smaller window size, we see the columns display differently.
                </p>
                <p>
                    <input type="button" value="View example" class="btn btn-primary" onclick="window.open('Example.html', '_blank', 'width=800, height=600', 'false')" />
                </p>
                <p>
                    Our 3 columns have seemingly collapsed into 1. This is because we haven't explicitly stated how to handle the columns for a smaller screen or window size.
                        To do this we must add the another Bootstrap class designed for smaller screens.
                </p>

                <p>
                    For this example, we decide that whilst on larger screens 3 column layout is perfect, we would like a maximum of two columns on the screen, and any extra columns display on
                        the next row. Here is the code, note the changes made:
                </p>
                <pre>
&lt;!DOCTYPE html&gt;

&lt;html&gt;
    &lt;head&gt;
        &lt;title&gt;Simple Example&lt;/title&gt;
        &lt;script src="js/bootstrap.js">&lt;/script&gt;
        &lt;link href="css/bootstrap.min.css" rel="stylesheet"&gt;
        &lt;script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"&gt;&lt;/script&gt;
    &lt;/head&gt;

    &lt;body class="container text-center"&gt;
        &lt;div class="row"&gt;This Row could contain your title for the page&lt;/div&gt;

        &lt;div class="row"&gt;

            <span style="color:red;">&lt;div class="col-md-4"&gt;This is an &lt;/div&gt;</span>
            &lt;div class="col-md-4 col-sm-6"&gt;This is an &lt;/div&gt;

            <span style="color:red;">&lt;div class="col-md-4"&gt;example of a &lt;/div&gt;</span>
            &lt;div class="col-md-4 col-sm-6"&gt;edited example of a &lt;/div&gt;

            <span style="color:red;">&lt;div class="col-md-4"&gt;three column layout &lt;/div&gt;</span>
            &lt;div class="col-md-4 col-sm-6"&gt;three column layout &lt;/div&gt;


        &lt;/div&gt;
    &lt;/body&gt;
&lt;/html&gt;


                    </pre>
                <p>
                    We have changed <code>col-md-4</code> on each of the <code>&lt;div&gt;</code> tags to <code>col-md-4 col-sm-6</code>. This means that for medium screens (md) each column
                        should have a width 4/12 of the container (1/3), but on small devices (sm), each column should have a width of 6/12 (1/2). Since the third column can no longer fit, it 
                        defaults to the natural flow of the page, downwards. We can control this, discussed later on. 
                </p>
                <p>
                    <input type="button" value="View example" class="btn btn-primary" onclick="window.open('Example2.html', '_blank', 'width=800, height=600', 'false')" />
                </p>

                <p>
                    Notice that if you resize the window so it is slightly wider, it reverts back to the 3 column layout. This is because the browser detects that the screen
                        size has become large enough to be classed as a medium size device.
                </p>
            </div>
            <div class="hidden-xs col-sm-1 col-md-1 col-lg-1"></div>

        </div>

        <div class="row">
            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 text-center">
                <input type="button" value="Previous" class="btn btn-primary" onclick="window.location = '/Begin/Four.aspx'" />
            </div>
            <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 text-center">
                <input type="button" value="Next" class="btn btn-success" onclick="window.location = '/Begin/Six.aspx'" />
            </div>
        </div>

    </div>
</asp:Content>
