using Speakcore.Web.Models;

using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Speakcore.Web
{
	public partial class Register : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void Continue(object sender, EventArgs e)
		{
			if (Email.Text.Equals(EmailConfirm.Text, StringComparison.Ordinal))
			{
				var account = new AccountModel()
				{
					FirstName = FirstName.Text,
					LastName = LastName.Text,
					State = State.SelectedValue,
					EmailAddress = Email.Text,
					SubscribeToNewsletter = SubscribeNewsletter.Checked
				};

				DoRegistration(account);
			}
			else
			{
				FailureText.Text = "The entered email addresses do not match";
				ErrorMessage.Visible = true;
			}
		}

		protected void DoRegistration(AccountModel account)
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
				Response.Redirect("/Confirmation");
			}
		}
	}
}