namespace Speakcore.Web.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddSubscriptionOption : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.AccountModels", "SubscribeToNewsletter", c => c.Boolean(nullable: false));
        }
        
        public override void Down()
        {
            DropColumn("dbo.AccountModels", "SubscribeToNewsletter");
        }
    }
}
