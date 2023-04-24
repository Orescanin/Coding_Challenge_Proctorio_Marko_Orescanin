CREATE TABLE [dbo].[SalaryHistory]
(
	id UNIQUEIDENTIFIER NOT NULL,
	employeeId UNIQUEIDENTIFIER NOT NULL,
	CONSTRAINT fk_employee_id FOREIGN KEY (employeeId) REFERENCES Employees (id),
	previousSalary DECIMAL(10,2),
	modificationDate date,

	
)
