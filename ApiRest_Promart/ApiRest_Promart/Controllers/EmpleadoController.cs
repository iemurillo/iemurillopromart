using ApiRest_Promart.Context;
using ApiRest_Promart.Entidades;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace ApiRest_Promart.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class EmpleadoController : ControllerBase
    {
        private readonly DBclass dbc;

        public EmpleadoController(DBclass dbc)
        {
            this.dbc = dbc;
        }

        // GET: api/<EmpleadoController>
        [HttpGet]
        public IEnumerable<Empleado> Get()
        {
            
            return dbc.Empleados.FromSql("sp_consultaempleados").ToList();
        }

        // GET api/<EmpleadoController>/5
        [HttpGet("{id}")]
        public Empleado Get(int id)
        {
            return dbc.Empleados.FirstOrDefault(e => e.id == id); ;
        }

        // POST api/<EmpleadoController>
        [HttpPost]
        public ActionResult Post([FromBody] Empleado empleado)
        {
            try
            {
                dbc.Empleados.Add(empleado);
                dbc.SaveChanges();
                return Ok();
            }
            catch (Exception ex)
            {
                return BadRequest();
            }
        }

        // PUT api/<EmpleadoController>/5
        [HttpPut("{id}")]
        public ActionResult Put(int id, [FromBody] Empleado empleado)
        {
            if (empleado.id == id)
            {
                dbc.Entry(empleado).State = EntityState.Modified;
                dbc.SaveChanges();
                return Ok();
            }
            else return BadRequest();

        }

        // DELETE api/<EmpleadoController>/5
        [HttpDelete("{id}")]
        public ActionResult Delete(int id)
        {
            var empleado = dbc.Empleados.FirstOrDefault(e => e.id == id);

            if(empleado !=null)
            {
                dbc.Empleados.Remove(empleado);
                dbc.SaveChanges();
                return Ok();
            }
            else return BadRequest();
        }
    }
}
