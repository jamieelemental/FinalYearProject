<%@ Page Title="Intermediate Guide" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IOne.aspx.cs" Inherits="BootstrapLearningExperience.IOne" ValidateRequest="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <script>

        //Set the code content.
        window.onload = function setUp() {

            var content = document.getElementById("MainContent_inpt").value.trim();

            if (content != "") {
                document.getElementById("outpt").innerHTML = document.getElementById("MainContent_inpt").value.trim();
            }
            else {
                document.getElementById("MainContent_inpt").value
                    = document.getElementById("outpt").innerHTML
                    = '<input type="button" class="btn btn-primary" value="Click" />';
            }
        }

        //Reload the output when input changes.
        function reload() {
            var html = document.getElementById("MainContent_inpt").value;
            html = html.replace(/(\r\n|\n|\r|\t)/gm, "");
            html = html.replace(/(\s+)/gm, " ");
            html = html.replace(/> </g, "><");
            document.getElementById("outpt").innerHTML = html;
        }


        //Load in example code.
        function loadExample() {

            document.getElementById("MainContent_inpt").value = '\
<div class="container-fluid text-center">\n\
    <div class="row">This Row could contain your title for the page</div>\n\
    \n\
    <div class="row">\n\
\n\
        <div class="col-md-4 col-sm-6">This is an</div>\n\
\n\
        <div class="col-md-4 col-sm-6">edited example of a </div>\n\
\n\
        <div class="col-md-4 col-sm-6">three column layout</div>\n\
\n\
    </div>            \n\
</div>';
            reload();
        }

        function loadExample2() {

            document.getElementById("MainContent_inpt").value = '\
<div class="alert alert-danger" data-dismiss="alert">\n\
    Warning! Set your warning text here.\n\
</div>';
            reload();
        }

        function loadExample3() {
            document.getElementById("MainContent_inpt").value = '\
<div class="alert alert-success" data-dismiss="alert">\n\
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>\n\
alert alert-sucess\n\
</div>\n\n\
<div class="alert alert-info" data-dismiss="alert">\n\
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>\n\
alert alert-info\n\
</div>\n\n\
<div class="alert alert-warning" data-dismiss="alert">\n\
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>\n\
alert alert-warning\n\
</div>\n\n\
<div class="alert alert-danger" data-dismiss="alert">\n\
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>\n\
alert alert-danger\n\
</div>\n\n\
';
            reload();

        }

        function loadExample4() {

            document.getElementById("MainContent_inpt").value = '\
<div id="Content" class="collapse">\n\
    <p class="h4">Bazinga!</p>\n\
 </div>\n\
<input type="button" class="btn btn-primary" data-toggle="collapse" data-target="#Content" value="Click Me!">\n\
';
            reload();
        }

        function loadExample5() {
            document.getElementById("MainContent_inpt").value = '\
<div class="modal fade" id="modalExample" role="dialog">\n\
    <div class="modal-dialog">\n\
        <div class="modal-content">\n\
            <div class="modal-header">\n\
                <button type="button" class="close" data-dismiss="modal">&times;</button>\n\
                <h4 class="modal-title">Header</h4>\n\
            </div>\n\
            <div class="modal-body">\n\
                <p>This is the body of the modal.</p>\n\
            </div>\n\
            <div class="modal-footer">\n\
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>\n\
            </div>\n\
        </div>\n\
    </div>\n\
</div>\n\
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalExample">Open Example</button>';
            reload();
        }

        function newWindow() {

            var w = window.open("", '_blank', false);
            w.document.write("<script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"><\/script>\n\
                        <script src=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\"><\/script>\n\
                <link href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\" rel=\"stylesheet\"/>\n\
         <style>.OutLine{ border: 1px solid black;}<\/style>" + document.getElementById("MainContent_inpt").value.trim());
            w.resizeTo(800, 600);
        }
    </script>


    <div class="row" style="max-height: calc(98% - 50px) !important;">

        <div class="col-xs-12 col-sm-4 col-md-3" style="height: 85vh; overflow-y: scroll;">

            <asp:Wizard ID="IntermWiz" DisplayCancelButton="false" runat="server" DisplaySideBar="false" CssClass="col-xs-11 col-xs-offset-1">
                
                <WizardSteps>
                    <asp:WizardStep ID="Step1" AllowReturn="true" runat="server">
                        <p class="h3 text-center">Introduction</p>
                        <p class="h4">Understanding this page</p>
                        <p>
                            To the right we have two boxes. The upper box, 'Code' allows you to enter and modify code yourself!
                        The lower box, 'Results' shows the result of the code in the upper box. We have several buttons on this page:
                        </p>
                        <ul>
                            <li><strong><span class="glyphicon glyphicon-play"></span></strong>- if you think the page hasn't updated the code in the lower box, this button will prompt an update.</li>
                            <li><strong><span class="glyphicon glyphicon-floppy-disk"></span></strong>- This option will save you code from this page, until your return.</li>
                            <li><strong><span class="glyphicon glyphicon-new-window"></span></strong>- Open your code in a seperate window, to test resizing.</li>
                            <li><strong>Next</strong> - Move forward a chapter (doesn't affect your code).</li>
                            <li><strong>Previous</strong> - Move to previous chapter (doesn't affect your code).</li>
                        </ul>
                        <p>
                            If you cant remember the Bootstrap classes we have covered already, use the <strong><span class="glyphicon glyphicon-list-alt"></span>&nbsp;Cheat sheet</strong> button 
                        in the top navigation bar, to help jog your memory.
                        </p>
                    </asp:WizardStep>

                    <asp:WizardStep ID="Step2" AllowReturn="true" runat="server">
                        <p class="h3 text-center">Chapter 1</p>
                        <p>
                            In the beginner tutorial, we covered the grid. The example we
                        used was a three column layout, that adapted to two columns depending
                        on the screen size. If we remember it used <code>col-md-4</code> and <code>col-sm-6</code>.
                        Click the button below to bring back the code.
                        </p>
                        <div class="alert alert-danger" data-dismiss="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>NOTE: this will replace your code.</div>
                        <p>
                            <input type="button" value="Load Example" class="btn btn-primary" onclick="loadExample();" />
                        </p>
                        <p>
                            Open the code in a new window, and see how it reacts when resizing the window.
                        </p>
                        <p>
                            When the window is opened we see two columns, as expected, and when it gets bigger
                        we see three columns. 
                        </p>
                        <p>
                            Change the classes for each <code>&lt;div&gt;</code> to include <code>col-xs-2</code>.
                        Open in a new window, and reduce the size. 
                        </p>
                        <p>What happens?</p>
                        <p>
                            Before, the columns
                        collapsed into one single column, now they collapse into three small columns
                        on the left hand side because we have only specificed three columns of 2/12 width, 
                        totaling 6/12 of the page. 
                        </p>
                        <p>
                            Now, we are going to try something new. In only the first <code>&lt;div&gt;</code> tag, add the class
                        <code>col-xs-offset-2</code>. The first colum has been indented by a width of 2/12 of the screen. When using this
                        class, it is important to note that an <code>offset</code> value should be set for each screen size, otherwise the <code>offset</code> will
                        be assumed for all sizes. We only set an <code>offset</code> value for <code>xs</code> devices. Not only this, but our total
                        column widths exceeded 12, as offset counts as column space, and our columns get pushed down the page on some screen sizes.
                        </p>
                        <p>
                            To be sure that the <code>offset</code> only applies to <code>xs</code>, correct it to <code>col-xs-offset-2 col-sm-offset-0 col-md-offset-0 col-lg-offset-0</code>.
                        Now on <code>xs</code> devices, we see three columns, more centrally displayed. 
                        </p>
                    </asp:WizardStep>

                    <asp:WizardStep ID="Step3" AllowReturn="true" runat="server">
                        <p class="h3 text-center">Chapter 3</p>
                        <p class="h4">Interactivity</p>
                        <p>
                            Now we have mastered column sizes, and indentation (even on multiple devices), we now look at re-ordering the columns. Reload the
                        example code again.
                        </p>
                        <div class="alert alert-danger" data-dismiss="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>NOTE: this will replace your code.</div>
                        <p>
                            <input type="button" value="Load Example" class="btn btn-primary" onclick="loadExample();" />
                        </p>
                        <p>
                            Change the class on the first <code>&lt;div&gt;</code>, add the class <code>col-sm-push-6</code> and open in a new window. 
                        </p>
                        <p>What happens?</p>
                        <p>
                            On <code>sm</code> screen sizes, the first column will have changed location to be in the same place a the second column, and now they overwrite each other. 
                        This is because we have pushed the column to position 6/12, which is occupied.
                        </p>
                        <p>
                            To combat this, we can move the second column to where the first column used to be. We can achieve this using <code>pull</code>.
                        Add on to the second <code>&lt;div&gt;</code> another class <code>col-sm-pull-6</code>. Open in a new window.
                        </p>
                        <p>
                            You may notice, that some of these examples do not line up as mentioned. This is down to screen sizing, and to ensure that the <code>push</code>
                            and <code>pull</code> work effectively, we must add extra classes for the other screen sizes:
                        </p>
                        <p><code>col-xs-push-0 col-sm-push-6 col-md-push-0 col-lg-push-0</code></p>
                        <p><code>col-xs-pull-0 col-sm-pull-6 col-md-pull-0 col-lg-pull-0</code></p>
                        <p>
                            When using many bootstrap classes at once, it is a good idea to try and keep them tidy by reducing the amount of classes used. For example:
                        </p>
                        <p><code>col-xs-2 col-sm-2 col-md-2 col-lg-2</code></p>
                        <p>
                            This is specifying a column that has a width of 2/12, for all device sizes. The way that Bootstrap works is abiding by
                            the smallest device first then moving up. If all the columns will always be these same widths, we can shortern the amount
                            of classes down to only the smallest. 
                        </p>
                        <p><code>col-xs-2</code></p>
                        <p>To help understand it better, here is another example:</p>
                        <p><code>col-xs-2 col-sm-2 col-md-4 col-lg-4</code></p>
                        <p>How do you think this could be shortened?</p>
                        <p id="optEx" class="collapse"><code>col-xs-2 col-md-4</code></p>
                        <p>
                            <input id="showAnswer" type="button" value="View Answer" class="btn btn-primary" data-toggle="collapse" data-target="#optEx" />
                        </p>

                        <p>Have a go in the code window.</p>

                    </asp:WizardStep>

                    <asp:WizardStep ID="Step4" AllowReturn="true" runat="server">
                        <p class="h3 text-center">Chapter 4</p>
                        <p class="h4">Nested Grids</p>
                        <p>
                            We have covered many aspects of the grid layout, column sizing and reordering on different devices, but now we come to 
                            nesting grids. For the puposes of this exercise, an extra custom class can be used: <code>OutLine</code>. This will
                            put a black border around whatever you assign the class to.
                        </p>
                        <p>
                            Load up our example again, and add the <code>OutLine</code> class to each <code>&lt;div&gt;</code> tag.
                        </p>
                        <div class="alert alert-danger" data-dismiss="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>NOTE: this will replace your code.</div>
                        <p>
                            <input type="button" value="Load Example" class="btn btn-primary" onclick="loadExample();" />
                        </p>
                        <p>
                            Surround the three columns with another <code>&lt;div&gt;</code>. Place it after the second <code>&lt;div&gt;</code> defined
                            with the <code>row</code> class, and the closing tag after the closing tag of the third column <code>&lt;div&gt;</code>.
                        </p>
                        <p>
                            The three columns were originally nested within a <code>row</code>, now they are nested in a <code>&lt;div&gt;</code>, within a row. 
                            Now we must define classes for this new <code>&lt;div&gt;</code>. Add the classes <code>col-xs-6</code> and <code>OutLine</code>.
                        </p>
                        <p>It should look something like this:</p>
                        <p>
                            <input type="button" value="View example" class="btn btn-primary" onclick="window.open('IExample1.html', '_blank', 'height=300, width=1000', 'false')" />
                        </p>
                        <p>
                            You will notice that our new <code>&lt;div&gt;</code> only spans 6/12, 50%, of the page. Our columns react how they would normally, but now as a factor
                            of the new <code>&lt;div&gt;</code>. This is because each column in the grid sizes itself based on the size of its parent, which is not always the same size
                            as the page.
                        </p>
                        <p>Here we have another example, achieved by nesting columns inside eachother:</p>
                        <p>
                            <input type="button" value="View example" class="btn btn-primary" onclick="window.open('IExample2.html', '_blank', 'height=300, width=1000', 'false')" />
                        </p>
                        <br />

                    </asp:WizardStep>

                    <asp:WizardStep ID="Step5" AllowReturn="true" runat="server">
                        <p class="h3 text-center">Chapter 5</p>
                        <p class="h4">JavaScript Basics</p>
                        <p>
                            One of the simplest JavaScript functions that Bootstrap offers is the <code>alert</code>. Not to be confused with JavaScript's built in <code>window.alert();</code> function.
                            Here is an example:
                        </p>

                        <div class="alert alert-danger" data-dismiss="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>NOTE: this will replace your code.</div>

                        <p>
                            <input type="button" value="Load Example" class="btn btn-primary" onclick="loadExample2();" />
                        </p>
                        <p>
                            You may have noticed similar warnings on this website already, including the one preceding this example. Here we are using a combination of Bootstrap styles,
                            <code>alert alert-danger</code>, combined with JavaScript functionality <code>data-dismiss="alert"</code>. The <code>alert</code> class provides
                            the base class for the alert, spacing and padding. The <code>alert-danger</code> class provides the colour and outline for the alert, making appear red.
                            The JavaScript function <code>data-dismiss="alert"</code> dismisses the alert when clicked, referencing itself with the name "alert".
                        </p>
                        <p>Like buttons, alerts come in a variety of colours:</p>
                        <div class="alert alert-danger" data-dismiss="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>NOTE: this will replace your code.</div>
                        <p>
                            <input type="button" value="Load Example" class="btn btn-primary" onclick="loadExample3();" />
                        </p>
                        <p>
                            In this example, we have altered the alert to include an 'x' in the corner. This provides a more user friendly method of dismissing the alert, but we have
                            still maintained the original functionality, allowing the user to click anywhere on the alert to dismiss it.
                        </p>


                    </asp:WizardStep>


                    <asp:WizardStep ID="Step6" AllowReturn="true" runat="server">
                        <p class="h3 text-center">Chapter 6</p>
                        <p class="h4">JavaScript Collapse</p>
                        <p>
                            Another simple but effective JavaScript feature, is the collapsable feature. This allows you to show and hide content 
                            on your web page, in a simple manner. Load up the example below:
                        </p>
                        <div class="alert alert-danger" data-dismiss="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>NOTE: this will replace your code.</div>
                        <p>
                            <input type="button" value="Load Example" class="btn btn-primary" onclick="loadExample4();" />
                        </p>
                        <p>
                            First we declare a <code>&lt;div&gt;</code> to contain the content (for
                            this example we are using a div, but could be another type of content),
                            and we give it a unique id "Content" and the class <code>collapse</code>. 
                            Next we put some content inside the <code>&lt;div&gt;</code>, in this
                            case it is a heading.
                        </p>
                        <p>
                            Next we must set up the button to toggle the collapse. Using data-toggle
                           we can specify the type of animation, in this case we are using 
                           <code>collapse</code>. The we use <code>data-target</code> to select the
                           element on the page that we want to animate, in this case it is our
                           <code>&lt;div&gt;</code>, identified by the name "Content".
                        </p>
                        <br />
                        <p class="h4">JavaScript Modal</p>
                        <p>
                            The JavaScript <code>modal</code> is another way to show and hide content, except this time it is done in a window that shows over the content. You may have noticed this effect
                            being used on the cheat sheet. 
                        </p>

                        <p>
                            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalExampleTutorial">Open Example</button>
                        </p>

                        <div class="modal fade" id="modalExampleTutorial" role="dialog">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                                        <h4 class="modal-title">Header</h4>
                                    </div>
                                    <div class="modal-body">
                                        <p>This is the body of the modal.</p>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <p>
                            The code for this can be put almost anywhere on the page, as it always remains hidden until prompted, and appears over your
                            website content. It shouldn't interfere with the flow of the webpage. Load up the example and have a look at what classes
                            are used to acheive this effect.
                        </p>

                        <div class="alert alert-danger" data-dismiss="alert"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>NOTE: this will replace your code.</div>
                        <p>
                            <input type="button" value="Load Example" class="btn btn-primary" onclick="loadExample5();" />
                        </p>

                        <p>
                            Many bootstrap classes are being used here, so lets list them: <code>modal fade modal-dialog modal-content modal-header close modal-title modal-body modal-footer</code>
                            we also have JavaScript being used <code>role="dialog"</code> and <code>data-dismiss="modal"</code>.
                        </p>

                        <ul>
                            <li><code>modal</code> - defines the tag which contains the modal content. Adds the grey overlay on the content behind.</li>
                            <li><code>fade</code> - adds the animation of fading the content behind to the grey.</li>
                            <li><code>modal-dialog</code> - defines the position of the modal, around the center of the page.</li>
                            <li><code>modal-content</code> - adds white box around content.</li>
                            <li><code>modal-header</code> - defines the header of the modal and adds a seperator below it.</li>
                            <li><code>close</code> - floats the content to the top right, and removes traditional button styles. </li>
                            <li><code>modal-title</code>, <code>modal-body</code> - defines styling for the header text, font size.</li>
                            <li><code>modal-footer</code>  - defines styling for the header text, font size. Aligned right by default. </li>
                            <li><code>role="dialog"</code> - used to give contextual information.</li>
                            <li><code>data-dismiss="modal"</code> - identify what should be dismissed by clicking on this item.</li>
                            <li><code>data-toggle="modal"</code> - identify what should be toggled by clicking on this item.</li>
                            <li><code>data-target="#modalExampleTutorial"</code> - the unique ID associated with the type of item being targetted.</li>
                        </ul>

                    </asp:WizardStep>

                </WizardSteps>


                <StartNavigationTemplate>
                    <div class="col-xs-12 text-center">
                        <asp:Button ID="btnNext" runat="server" Text="Begin" CommandName="MoveNext" CssClass="btn btn-success btn-sm" />
                    </div>
                </StartNavigationTemplate>

                <StepNavigationTemplate>
                    <div class="col-xs-2">
                        <asp:Button ID="btnPrev" runat="server" Text="Previous" CommandName="MovePrevious" CssClass="btn btn-primary btn-sm" />
                    </div>
                    <div class="col-xs-7"></div>
                    <div class="col-xs-3">
                        <asp:Button ID="btnNext" runat="server" Text="Next" CommandName="MoveNext" CssClass="btn btn-success btn-sm" />
                    </div>
                </StepNavigationTemplate>

                <FinishNavigationTemplate>
                    <div class="col-xs-2">
                        <asp:Button ID="btnPrev" runat="server" Text="Previous" CommandName="MovePrevious" CssClass="btn btn-primary btn-sm" />
                    </div>
                    <div class="col-xs-7"></div>
                    <div class="col-xs-3">
                        <asp:Button ID="btnFinish" runat="server" Text="Finish" CssClass="btn btn-success btn-sm" OnClick="btnFinish_Click" />
                    </div>
                </FinishNavigationTemplate>

            </asp:Wizard>

        </div>

        <div class="col-xs-12 col-sm-8 col-md-9">
            <div class="col-xs-12">
                <p class="h3">Code: </p>

                <div style="margin-bottom: 1em;">
                    <asp:TextBox ID="inpt" runat="server" CssClass="form-control" TextMode="MultiLine" onkeyup="reload()" Height="10em" Style="overflow-y: scroll; resize: vertical;"></asp:TextBox>
                </div>

                <p>
                    <a id="lnkReload" class="glyphicon glyphicon-play" onclick="reload();" style="font-size: 2em;"></a>&nbsp;
                    <asp:LinkButton ID="lnk" runat="server" OnClick="btnSave_Click" Style="font-size: 2em;"><span class="glyphicon glyphicon-floppy-disk"></span></asp:LinkButton>&nbsp;
                    <a class="glyphicon glyphicon-new-window" onclick="newWindow();" style="font-size: 2em;"></a>
                    <asp:Button ID="btnSubmit" runat="server" OnClick="btnSubmit_Click" CssClass="btn btn-primary pull-right" Text="Validate HTML" />
                </p>
                <p class="h3">Results:</p>
                <pre id="outpt" style="height: 10em; overflow-y: scroll; resize: vertical;"></pre>

                <p class="h3">Validation Results:</p>
                <asp:TextBox ID="validationResponse" runat="server" TextMode="MultiLine" CssClass="form-control" Height="10em" ReadOnly="true" Style="overflow-y: scroll; resize: vertical;"></asp:TextBox>
                <p>Validation provided by <a href="https://validator.w3.org/">https://validator.w3.org/</a></p>
            </div>
        </div>
    </div>
</asp:Content>
