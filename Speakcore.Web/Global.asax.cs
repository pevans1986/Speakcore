using Speakcore.Web.Models;

using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace Speakcore.Web
{
	public class Global : HttpApplication
	{
		void Application_Start(object sender, EventArgs e)
		{
			// Code that runs on application startup
			RouteConfig.RegisterRoutes(RouteTable.Routes);
			BundleConfig.RegisterBundles(BundleTable.Bundles);

			using (var context = new SpeakcoreContext())
			{
				var dbInitializer = new SpeakcoreDatabaseInitializer();
				dbInitializer.InitializeDatabase(context);
				Database.SetInitializer(dbInitializer);
			}
		}
	}
}