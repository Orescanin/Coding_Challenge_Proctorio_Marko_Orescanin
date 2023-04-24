/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
INSERT INTO SalaryHistory (id, employeeId, previousSalary, modificationDate)
VALUES 
    (NEWID(), (SELECT id FROM employees WHERE name = 'Alice'), 50000.00, '2022-01-01'),
    (NEWID(), (SELECT id FROM employees WHERE name = 'Alice'), 55000.00, '2022-04-01'),
    (NEWID(), (SELECT id FROM employees WHERE name = 'Bob'), 60000.00, '2022-01-01'),
    (NEWID(), (SELECT id FROM employees WHERE name = 'Bob'), 65000.00, '2022-04-01'),
    (NEWID(), (SELECT id FROM employees WHERE name = 'Charlie'), 70000.00, '2022-01-01'),
    (NEWID(), (SELECT id FROM employees WHERE name = 'Charlie'), 75000.00, '2022-04-01'),
    (NEWID(), (SELECT id FROM employees WHERE name = 'Dave'), 55000.00, '2022-01-01'),
    (NEWID(), (SELECT id FROM employees WHERE name = 'Dave'), 60000.00, '2022-08-01'),
    (NEWID(), (SELECT id FROM employees WHERE name = 'Eve'), 65000.00, '2022-01-01'),
    (NEWID(), (SELECT id FROM employees WHERE name = 'Eve'), 70000.00, '2022-09-01'),
    (NEWID(), (SELECT id FROM employees WHERE name = 'Frank'), 75000.00, '2022-01-01'),
    (NEWID(), (SELECT id FROM employees WHERE name = 'Frank'), 80000.00, '2022-07-01'),
    (NEWID(), (SELECT id FROM employees WHERE name = 'Grace'), 80000.00, '2022-01-01'),
    (NEWID(), (SELECT id FROM employees WHERE name = 'Grace'), 85000.00, '2022-06-01'),
    (NEWID(), (SELECT id FROM employees WHERE name = 'Harry'), 90000.00, '2022-01-01'),
    (NEWID(), (SELECT id FROM employees WHERE name = 'Harry'), 95000.00, '2022-04-01'),
    (NEWID(), (SELECT id FROM employees WHERE name = 'Ivy'), 85000.00, '2022-01-01'),
    (NEWID(), (SELECT id FROM employees WHERE name = 'Ivy'), 90000,'2022-05-01');