-- 1. Увеличить Salary всех сотрудников в отделе 'HR' на 10%
UPDATE employees
SET salary = salary * 1.10
WHERE department = 'HR';

-- 2. Обновить Department любого сотрудника с Salary выше 70000.00 на 'Senior IT'
UPDATE employees
SET department = 'Senior IT'
WHERE salary > 70000.00;

-- 3. Удалить всех сотрудников, которые не назначены ни на один проект
DELETE FROM employees e
WHERE NOT EXISTS (
    SELECT 1
    FROM employeeProjects ep
    WHERE ep.employeeID = e.employeeId
);

-- 4. Вставить новый проект и назначить на него двух сотрудников в одном блоке BEGIN/COMMIT
BEGIN;

INSERT INTO projects (projectid, projectName, budget, startDate, endDate)
VALUES (4, 'New Mega Project X', 120000.00, '2025-08-17', '2026-02-28');


INSERT INTO employeeProjects (employeeID, projectId, hoursWorked)
VALUES 
    (1, 4, 100),  
    (2, 4, 120);  

COMMIT;


