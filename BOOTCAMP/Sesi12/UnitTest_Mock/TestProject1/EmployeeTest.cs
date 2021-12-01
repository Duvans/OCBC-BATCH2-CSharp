using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xunit;
using Moq;
using UnitTest_Mock.Controllers;
using UnitTest_Mock.Models;
using UnitTest_Mock.Services;


namespace TestProject1
{
    public class EmployeeTest
    {
        #region Property
        Mock<IEmployeeService> mock = new Mock<IEmployeeService>();
        #endregion

        [Fact]
        public async void GetEmployeeById()
        {
            mock.Setup(p => p.GetEmployeebyId(1)).ReturnsAsync("Hans");
            EmployeeController emp = new EmployeeController(mock.Object);
            string result = await emp.GetEmployeeById(1);
            Assert.Equal("Hans", result);
        }

        [Fact]
        public async void GetEmployeeDetails()
        {
            var employeeDTO = new Employee()
            {
                Id = 1,
                Name = "Hans",
                Desgination = "Asd"
            };
            mock.Setup(p => p.GetEmployeeDetails(1)).ReturnsAsync(employeeDTO);
            EmployeeController emp = new EmployeeController(mock.Object);
            var result = await emp.GetEmployeeDetails(1);
            Assert.True(employeeDTO.Equals(result));
        }
    }
}