using Dapper;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.Extensions.Configuration;

namespace WebApplication1.Services
{
    public class Service
    {


        private static Service instance = null;
        private SqlConnection connection;
        private readonly IConfiguration _config;


        public static Service getService()
        {
            if (instance == null)
                instance = new Service();
            return instance;
        }

        public async Task<List<Model.EmployeeSalaryResult>> getEmployees()
        {
            connection.Open();
            string query = "SELECT e.name,s.previousSalary,s.modificationDate from dbo.employees e join dbo.SalaryHistory s on e.Id=s.employeeId";
            var employees = await connection.QueryAsync<Model.EmployeeSalaryResult>(query);
            connection.Close();
            return (List<Model.EmployeeSalaryResult>)employees;
        }

        public Service()
        {
            var builder = new ConfigurationBuilder()
           .AddJsonFile("appsettings.json", optional: true, reloadOnChange: true);

            _config = builder.Build();
            //string connectionString = "Data Source=(localdb)\\ProjectsV13;Initial Catalog=test1;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            string connectionString = _config.GetConnectionString("DefaultConnection");
            connection = new SqlConnection(connectionString);
        }




    }
}
