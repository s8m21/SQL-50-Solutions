SELECT
   a1.machine_id, ROUND(AVG(a2.timestamp - a1.timestamp), 3) AS processing_time
FROM
   Activity a1
JOIN
   Activity a2
ON
   a1.machine_id = a2.machine_id
WHERE
   a1.activity_type = 'start' AND a2.activity_type = 'end'
GROUP BY 
   machine_id;