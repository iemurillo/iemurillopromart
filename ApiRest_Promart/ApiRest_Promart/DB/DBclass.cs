using ApiRest_Promart.Entidades;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace ApiRest_Promart.Context
{
    public class DBclass:DbContext
    {
        public DBclass(DbContextOptions<DBclass> options) : base(options)
        { 
        }

        public DbSet<Empleado> Empleados { get; set; }
    }
}
