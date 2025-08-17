-- 1. Найти ProjectName всех проектов, в которых 'Bob Johnson' работал более 150 часов
SELECT DISTINCT p.projectName
FROM projects p
JOIN employeeProjects ep ON p.projectID = ep.projectId
JOIN employees e ON ep.employeeId = e.employeeId
WHERE e.firstName = 'Bob' AND e.lastName = 'Johnson'
AND ep.hoursWorked > 150;

-- 2. Увеличить Budget всех проектов на 10%, если к ним назначен хотя бы один сотрудник из отдела 'IT'
UPDATE projects p
SET budget = budget * 1.10
WHERE EXISTS (
    SELECT 1
    FROM employeeProjects ep
    JOIN employees e ON ep.employeeId = e.employeeId
    WHERE ep.projectId = p.projectId
    AND e.department = 'IT'
);

-- 3. Для любого проекта, у которого еще нет EndDate (EndDate IS NULL), установить EndDate на один год позже StartDate
UPDATE projects
SET endDate = startDate + INTERVAL '1 year'
WHERE endDate IS NULL;

-- 4. Вставить нового сотрудника и немедленно назначить его на проект 'Website Redesign' с 80 отработанными часами в одной транзакции
DO $$
DECLARE
    new_employee_id INT;
    project_id INT;
BEGIN
    INSERT INTO employees (firstName, lastName, department, salary, email)
    VALUES ('New', 'Employee', 'IT', 60000.00, 'new.employee@example.com')
    RETURNING EmployeeID INTO new_employee_id;

    SELECT projectID INTO project_id
    FROM projects
    WHERE projectName = 'Website Redesign';

    INSERT INTO employeeProjects (employeeID, projectID, hoursWorked)
    VALUES (new_employee_id, project_id, 80);
END $$;

-- Проверка результатов:
-- 1.
SELECT DISTINCT p.projectName
FROM projects p
JOIN employeeProjects ep ON p.projectID = ep.projectID
JOIN employees e ON ep.employeeid  = e.employeeID
WHERE e.firstName = 'Bob' AND e.lastName = 'Johnson'
AND ep.hoursWorked > 150;

-- 2.
SELECT * FROM projects;

-- 3.
SELECT projectID, projectName, startDate, endDate FROM projects;

-- 4.
SELECT * FROM employees WHERE lastName = 'employee';
SELECT * FROM employeeProjects WHERE employeeID = (SELECT employeeID FROM employees WHERE lastName = 'Employee');
