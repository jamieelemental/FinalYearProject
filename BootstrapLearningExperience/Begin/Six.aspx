<%@ Page Title="Chapter 6" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Six.aspx.cs" Inherits="BootstrapLearningExperience._Six" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <p class="h2 text-center">Chapter 6</p>
        </div>

        <div class="row">
            <div class="col-xs-1 col-sm-2 col-md-3"></div>

            <div class="col-xs-10 col-sm-8 col-md-6">
                
                 <div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="83"
                        aria-valuemin="0" aria-valuemax="100" style="width: 83%">
                        <span>83%</span>
                    </div>
                </div>
            </div>

            <div class="col-xs-1 col-sm-2 col-md-3"></div>

        </div>


        <div class="row">

            <div class="hidden-xs col-sm-1"></div>
            <div class="col-xs-12 col-sm-10">
                <p class="h3">Different Devices Advanced</p>

                <p>
                    It is not only possible to rearrange the layout of the page on different screen sizes, but we can also hide content. The next example contains 4 similar items on the page
                    but they are only visible in the correct screen size. Click below to open and have a go at slowly resizing the window. 
                </p>
                <p>
                    <input type="button" value="View example" class="btn btn-primary" onclick="window.open('Example3.html', '_blank', 'width=600, height=480', 'false')" />
                </p>
                <p>Hopefully from the example you will see how we can change the content based on the window size. Take a look at the code used below to achieve this:</p>
                <pre>
        
        &lt;div class="visible-xs h6"&gt;
            &lt;p&gt;This is a extra small screen size, typically a mobile screen.&lt;/p&gt;
            &lt;div class="btn btn-default"&gt;
                &lt;p&gt;Mobile Phone (xs)&lt;/p&gt;
                &lt;p&gt;Less than 768px wide.&lt;/p&gt;

            &lt;/div&gt;
        &lt;/div&gt;
    
        &lt;div class="visible-sm h4"&gt;
            &lt;p&gt;This is a small screen size, typically a tablet screen.&lt;/p&gt;
            &lt;div class="btn btn-default"&gt;
                &lt;p&gt;Tablet (sm)&lt;/p&gt;
                &lt;p&gt;768px - 992px wide.&lt;/p&gt;
            &lt;/div&gt;
        &lt;/div&gt;
   
        &lt;div class="visible-md h2"&gt;
            &lt;p&gt;This is a medium screen size, typically a laptop screen.&lt;/p&gt;
            &lt;div class="btn btn-default"&gt;
                &lt;p&gt;Laptop (md)&lt;/p&gt;
                &lt;p&gt;993px - 1200px wide.&lt;/p&gt;
            &lt;/div&gt;
        &lt;/div&gt;

        &lt;div class="visible-lg h1"&gt;
            &lt;p&gt;This is a large screen size, typically a desktop screen.&lt;/p&gt;
            &lt;div class="btn btn-default"&gt;
                &lt;p&gt;Desktop (lg)&lt;/p&gt;
                &lt;p&gt;Greater than 1200px wide.&lt;/p&gt;
            &lt;/div&gt;
        &lt;/div&gt;

                </pre>

                <p>
                    If we look at the classes on the first <code>&lt;div&gt;</code> tag, we see <code>visible-xs h6</code> which tells our
                    window: 
                </p>
                <ul>
                    <li>On Mobile Phones (xs) this column is visible and spans 12/12, 100% of the container by default.</li>
                    <li>On Tablets (sm) this column is hidden.</li>
                    <li>On Laptops (md) this column is hidden.</li>
                    <li>On Desktops (lg) this column is hidden.</li>
                    <li>The content is Heading 6 size.</li>
                </ul>
                <p>
                    In the previous example we used multiple classes, <code>col-md-4 col-sm-6</code>, to specify how a column should appear for different screen sizes. 
                    In this example you could achieve column hiding using a similar approach, <code>col-xs-12 hidden-sm hidden-md hidden-lg</code>, however,
                    all we need to state is when something should be visible, and bootstrap assumes it is hidden otherwise. Conversely, if we want to hide content on a specific size,
                    we can use the hidden classes, <code>hidden-xs hidden-sm hidden-md hidden-lg</code> and bootstrap will assume it should be visible on the other sizes.
                </p>
                <p>
                    Now look at the classes on the third <code>&lt;div&gt;</code>. We see <code>visible-md h2</code>. 
                    Can you guess what this tells us about the column?
                </p>

                <div id="Answer" class="collapse">
                    <ul>
                        <li>On Mobile Phones (xs) this column is hidden.</li>
                        <li>On Tablets (sm) this column is hidden.</li>
                        <li>On Laptops (md) this column is visible and spans 12/12, 100% of the container by default.</li>
                        <li>On Desktops (lg) this column is hidden.</li>
                        <li>The content is Heading 2 size.</li>
                    </ul>

                </div>
                <p>
                    <input id="show" type="button" value="Reveal Answer" class="btn btn-primary" data-toggle="collapse" data-target="#Answer" />
                </p>
                <br />
            </div>
            <div class="hidden-xs col-sm-1"></div>
        </div>


        <div class="row">
            <div class="col-xs-6 text-center">
                <input type="button" value="Previous" class="btn btn-primary" onclick="window.location = '/Begin/Five.aspx'" />
            </div>
            <div class="col-xs-6 text-center">
                <asp:Button ID="btnFinished" runat="server" CssClass="btn btn-success" Text="Finish" OnClick="btnFinished_Click" />
            </div>
        </div>
    </div>

</asp:Content>
