<%@ Page Title="LOGIN" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Speakcore.Web._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="center-block bg-primary">
        <h3><%: Title %></h3>
    </div>

    <div class="panel panel-default center-block">
        <div class="panel-body">
            <h5>Please enter the case sensitive password from your official invitation</h5>
            <div class="row">
                <div class="col-md-12">
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="control-label">Password</asp:Label>
                        <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="The password field is required." />
                    </div>
                    <div class="form-group">
                        <asp:Button runat="server" OnClick="LogIn" Text="Login" CssClass="btn btn-default btn-primary pull-right" />
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
