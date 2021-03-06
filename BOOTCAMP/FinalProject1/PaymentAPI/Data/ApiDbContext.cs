using Microsoft.EntityFrameworkCore;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using PaymentAPI.Models;

namespace PaymentAPI.Data
{
    public class ApiDbContext : IdentityDbContext
    {
        public virtual DbSet<ItemData> Items { get; set; }

        public virtual DbSet<RefreshToken> RefreshTokens { get; set; }
        public ApiDbContext(DbContextOptions<ApiDbContext> options) : base(options)
        {

        }
    }
}