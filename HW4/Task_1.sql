Задание 1: DML 
● Цель: Практика базовой вставки, выборки, простого обновления и удаления 
данных. 
● Действия: 
1. Вставить двух новых сотрудников в таблицу Employees. 
2. Выбрать всех сотрудников из таблицы Employees. 
3. Выбрать только FirstName и LastName сотрудников из отдела 'IT'. 
4. Обновить Salary 'Alice Smith' до 65000.00. 
5. Удалить сотрудника, чья LastName — 'Prince'. 
6. Проверить все изменения, используя SELECT * FROM Employees;. 


-- 1. Вставить двух новых сотрудников в таблицу Employees
INSERT INTO employees (firstName, lastName, department, salary) 
VALUES 
('Steven', 'Gerrard', 'Sport', 120000),
('Al', 'Yankovic', 'Music', 75000);

-- 2. Выбрать всех сотрудников из таблицы Employees
SELECT * FROM employees;

-- 3. Выбрать только FirstName и LastName сотрудников из отдела 'IT'
SELECT firstName, lastName 
FROM Employees 
WHERE Department = 'IT';

-- 4. Обновить Salary 'Alice Smith' до 65000.00
UPDATE employees 
SET salary = 65000.00 
WHERE firstName = 'Alice' AND lastName = 'Smith';

-- 5. Удалить сотрудника, чья LastName — 'Prince'
--Предварительная подготовка(иначе SQL Error [23503]: ОШИБКА: UPDATE или DELETE в таблице "employees" нарушает ограничение внешнего ключа "employeeprojects_employeeid_fkey" таблицы "employeeprojects")
ALTER TABLE employeeProjects DROP CONSTRAINT employeeprojects_employeeid_fkey;
ALTER TABLE employeeProjects ADD CONSTRAINT employeeprojects_employeeid_fkey
FOREIGN KEY (employeeId) REFERENCES Employees(employeeId) ON DELETE CASCADE;

DELETE  FROM employees 
WHERE lastName = 'Prince';

-- 6. Проверить все изменения
SELECT * FROM Employees;
