<%@ Page Title="Chapter 4" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

        <div class="row">
            <p class="h2 text-center">Chapter 4</p>
        </div>

        <div class="row">

            <div class="col-xs-1 col-sm-2 col-md-3"></div>
            <div class="col-xs-10 col-sm-8 col-md-6">

                <div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="50"
                        aria-valuemin="0" aria-valuemax="100" style="width: 50%">
                        <span>50%</span>
                    </div>
                </div>
            </div>
            <div class="col-xs-1 col-sm-2 col-md-3"></div>

        </div>

        <div class="row">

            <div class="hidden-xs col-sm-1"></div>
            <div class="col-xs-12 col-sm-10">
                <p class="h3">Introduction to the grid</p>
                <p>
                    With Bootstrap, you can create layouts for your page, making elements on the page appear on a hidden grid. 
                </p>
                <p>
                    The 'grid' layout splits the page into up to 12 sections. These sections can be further split into more sections,
                     however, it starts to get complicated and this will be covered later. 
                </p>


                <p class="h3">Examples</p>
                <p>Here is a simple example of a three column layout: </p>
                <pre>
&lt;!DOCTYPE html&gt;
&lt;html&gt;
    &lt;head&gt;
        &lt;title&gt;Simple Example&lt;/title&gt;
        &lt;script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"&gt;&lt;/script&gt;
        &lt;script src="js/bootstrap.js">&lt;/script&gt;
        &lt;link href="css/bootstrap.min.css" rel="stylesheet"&gt;
        
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
                <p>
                    <input type="button" value="View example" class="btn btn-primary" onclick="window.open('Example.html', '_blank', 'height=300, width=1000', 'false')" />
                </p>

                <p>
                    This layout is achieved using many <code>&lt;div&gt;</code> tags to define each section of the layout. The position of
                    each section is defined by two things, the screen size and the Bootstrap class applied to it. The first Bootstrap class used
                    is <code>container</code>, on the <code>&lt;body&gt;</code> tag. This sets a maximum width for the content, and is important as
                    each section of the layout will use this width as reference. This tag also uses <code>text-center</code>, which centralises the 
                    content.
                </p>
                <p>
                    Once we have our container, it is time to build our sections. The first is a <code>row</code>. In our example the first row has no other
                    Bootstrap classes, and spans the width of the page or <code>container</code> in this case. Next we declare another <code>row</code>, this will sit below our first row, and 
                    contain our 3 columns. 
                </p>
                <p>
                    The page or container can be split into up to 12 sections. Each section must have a size in reference to that. Our example
                    uses Bootstrap CSS <code>col-md-4</code>. This defines a new column, for medium devices (more on this later), of width
                    4 of 12. Since we want 3 equal columns, all three have the same class.
                </p>
            </div>
            <div class="hidden-xs col-sm-1"></div>

        </div>

        <div class="row">
            <div class="col-xs-6 text-center">
                <input type="button" value="Previous" class="btn btn-primary" onclick="window.location = '/Begin/Three.aspx'" />
            </div>
            <div class="col-xs-6 text-center">
                <input type="button" value="Next" class="btn btn-success" onclick="window.location = '/Begin/Five.aspx'" />
            </div>
        </div>

    </div>
</asp:Content>
