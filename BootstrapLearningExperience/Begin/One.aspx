﻿<%@ Page Title="Chapter 1" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

        <div class="row">
            <p class="h2 text-center">Chapter 1</p>
        </div>

        <div class="row">

            <div class="col-xs-1 col-sm-2 col-md-3"></div>

            <div class="col-xs-10 col-sm-8 col-md-6">


            </div>
            <div class="col-xs-1 col-sm-2 col-md-3"></div>
        </div>



        <div class="row">

            <div class="hidden-xs col-sm-1"></div>
            <div class="col-xs-12 col-sm-10">

                <p class="h3">What is Bootstrap?</p>
                <p>
                    Bootstrap is a collection of files, CSS (cascading style sheets) and JavaScript, that you can include as part of a website, to help
                    create a structured layout and add some functionality. Bootstrap has many useful features, and is quite notable for including tools
                    to make your website responsive, resizing items to fit different screen sizes. 
                </p>
            </div>
            <div class="hidden-xs col-sm-1"></div>

        </div>


        <div class="row">
            <div class="col-xs-12 text-center">
                <p><input type="button" value="Next" class="btn btn-success" onclick="window.location = '/Begin/Two.aspx'" /></p>
            </div>
        </div>

    </div>
</asp:Content>
