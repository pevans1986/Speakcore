using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace Speakcore.Web.Models
{
	public class SpeakcoreContext : DbContext
	{
		public SpeakcoreContext() : base("Speakcore")
		{

		}

		public DbSet<AccountModel> AccountModels { get; set; }
	}
}