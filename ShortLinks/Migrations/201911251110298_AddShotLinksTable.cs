namespace ShortLinks.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddShotLinksTable : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.ShortLinks",
                c => new
                    {
                        ShortLinkID = c.Int(nullable: false, identity: true),
                        LongUrl = c.String(unicode: false),
                        ShortUrl = c.String(unicode: false),
                        RedirectCount = c.Int(nullable: false),
                        CreateDateTime = c.DateTime(nullable: false, precision: 0),
                    })
                .PrimaryKey(t => t.ShortLinkID);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.ShortLinks");
        }
    }
}
