using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;

namespace Speakcore.Web
{
	public partial class _Default : Page
	{
		#region Methods

		protected void LogIn(object sender, EventArgs e)
		{
			if (string.Equals(Password.Text, "asdf", StringComparison.Ordinal))
			{
				Response.Redirect($"/{Routes.Registration}", endResponse: true);
			}
			else
			{
				FailureText.Text = "The entered password is not a valid registration code (enter \"asdf\").";
				ErrorMessage.Visible = true;
			}
		}

		protected void Page_Load(object sender, EventArgs e)
		{
		}

		#endregion Methods
	}
}