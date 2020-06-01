<%@ Page Title="COMPLETE" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="Confirmation.aspx.cs" Inherits="Speakcore.Web.Confirmation" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div class="center-block bg-primary">
        <h3><%: Title %></h3>
    </div>

    <div class="panel panel-default center-block">
        <div class="panel-body">
            <h3>Thank you for registering!</h3>
            <div class="row">
                <div class="col-md-12">
                    <p>You should receive a confirmation email momentarily containing additional details.</p>
                </div>
            </div>
        </div>
    </div>
</asp:Content>