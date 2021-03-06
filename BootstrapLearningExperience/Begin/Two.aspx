﻿<%@ Page Title="Chapter 2" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">
        <div class="row">
            <p class="h2 text-center">Chapter 2</p>
        </div>

        <div class="row">

            <div class="col-xs-1 col-sm-2 col-md-3"></div>

            <div class="col-xs-10 col-sm-8 col-md-6">

                <div class="progress">
                    <div class="progress-bar" role="progressbar" aria-valuenow="16" aria-valuemin="0" aria-valuemax="100" style="width: 16%">
                        <span>16%</span>
                    </div>
                </div>
            </div>

            <div class="col-xs-1 col-sm-2 col-md-3"></div>

        </div>

        <div class="row">

            <div class="hidden-xs col-sm-1"></div>
            <div class="col-xs-12 col-sm-10">
                <p class="h3">Getting Bootstrap</p>
                <p>Bootstrap can be downloaded for free from here: <a href="http://http://getbootstrap.com/">http://getbootstrap.com/</a></p>
                <p>This tutorial will be using Bootstrap V3.3.6</p>
                <p class="h3">Integrating into your website</p>
                <p>
                    Once you have downloaded the Bootstrap framework and extracted it, you should have the files look like this:
                    <br />
                </p>


                <p>|-css                                       </p>

                <ul style="list-style-type: none;">
                    <li>|-bootstrap.css.map           </li>
                    <li>|-bootstrap.min               </li>
                    <li>|-bootstrap.min.css.map       </li>
                    <li>|-bootstrap-theme.css         </li>
                    <li>|-bootstrap.css               </li>
                    <li>|-bootstrap-theme.css.map     </li>
                    <li>|-bootstrap-theme.min         </li>
                    <li>|-bootstrap-theme.min.css.map </li>
                </ul>

                <p>|-fonts                                     </p>
                <ul style="list-style-type: none;">
                    <li>|-glyphicons-halflings-regular.eot   </li>
                    <li>|-glyphicons-halflings-regular.svg   </li>
                    <li>|-glyphicons-halflings-regular.ttf   </li>
                    <li>|-glyphicons-halflings-regular.woff  </li>
                    <li>|-glyphicons-halflings-regular.woff2 </li>
                </ul>

                <p>|-js       </p>
                <ul style="list-style-type: none;">
                    <li>|-bootstrap.js     </li>
                    <li>|-bootstrap.min.js </li>
                    <li>|-npm.js           </li>
                </ul>

                <p>Copy the three folders: css, fonts, js to your website root directory. </p>

                <p>For each page you wish to use Bootstrap with, place the following in the <code>&lt;head&gt;</code> tag:</p>

                <ul style="list-style-type: none;">
                    <li style="word-wrap: break-word;">
                        <code>&lt;script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"&gt;&lt;/script&gt;</code>
                    </li>

                    <li>
                        <code>&lt;script src="js/bootstrap.min.js"&gt;&lt;/script&gt;</code>
                    </li>

                    <li>
                        <code>&lt;link href="css/bootstrap.min.css" rel="stylesheet"&gt;</code>
                    </li>
                </ul>

                <p>
                    These lines link the bootstrap files with each webpage. The first line of code links your webpage with Google's JQuery. This is important for some of the functionality
                    elements of Bootstrap (which rely on JQuery).
                </p>

                <p>
                    Once we have Bootstrap hooked up to our website, we can make use of the following CSS classes:
                    <code>col-sm-1</code>, <code>text-center</code>, <code>hidden-lg</code>, <code>btn-primary</code>, <code>table-bordered</code>.
                    By the end of all three tutorials, you'll know how all these classes work, their different variants and hopefully many more.
                </p>

                <p class="h3">Quick Start Alternative</p>
                <p>
                    If you just want to get started quickly, you can add these three lines of code to each of your web pages:
                </p>

                <ul style="list-style-type: none;">
                    <li style="word-wrap: break-word;">
                        <code>&lt;script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"&gt;&lt;/script&gt;</code>
                    </li>

                    <li style="word-wrap: break-word;">
                        <code>&lt;script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"&gt;&lt;/script&gt;</code>
                    </li>

                    <li style="word-wrap: break-word;">
                        <code>&lt;link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet" /&gt;</code>
                    </li>
                </ul>

                <p>This will link the same three files from the download, but in this method, they are hosted online and don't require handling files.</p>
                <br />
            </div>
            <div class="hidden-xs col-sm-1"></div>

        </div>

        <div class="row">
            <div class="col-xs-6 text-center">
                <input type="button" value="Previous" class="btn btn-primary" onclick="window.location = '/Begin/One.aspx'" />
            </div>
            <div class="col-xs-6 text-center">
                <input type="button" value="Next" class="btn btn-success" onclick="window.location = '/Begin/Three.aspx'" />
            </div>
        </div>
    </div>
</asp:Content>
