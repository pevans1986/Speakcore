<%@ Page Title="CONTACT INFORMATION" Language="C#" MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Speakcore.Web.Register" %>
<%@ Register Src="/Controls/StateSelect.ascx" TagName="StateSelect" TagPrefix="StateList" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<div class="center-block bg-primary">
		<h3><%: Title %></h3>
	</div>

	<div class="panel panel-default center-block">
		<div class="panel-body">
			<h5>Please fill in the following required information</h5>
			<div class="row">
				<div class="col-md-12">
					<asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
						<p class="text-danger">
							<asp:Literal runat="server" ID="FailureText" />
						</p>
					</asp:PlaceHolder>
					<div class="form-group">
						<asp:Label runat="server" AssociatedControlID="FirstName" CssClass="control-label">First Name</asp:Label>
						<asp:TextBox runat="server" ID="FirstName" CssClass="form-control" />
						<asp:RequiredFieldValidator runat="server" ControlToValidate="FirstName" CssClass="text-danger" ErrorMessage="The First Name field is required." />
					</div>
					<div class="form-group">
						<asp:Label runat="server" AssociatedControlID="FirstName" CssClass="control-label">Last Name</asp:Label>
						<asp:TextBox runat="server" ID="LastName" CssClass="form-control" />
						<asp:RequiredFieldValidator runat="server" ControlToValidate="LastName" CssClass="text-danger" ErrorMessage="The Last Name field is required." />
					</div>
					<div class="form-group">
						<asp:Label runat="server" AssociatedControlID="State" CssClass="control-label">State</asp:Label>
						<StateList:StateSelect ID="State" runat="server" />
						<asp:RequiredFieldValidator runat="server" ControlToValidate="State" CssClass="text-danger" ErrorMessage="Please select a state." />
					</div>
					<h5>Please provide your email address.</h5>
					<h5>All meeting correspondence will be sent via email.</h5>
					<div class="form-group">
						<asp:Label runat="server" AssociatedControlID="Email" CssClass="control-label">Email</asp:Label>
						<asp:TextBox runat="server" ID="Email" CssClass="form-control" />
						<asp:RequiredFieldValidator runat="server" TextMode="Email" ControlToValidate="Email" CssClass="text-danger" ErrorMessage="The Email field is required." />
					</div>
					<div class="form-group">
						<asp:Label runat="server" AssociatedControlID="EmailConfirm" CssClass="control-label">Confirm Email</asp:Label>
						<asp:TextBox runat="server" ID="EmailConfirm" TextMode="Email" CssClass="form-control" />
						<asp:RequiredFieldValidator runat="server" ControlToValidate="EmailConfirm" CssClass="text-danger" ErrorMessage="The Email field is required." />
					</div>
					<div class="form-group">
						<div class="col-md-offset-2 col-md-10">
							<div class="checkbox">
								<asp:CheckBox runat="server" ID="SubscribeNewsletter" />
								<asp:Label runat="server" AssociatedControlID="SubscribeNewsletter">Subscribe to Newsletter</asp:Label>
							</div>
						</div>
					</div>
					<div class="form-group">
						<asp:Button runat="server" OnClick="Continue" Text="Continue" CssClass="btn btn-default btn-primary pull-right" />
					</div>
				</div>
			</div>
		</div>
	</div>
</asp:Content>