using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Speakcore.Web.Models;

namespace Speakcore.Web
{
	public partial class Register : System.Web.UI.Page
	{

		#region Methods

		protected void Continue(object sender, EventArgs e)
		{
			if (IsDataValid())
			{
				var account = CreateAccountModel();
				RegisterAccount(account);
			}
		}

		protected void Page_Load(object sender, EventArgs e)
		{

		}
		protected void RegisterAccount(AccountModel account)
		{
			bool allowRegistration = false;
			using (var context = new SpeakcoreContext())
			{
				if (!context.AccountModels.Any(a => a.EmailAddress == account.EmailAddress))
				{
					allowRegistration = true;
					context.AccountModels.Add(account);
					context.SaveChanges();
				}
				else
				{
					FailureText.Text = "The entered email address has already been registered";
					ErrorMessage.Visible = true;
				}
			}

			if (allowRegistration)
			{
				Response.Redirect($"/{Routes.Confirmation}");
			}
		}

		private AccountModel CreateAccountModel() => new AccountModel()
		{
			FirstName = FirstName.Text,
			LastName = LastName.Text,
			State = State.SelectedValue,
			EmailAddress = Email.Text,
			SubscribeToNewsletter = SubscribeNewsletter.Checked
		};

		private bool IsDataValid()
		{
			if (Email.Text.Equals(EmailConfirm.Text, StringComparison.Ordinal))
			{
				return true;
			}

			FailureText.Text = "The entered email addresses do not match";
			ErrorMessage.Visible = true;

			return false;
		}

		#endregion Methods
	}
}