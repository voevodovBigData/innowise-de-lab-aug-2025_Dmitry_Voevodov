Задание 2: DDL 
● Цель: Практика создания и изменения структуры таблиц. 
● Действия: 
1. Создать новую таблицу с именем Departments со столбцами: 
DepartmentID (SERIAL PRIMARY KEY), DepartmentName 
(VARCHAR(50), UNIQUE, NOT NULL), Location (VARCHAR(50)). 
2. Изменить таблицу Employees, добавив новый столбец с именем 
Email (VARCHAR(100)). 
3. Добавить ограничение UNIQUE к столбцу Email в таблице 
Employees, предварительно заполнив любыми значениями 
4. Переименовать столбец Location в таблице Departments в 
OfficeLocation.


-- 1. Создать новую таблицу departments
CREATE TABLE departments (
    department_Id SERIAL PRIMARY KEY,
    department_name VARCHAR(50) UNIQUE NOT NULL,
    location VARCHAR(50)
);

-- 2. Изменить таблицу employees, добавив новый столбец email
ALTER TABLE employees
ADD COLUMN email VARCHAR(100);

-- 3. Заполнить столбец email любыми значениями (имя + домен)
UPDATE employees
SET email = CONCAT(LOWER(firstName), '.', LOWER(lastName), '@gmail.com');

-- Добавить ограничение UNIQUE к столбцу email в таблице employees
ALTER TABLE employees
ADD CONSTRAINT unique_email UNIQUE(email);

-- 4. Переименовать столбец location в таблице departments в office_location
ALTER TABLE departments
RENAME COLUMN location TO office_location;
