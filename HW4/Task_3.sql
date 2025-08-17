-- 1. Создать нового пользователя с простым паролем
CREATE ROLE hr_user WITH LOGIN PASSWORD '123';

-- 2. Предоставить hr_user право SELECT на таблицу Employees
GRANT SELECT ON Employees TO hr_user;

-- 3. Тест: В новой сессии попытаться выполнить SELECT * FROM Employees;
-- Вход под hr_user и выполнение:
-- SELECT * FROM Employees;
-- -- УСПЕХ: Запрос выполняется, доступен только SELECT.

-- 4. Как hr_user попытаться выполнить INSERT (должно завершиться неудачей)
-- Пример:
-- INSERT INTO Employees (FirstName, LastName, Department, Salary) VALUES ('Test', 'User', 'HR', 50000.00);
-- -- ОШИБКА: permission denied for table employees

-- 5. Как администратор предоставить права INSERT и UPDATE на Employees
GRANT INSERT, UPDATE ON Employees TO hr_user;
GRANT USAGE, SELECT ON SEQUENCE employees_employeeid_seq TO hr_user;

-- 6. Тест: Как hr_user попробовать INSERT и UPDATE (теперь должно сработать)
-- Примеры:
-- INSERT INTO Employees (FirstName, LastName, Department, Salary) VALUES ('Test', 'User', 'HR', 50000.00);
-- UPDATE Employees SET Salary = 50500.00 WHERE LastName = 'User';
-- -- УСПЕХ: Теперь обе операции выполняются успешно.