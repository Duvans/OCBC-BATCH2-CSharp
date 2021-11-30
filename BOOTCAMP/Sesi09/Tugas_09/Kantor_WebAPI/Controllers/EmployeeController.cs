using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Http;
using Kantor_WebAPI.Models;

namespace Kantor_WebAPI.Controllers
{

    [Route("api/[controller]")]
    [ApiController]

    public class EmployeeController : ControllerBase
    {
        private EmployeeContext _context;

        public EmployeeController(EmployeeContext context)
        {
            this._context = context;
        }

        //get: api/user
        [HttpGet(Name = "View All Employees")]
        public ActionResult<IEnumerable<EmployeeItem>> GetEmployeeItems()
        {
            _context = HttpContext.RequestServices.GetService(typeof(EmployeeContext)) as EmployeeContext;
            //return new string()
            return _context.GetAllEmployee();
        }

        //get ; api/user/{id}
        [HttpGet("{id}", Name = "View Employee")]
        public ActionResult<IEnumerable<EmployeeItem>> GetEmployeeItem(String id)
        {
            _context = HttpContext.RequestServices.GetService(typeof(EmployeeContext)) as EmployeeContext;
            return _context.GetEmployee(id);
        }

        //post : api/adduser
        // [HttpPost(Name = "Add Employee")]
        // public ActionResult<IEnumerable<EmployeeItem>> PostEmployeeItem(String nama,String jenis_kelamin,String alamat)
        // {
        //     _context = HttpContext.RequestServices.GetService(typeof(EmployeeContext)) as EmployeeContext;
        //     return _context.PostEmployee(nama,jenis_kelamin,alamat);
        // }
         [HttpPost(Name = "Add Employee")]
        public ActionResult<IEnumerable<EmployeeItem>> PostEmployeeItem(EmployeeItem item)
        {
            _context = HttpContext.RequestServices.GetService(typeof(EmployeeContext)) as EmployeeContext;
            return _context.PostEmployee(item);
        }

        //put : api/updateuser/{id}
        [HttpPut("{id}", Name = "Update Employee")]
        public ActionResult<IEnumerable<EmployeeItem>> PutEmployeeItem(String id,EmployeeItem item)
        {
            _context = HttpContext.RequestServices.GetService(typeof(EmployeeContext)) as EmployeeContext;
            return _context.PutEmployee(id,item);
        }

        //delete : api/deleteuser/{id}
        [HttpDelete("{id}", Name = "Delete Employee")]
        public ActionResult<IEnumerable<EmployeeItem>> DeleteEmployeeItem(String id)
        {
            _context = HttpContext.RequestServices.GetService(typeof(EmployeeContext)) as EmployeeContext;
            return _context.DeleteEmployee(id);
        }
    }
}
