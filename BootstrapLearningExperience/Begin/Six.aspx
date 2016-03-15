<%@ Page Title="Chapter 6" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Six.aspx.cs" Inherits="BootstrapLearningExperience._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <script type="text/javascript" src="../Scripts/ZeroClip/ZeroClipboard.js"></script>
    <script>
        $(document).ready(function () {

            $("#show").click(function () {
                $("#Answer").toggle();
            });
        });
    </script>

    <script>
       
        ZeroClipboard.config({ swfPath: "../Scripts/ZeroClip/ZeroClipboard.swf" });


        var clip = new ZeroClipboard($("button#copy-button"));

            
            
            clip.on('load', function (clip) {
                window.alert('loaded');

                clip.on('datarequested', function (clip) {
                    var text = document.getElementById("#CopySource").innerText;
                    clip.setData(text);
                });

                clip.on('complete', function clip, args) {
                    console.log("Text copied to clipboard: \n" + args.text);
                });
            });



    </script>


    <div class="container">
        <div class="row">
            <p class="h2 text-center">Chapter 6</p>
        </div>



        <div class="row">

            <div class="col-md-1 col-xs-1"></div>
            <div class="col-md-10 col-xs-10">
                <p class="h3">Different Devices Advanced</p>

                <p>
                    It is not only possible to rearrange the layout of the page on different screen sizes, but we can also hide content. The next example contains 4 similar items on the page
                    but they are only visible in the correct screen size. Click below to open and have a go at slowly resizing the window. 
                </p>
                <p>
                    <input type="button" value="View example" class="btn btn-primary" onclick="window.open('Example3.html', '_blank', 'width=600, height=480', 'false')" />
                </p>
                <p>Hopefully from the example you will see how we can change the content based on the window size. Take a look at the code used below to achieve this:</p>
                <pre id="CopySource">
        
        &lt;div class="col-xs-12 hidden-sm hidden-md hidden-lg h6"&gt;
            &lt;p&gt;This is a extra small screen size, typically a mobile screen.&lt;/p&gt;
            &lt;div class="btn btn-default"&gt;
                &lt;p&gt;Mobile Phone (xs)&lt;/p&gt;
                &lt;p&gt;Less than 798px wide.&lt;/p&gt;
            &lt;/div&gt;
        &lt;/div&gt;
    
        &lt;div class="hidden-xs col-sm-12 hidden-md hidden-lg h4"&gt;
            &lt;p&gt;This is a small screen size, typically a tablet screen.&lt;/p&gt;
            &lt;div class="btn btn-default"&gt;
                &lt;p&gt;Tablet (sm)&lt;/p&gt;
                &lt;p&gt;798px - 992px wide.&lt;/p&gt;
            &lt;/div&gt;
        &lt;/div&gt;
   
        &lt;div class="hidden-xs hidden-sm col-12-md hidden-lg h2"&gt;
            &lt;p&gt;This is a medium screen size, typically a laptop screen.&lt;/p&gt;
            &lt;div class="btn btn-default"&gt;
                &lt;p&gt;Laptop (md)&lt;/p&gt;
                &lt;p&gt;993px - 1200px wide.&lt;/p&gt;
            &lt;/div&gt;
        &lt;/div&gt;

        &lt;div class="hidden-xs hidden-sm hidden-md col-lg-12 h1"&gt;
            &lt;p&gt;This is a large screen size, typically a desktop screen.&lt;/p&gt;
            &lt;div class="btn btn-default"&gt;
                &lt;p&gt;Desktop (lg)&lt;/p&gt;
                &lt;p&gt;Greater than 1200px wide.&lt;/p&gt;
            &lt;/div&gt;
        &lt;/div&gt;
                </pre>
                <input id="copy-button" type="button" value="Copy" class="copybtn" />
                <p>
                    If we look at the classes on the first <code>&lt;div&gt;</code> tag, we see <code>col-xs-12 hidden-sm hidden-md hidden-lg h6</code> which tells our
                    window: 
                </p>
                <ul>
                    <li>On Mobile Phones (xs) this column spans 12/12, 100% of the container.</li>
                    <li>On Tablets (sm) this column is hidden.</li>
                    <li>On Laptops (md) this column is hidden.</li>
                    <li>On Desktops (lg) this column is hidden.</li>
                    <li>The content is Heading 6 size.</li>
                </ul>
                <p>
                    To emphasise this example, we will look at the classes on the third <code>&lt;div&gt;</code>. We see <code>hidden-xs hidden-sm col-12-md hidden-lg h2</code>. 
                    Can you guess what this tells us about the column?
                </p>

                <div id="Answer" hidden="hidden">
                    <ul>
                        <li>On Mobile Phones (xs) this column is hidden.</li>
                        <li>On Tablets (sm) this column is hidden.</li>
                        <li>On Laptops (md) this column spans 12/12, 100% of the container.</li>
                        <li>On Desktops (lg) this column is hidden.</li>
                        <li>The content is Heading 2 size.</li>
                    </ul>

                </div>
                <p>
                    <input id="show" type="button" value="Reveal Answer" class="btn btn-primary" />
                </p>
            </div>
            <div class="col-md-1 col-xs-1"></div>

        </div>









        <div class="row">
            <div class="col-md-6 text-center">
                <input type="button" value="Previous" class="btn btn-primary" onclick="window.location = '/Begin/Five.aspx'" />
            </div>
            <div class="col-md-6 text-center">
                <input type="button" value="Next" class="btn btn-success" onclick="window.location = '/Begin/Finished.aspx'" />
            </div>
        </div>


    </div>

</asp:Content>
