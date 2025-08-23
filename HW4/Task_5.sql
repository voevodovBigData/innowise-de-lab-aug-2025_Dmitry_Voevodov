--1. Функция: Создать функцию PostgreSQL с именем 
--CalculateAnnualBonus, которая принимает employee_id и 
--Salary  в качестве входных данных и возвращает рассчитанную 
--сумму бонуса (10 % от Salary) для этого сотрудника. Используйте 
--PL/pgSQL для тела функции.
CREATE OR REPLACE FUNCTION CalculateAnnualBonus(employee_id INT, salary NUMERIC)
RETURNS NUMERIC AS $$
BEGIN
    RETURN salary * 0.10;
END;
$$ LANGUAGE plpgsql;

-- 2. Использование функции в SELECT для каждого сотрудника
--Использовать эту функцию в операторе SELECT, чтобы увидеть 
--потенциальный бонус для каждого сотрудника.
SELECT
    employeeId,
    firstName,
    lastName,
    salary,
    CalculateAnnualBonus(employeeId, salary) AS AnnualBonus
FROM employees;

-- 3. Представление IT_Department_View
--Представление (View): Создать представление с именем 
--IT_Department_View, которое показывает EmployeeID, 
--FirstName, LastName и Salary только для сотрудников из отдела 
--'IT'.
CREATE OR REPLACE VIEW IT_Department_View AS
SELECT
    employeeID,
    firstName,
    lastName,
    salary
FROM employees
WHERE department = 'IT';

-- 4. Запрос к представлению IT_Department_View
--Выбрать данные из вашего представления IT_Department_View.
SELECT * FROM IT_Department_View;
