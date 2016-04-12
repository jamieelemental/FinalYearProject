<%@ Page Title="Manage Account" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Manage.aspx.cs" Inherits="BootstrapLearningExperience.Account.Manage" %>

<asp:Content ContentPlaceHolderID="MainContent" runat="server">

    <div class="container">

        <h2><%: Title %>.</h2>

        <div>
            <asp:PlaceHolder runat="server" ID="successMessage" Visible="false" ViewStateMode="Disabled">
                <p class="text-success"><%: SuccessMessage %></p>
            </asp:PlaceHolder>
        </div>

        <div class="row">
            <div class="col-xs-12">
                <h4>Change your account settings</h4>
                <hr />

                <div class="col-xs-1 text-right bold">
                    <p>
                        <strong>Password:</strong>
                    </p>
                    <p>
                        <strong>Rank:</strong>
                    </p>
                </div>
                <div class="col-xs-11">
                    <p>
                        <asp:HyperLink NavigateUrl="/Account/ManagePassword" Text="[Change]" Visible="false" ID="ChangePassword" runat="server" />
                    </p>
                    <p><%= Session["Rank"].ToString() %></p>
                </div>
            </div>

            <asp:Button ID="btnDelete" runat="server" Text="Delete account" CssClass="btn btn-danger" OnClick="btnDelete_Click" />
        </div>
    </div>
</asp:Content>
