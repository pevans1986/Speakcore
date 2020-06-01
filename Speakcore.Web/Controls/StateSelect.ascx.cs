using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Speakcore.Web.Controls
{
	[ValidationProperty(nameof(SelectedValue))]
	public partial class StateSelect : System.Web.UI.UserControl
	{
		public string SelectedValue => StateList.SelectedValue;

		protected void Page_Load(object sender, EventArgs e)
		{

		}
	}
}