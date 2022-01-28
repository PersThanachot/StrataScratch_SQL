
--Find the average total compensation based on employee titles and gender. Total 
--compensation is calculated by adding both the salary and bonus of each employee. 
--However, not every employee receives a bonus so disregard employees without bonuses 
--in your calculation. 
--Output the employee title, gender (i.e., sex), along with the average total compensation.

---------------------------------------------------------------------------------------------

SELECT
    a.employee_title,
    a.sex,
    avg(a.salary + b.total_bonus) AS avg_salary
FROM sf_employee a
INNER JOIN 
    (SELECT 
        worker_ref_id,
        sum(bonus) AS total_bonus
     FROM sf_bonus
     GROUP BY worker_ref_id) b
ON a.id = b.worker_ref_id
GROUP BY
    a.employee_title,
    a.sex
