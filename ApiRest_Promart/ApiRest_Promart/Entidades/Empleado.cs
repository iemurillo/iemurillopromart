using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;

namespace ApiRest_Promart.Entidades
{
    public class Empleado
    {
        [Key]
        public int id { get; set; }
        public string nombres { get; set; }
        public int salario { get; set; }
        public int edad { get; set; }
        public string foto { get; set; }
    }
}
