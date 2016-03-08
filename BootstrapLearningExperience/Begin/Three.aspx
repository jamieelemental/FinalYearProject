﻿<%@ Page Title="Chapter 3" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Three.aspx.cs" Inherits="BootstrapLearningExperience._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

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
                <p class="h3">Introduction to the grid</p>
                <p>
                    With Bootstrap, you can create layouts for your page, making elements on the page appear on a hidden grid. 
                </p>
                <p>
                    The 'grid' layout splits the page into up to 12 sections. These sections can be further split into more sections,
                     however, it starts to get complicated and this will be covered later. 
                </p>
            </div>
            <div class="col-md-1 col-xs-1"></div>

        </div>

        <div class="row">

            <div class="col-md-1 col-xs-1"></div>

            <div class="col-md-10 col-xs-10">


                <p class="h3">Examples</p>
                <p>Here is a simple example of a three column layout: </p>
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

            &lt;div class="col-md-4"&gt;This is an &lt;/div&gt;

            &lt;div class="col-md-4"&gt;example of a &lt;/div&gt;

            &lt;div class="col-md-4"&gt;three column layout &lt;/div&gt;

        &lt;/div&gt;
    &lt;/body&gt;
&lt;/html&gt;
                </pre>
                <br />
                <input type="button" value="View example" class="btn btn-primary" onclick="window.open('Example.html', '_blank', 'height=300, width=1000','false')"/>
            </div>

            <div class="col-md-1 col-xs-1"></div>

        </div>
        <br />

         <div class="row">

            <div class="col-md-1 col-xs-1"></div>
            <div class="col-md-10 col-xs-10">
                <p>This layout is achieved using many <code>&lt;div&gt;</code> tags to define each section of the layout. The position of
                    each section is defined by two things, the screen size and the Bootstrap class applied to it. The first Bootstrap class used
                    is <code>container</code>, on the <code>&lt;body&gt;</code> tag. This sets a maximum width for the content, and is important as
                    each section of the layout will use this width as reference. This tag also uses <code>text-center</code>, which centralises the 
                    content.
                </p>
                <p>Once we have our container, it is time to build our sections. The first is a <code>row</code>. In our example the first row has no other
                    Bootstrap classes, and spans the width of the page. Next we declare another <code>row</code>, this will sit below our first row, and 
                    contain our three columns. 
                </p>
                <p>The page or container can be split into up to 12 sections. Each section must have a size in reference to that. Our example
                    uses Bootstrap CSS <code>col-md-4</code>. This defines a new column, for medium devices (more on this later), of width
                    4 of 12. Since we want 3 equal columns, all three have the same class.
                </p>
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