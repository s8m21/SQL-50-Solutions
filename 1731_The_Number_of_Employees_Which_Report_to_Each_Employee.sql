SELECT e.employee_id, e.name,
COUNT(DISTINCT r.employee_id) AS reports_count,
ROUND(AVG(r.age)) AS average_age
FROM Employees e
JOIN Employees r ON  e.employee_id = r.reports_to
GROUP BY 1, 2
ORDER BY 1;