<%@ Page Title="Intermediate Guide" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="IOne.aspx.cs" Inherits="BootstrapLearningExperience.IOne" ValidateRequest="false" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <script src="../Scripts/Pagination.js"></script>
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
            // window.alert('reload fire');
        }


        ////Pagination handling
        //var page = 1;
        //var maxPage = 3;
        //var minPage = 1;

        //function paginationNext() {
        //    if (page < maxPage) {
        //        document.getElementById(page).className = "hidden";
        //        page++;
        //        document.getElementById(page).className = "visible";
        //    }
        //}

        //function paginationPrev() {
        //    if (page > minPage) {
        //        document.getElementById(page).className = "hidden";
        //        page--;
        //        document.getElementById(page).className = "visible";
        //    }
        //}


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

        function newWindow() {

            var w = window.open("", '_blank', false);
            w.document.write("<script https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js\"><\/script>\
                <link href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css\" rel=\"stylesheet\">\
                    <script src=\"https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js\"><\/script>\
                <style>.OutLine{ border: 1px solid black;}<\/style>" + document.getElementById("MainContent_inpt").value.trim());
            w.resizeTo(800, 600);
        }
    </script>


    <div class="row" style="max-height: calc(98% - 50px) !important;">

        <%--<div class="col-xs-12 col-sm-4 col-md-3 col-lg-3" style="height: 85vh; overflow-y: scroll;">
            <div class="col-xs-offset-1">  

                <div id="1" class="visible">
                    <p class="h3 text-center">Introduction</p>
                    <p class="h4">Understanding this page</p>
                    <p>
                        To the right we have two boxes. The upper box, 'Code' allows you to enter and modify code yourself!
                        The lower box, 'Results' shows the result of the code in the upper box. We have several buttons on this page:
                    </p>
                    <ul>
                        <li><strong>Run</strong> - if you think the page hasn't updated the code in the lower box, this button will prompt an update.</li>
                        <li><strong>Save</strong> - This option will save you code from this page, until your return.</li>
                        <li><strong>Open in a new window</strong> - Open your code in a seperate window, to test resizing.</li>
                        <li><strong>Next &rarr;</strong> - Move forward a chapter (doesn't affect your code).</li>
                        <li><strong>&larr;</strong> - Move to previous chapter (doesn't affect your code).</li>
                    </ul>
                    <p>
                        If you cant rememeber the Bootstrap classes we have covered already, use the 'cheat sheet' button 
                        in the top navigation bar, to help jog your memory.
                    </p>
                </div>


                <div id="2" class="hidden">
                    <p class="h3 text-center">Chapter 1</p>
                    <p>
                        In the beginner tutorial, we covered the grid. The example we
                        used was a three column layout, that adapted to two columns depending
                        on the screen size. If we remember it used <code>col-md-4</code> and <code>col-sm-6</code>.
                        Click the button below to bring back the code.
                    </p>
                    <p>NOTE: this will replace your code.</p>
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
                </div>


                <div id="3" class="hidden">
                    <p class="h3 text-center">Chapter 2</p>
                    <p class="h4">Re-ordering Columns</p>
                    <p>
                        Now we have mastered column sizes, and indentation (even on multiple devices), we now look at re-ordering the columns. Reload the
                        example code again.
                    </p>
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

                </div>

                <div id="4" class="hidden">
                    <p class="h3 text-center">Chapter 3</p>
                    <p class="h4">Interactivity</p>
                    <p>
                        Now we have mastered column sizes, and indentation (even on multiple devices), we now look at re-ordering the columns. Reload the
                        example code again.
                    </p>
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

                </div>

                <nav>
                    <ul class="pager">
                        <li class="previous"><a id="prevbtn" onclick="paginationPrev();" class="btn"><span aria-hidden="true">&larr;</span></a></li>
                        <li class="next"><a id="nextbtn" onclick="paginationNext();" class="btn">Next <span aria-hidden="true">&rarr;</span></a></li>
                    </ul>
                </nav>
            </div>

        </div>--%>


        <div class="col-xs-12 col-sm-4 col-md-3 col-lg-3" style="height: 85vh; overflow-y: scroll;">

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
                            <li><strong><span class="glyphicon glyphicon-play" /></strong>- if you think the page hasn't updated the code in the lower box, this button will prompt an update.</li>
                            <li><strong><span class="glyphicon glyphicon-floppy-disk" /></strong>- This option will save you code from this page, until your return.</li>
                            <li><strong><span class="glyphicon glyphicon-new-window" /></strong>- Open your code in a seperate window, to test resizing.</li>
                            <li><strong>Next</strong> - Move forward a chapter (doesn't affect your code).</li>
                            <li><strong>Previous</strong> - Move to previous chapter (doesn't affect your code).</li>
                        </ul>
                        <p>
                            If you cant rememeber the Bootstrap classes we have covered already, use the 'cheat sheet' button 
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
                        <p>NOTE: this will replace your code.</p>
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
                        <p>
                            NOTE: will replace your code.
                        </p>
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
                        <p class="h4"></p>
                        
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
                        <asp:Button ID="btnFinish" runat="server" Text="Finish" CssClass="btn btn-success btn-sm" PostBackUrl="/Advanced/AOne.aspx" />
                    </div>
                </FinishNavigationTemplate>

            </asp:Wizard>

        </div>

        <div class="col-xs-12 col-sm-7 col-md-8 col-lg-8">
            <div class="col-sm-12 col-md-12 col-lg-12">
                <p class="h3">Code: </p>

                <div style="margin-bottom: 1em;">
                    <asp:TextBox ID="inpt" runat="server" CssClass="form-control" TextMode="MultiLine" onkeyup="reload()" Height="10em"></asp:TextBox>
                </div>

                <p>
                    <a id="lnkReload" class="glyphicon glyphicon-play" onclick="reload();" style="font-size: 2em;"></a>&nbsp;
                    <asp:LinkButton ID="lnk" runat="server" OnClick="btnSave_Click" Style="font-size: 2em;" UseSubmitBehaviour="false"><span class="glyphicon glyphicon-floppy-disk" /></asp:LinkButton>
                </p>
                <p class="h3">Results:</p>


                <pre id="outpt" style="min-height: 10em"></pre>
                <p>
                    <a class="glyphicon glyphicon-new-window" onclick="newWindow();" style="font-size: 2em;"></a>
                </p>
            </div>
        </div>
    </div>
</asp:Content>
