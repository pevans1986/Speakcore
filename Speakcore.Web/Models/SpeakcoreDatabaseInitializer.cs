using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Speakcore.Web.Models
{
	public class SpeakcoreDatabaseInitializer : CreateDatabaseIfNotExists<SpeakcoreContext>
	{
	}
}