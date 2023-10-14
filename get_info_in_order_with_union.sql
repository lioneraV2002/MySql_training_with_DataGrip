#
# SELECT *
# FROM (SELECT job_id,
#              squad_id,
#              SUM(salary) AS salary
#       FROM employees
#       GROUP BY job_id,
#                squad_id
#       ORDER BY job_id, squad_id) AS A1
# UNION ALL
# SELECT *
# FROM (SELECT job_id,
#              NULL,
#              SUM(salary)
#       FROM employees
#       GROUP BY job_id
#       ORDER BY job_id) AS A2
# UNION ALL
# SELECT *
# FROM (SELECT NULL,
#              squad_id,
#              SUM(salary)
#       FROM employees
#       GROUP BY squad_id
#       ORDER BY squad_id) AS A3
# UNION ALL
# SELECT NULL,
#        NULL,
#        SUM(salary)
# FROM employees;


SELECT t.job_id, t.squad_id, t.salary
FROM
(
    (
        SELECT job_id, squad_id, SUM(salary) AS salary, 1 as orders
        FROM employees
        GROUP BY job_id, squad_id

    )
    UNION all
    (
        SELECT job_id, NULL as squad_id, SUM(salary), 2
        FROM employees
        GROUP BY job_id

    )
    UNION all
    (
        SELECT NULL as job_id, squad_id, SUM(salary), 3
        FROM employees
        GROUP BY squad_id

    )
    UNION all
    (
        SELECT NULL as job_id, NULL as squad_id, SUM(salary), 4
        FROM employees
    )
) t
order by t.orders, t.job_id, t.squad_id;


