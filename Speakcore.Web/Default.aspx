<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Speakcore.Web._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="center-block bg-primary">
        <h3>LOGIN</h3>
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
                        <label for="Password">Password:</label>
                        <input type="password" class="form-control" id="Password" placeholder="Password" />
                    </div>
                    <div class="form-group">
                        <%--<div class="col-md-offset-2 col-md-10">--%>
                            <%--<asp:Button runat="server" OnClick="LogIn" Text="Log in" CssClass="btn btn-default" />--%>
                            <button class="btn btn-default btn-primary pull-right">LOGIN</button>
                        <%--</div>--%>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
