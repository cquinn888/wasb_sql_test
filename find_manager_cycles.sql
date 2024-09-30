WITH approvers
     AS (SELECT manager.employee_id AS manager,
                emp.employee_id     AS employee
         FROM   employee emp
                LEFT JOIN employee manager
                       ON emp.manager_id = manager.employee_id)
-- query
SELECT manager,
       Array_agg(employee) employees
FROM   approvers
GROUP  BY manager; 