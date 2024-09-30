WITH expenses
     AS (SELECT employee_id,
                unit_price,
                quantity,
                unit_price * quantity AS total_expensed_amount
         FROM   expense),
     totals
     AS (SELECT employee_id,
                Sum(total_expensed_amount) AS total
         FROM   expenses
         GROUP  BY employee_id)
SELECT employee.employee_id,
       employee.first_name
       || ' '
       || employee.last_name AS employee_name,
       employee.manager_id   AS manager_id,
       manager.first_name
       || ' '
       || manager.last_name  AS manager_name,
       totals.total
FROM   totals
       INNER JOIN employee
               ON totals.employee_id = employee.employee_id
       INNER JOIN employee manager
               ON employee.manager_id = manager.employee_id
WHERE  total > 1000 