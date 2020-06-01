<%@ Page Title="CONTACT INFORMATION" Language="C#" MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Speakcore.Web.Register" %>

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
						<asp:DropDownList runat="server" ID="State" CssClass="dropdown form-control">
							<asp:ListItem Value="AL">Alabama</asp:ListItem>
							<asp:ListItem Value="AK">Alaska</asp:ListItem>
							<asp:ListItem Value="AZ">Arizona</asp:ListItem>
							<asp:ListItem Value="AR">Arkansas</asp:ListItem>
							<asp:ListItem Value="CA">California</asp:ListItem>
							<asp:ListItem Value="CO">Colorado</asp:ListItem>
							<asp:ListItem Value="CT">Connecticut</asp:ListItem>
							<asp:ListItem Value="DC">District of Columbia</asp:ListItem>
							<asp:ListItem Value="DE">Delaware</asp:ListItem>
							<asp:ListItem Value="FL">Florida</asp:ListItem>
							<asp:ListItem Value="GA">Georgia</asp:ListItem>
							<asp:ListItem Value="HI">Hawaii</asp:ListItem>
							<asp:ListItem Value="ID">Idaho</asp:ListItem>
							<asp:ListItem Value="IL">Illinois</asp:ListItem>
							<asp:ListItem Value="IN">Indiana</asp:ListItem>
							<asp:ListItem Value="IA">Iowa</asp:ListItem>
							<asp:ListItem Value="KS">Kansas</asp:ListItem>
							<asp:ListItem Value="KY">Kentucky</asp:ListItem>
							<asp:ListItem Value="LA">Louisiana</asp:ListItem>
							<asp:ListItem Value="ME">Maine</asp:ListItem>
							<asp:ListItem Value="MD">Maryland</asp:ListItem>
							<asp:ListItem Value="MA">Massachusetts</asp:ListItem>
							<asp:ListItem Value="MI">Michigan</asp:ListItem>
							<asp:ListItem Value="MN">Minnesota</asp:ListItem>
							<asp:ListItem Value="MS">Mississippi</asp:ListItem>
							<asp:ListItem Value="MO">Missouri</asp:ListItem>
							<asp:ListItem Value="MT">Montana</asp:ListItem>
							<asp:ListItem Value="NE">Nebraska</asp:ListItem>
							<asp:ListItem Value="NV">Nevada</asp:ListItem>
							<asp:ListItem Value="NH">New Hampshire</asp:ListItem>
							<asp:ListItem Value="NJ">New Jersey</asp:ListItem>
							<asp:ListItem Value="NM">New Mexico</asp:ListItem>
							<asp:ListItem Value="NY">New York</asp:ListItem>
							<asp:ListItem Value="NC">North Carolina</asp:ListItem>
							<asp:ListItem Value="ND">North Dakota</asp:ListItem>
							<asp:ListItem Value="OH">Ohio</asp:ListItem>
							<asp:ListItem Value="OK">Oklahoma</asp:ListItem>
							<asp:ListItem Value="OR">Oregon</asp:ListItem>
							<asp:ListItem Value="PA">Pennsylvania</asp:ListItem>
							<asp:ListItem Value="RI">Rhode Island</asp:ListItem>
							<asp:ListItem Value="SC">South Carolina</asp:ListItem>
							<asp:ListItem Value="SD">South Dakota</asp:ListItem>
							<asp:ListItem Value="TN">Tennessee</asp:ListItem>
							<asp:ListItem Value="TX">Texas</asp:ListItem>
							<asp:ListItem Value="UT">Utah</asp:ListItem>
							<asp:ListItem Value="VT">Vermont</asp:ListItem>
							<asp:ListItem Value="VA">Virginia</asp:ListItem>
							<asp:ListItem Value="WA">Washington</asp:ListItem>
							<asp:ListItem Value="WV">West Virginia</asp:ListItem>
							<asp:ListItem Value="WI">Wisconsin</asp:ListItem>
							<asp:ListItem Value="WY">Wyoming</asp:ListItem>
						</asp:DropDownList>
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