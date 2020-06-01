using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;

using Speakcore.Web.Models;

namespace Speakcore.Web
{
	public class Global : HttpApplication
	{
		#region Methods

		private void Application_Start(object sender, EventArgs e)
		{
			RouteConfig.RegisterRoutes(RouteTable.Routes);
			BundleConfig.RegisterBundles(BundleTable.Bundles);

			InitializeDb();
		}

		private void InitializeDb()
		{
			using (var context = new SpeakcoreContext())
			{
				var dbInitializer = new SpeakcoreDatabaseInitializer();
				dbInitializer.InitializeDatabase(context);
				Database.SetInitializer(dbInitializer);
			}
		}

		#endregion Methods
	}
}