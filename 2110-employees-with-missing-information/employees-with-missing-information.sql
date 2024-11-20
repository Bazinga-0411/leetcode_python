# Write your MySQL query statement below
WITH CET AS(
    SELECT e.employee_id
    FROM Employees e INNER JOIN Salaries s ON e.employee_id = s.employee_id

)

SELECT employee_id
FROM Employees
WHERE employee_id NOT IN(
    SELECT employee_id
    FROM CET
)

UNION  

SELECT employee_id
FROM Salaries
WHERE employee_id NOT IN(
    SELECT employee_id
    FROM CET
)
ORDER BY employee_id ASC;