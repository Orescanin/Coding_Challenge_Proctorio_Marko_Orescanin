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
INSERT INTO dbo.employees (id, name, salary)
VALUES 
    (NEWID(), 'Alice', 50000.00),
    (NEWID(), 'Bob', 60000.00),
    (NEWID(), 'Charlie', 70000.00),
    (NEWID(), 'Dave', 55000.00),
    (NEWID(), 'Eve', 65000.00),
    (NEWID(), 'Frank', 75000.00),
    (NEWID(), 'Grace', 80000.00),
    (NEWID(), 'Harry', 90000.00),
    (NEWID(), 'Ivy', 85000.00),
    (NEWID(), 'John', 95000.00);

