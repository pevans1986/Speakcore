using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace Speakcore.Web.Models
{
	public class AccountModel : Model
	{
		[Required]
		public string FirstName { get; set; }

		[Required]
		public string LastName { get; set; }

		[Required]
		public string State { get; set; }

		[Required]
		public string EmailAddress { get; set; }

		public bool SubscribeToNewsletter { get; set; }
	}
}