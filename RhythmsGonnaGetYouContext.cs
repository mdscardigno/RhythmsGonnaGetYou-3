using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Logging;

namespace RhythmsGonnaGetYou
{
    public class RhythmsGonnaGetYouContext : DbContext
    {
        public DbSet<Band> Band { get; set; }

        public DbSet<Album> Album { get; set; }

        public DbSet<Song> Song { get; set; }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            // var loggerFactory = LoggerFactory.Create(builder => builder.AddConsole());
            // optionsBuilder.UseLoggerFactory(loggerFactory);
            optionsBuilder.UseNpgsql("server=localhost;database=RhythmsGonnaGetYouDb");
        }
    }
}