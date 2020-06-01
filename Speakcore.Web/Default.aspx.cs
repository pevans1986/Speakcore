using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Speakcore.Web
{
	public partial class _Default : Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void LogIn(object sender, EventArgs e)
		{
			if (string.Equals(Password.Text, "asdf", StringComparison.Ordinal))
			{
				Response.Redirect("/Register", endResponse: true);
			}
			else
			{
				FailureText.Text = "The entered password is not a valid registration code (enter \"asdf\").";
				ErrorMessage.Visible = true;
			}
		}
	}
}