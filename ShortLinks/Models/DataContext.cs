using MySql.Data.Entity;
using System.Data.Entity;

namespace ShortLinks.Models
{
    [DbConfigurationType(typeof(MySqlEFConfiguration))]
    public class DataContext: DbContext
    {
        public DataContext(): base("MysqlConnection")
        {
            this.Configuration.ValidateOnSaveEnabled = false;
        }

        public DbSet<ShortLink> ShortLinks { get; set; }
    }
}