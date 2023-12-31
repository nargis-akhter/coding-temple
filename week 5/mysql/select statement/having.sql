/*
-frequently implemented with group by
-needs to be inserted between group by and order by clauses
-after having, you can have a condition with an aggregate function
-where cannot use aggregate functions within its conditions
*/

SELECT 
    first_name, COUNT(first_name) AS names_count
FROM
    employees
GROUP BY first_name
HAVING
    COUNT(first_name) > 250
ORDER BY first_name;


SELECT 
    *, AVG(salary)
FROM
    salaries
GROUP BY emp_no
HAVING AVG(salary) > 120000
ORDER BY emp_no;


