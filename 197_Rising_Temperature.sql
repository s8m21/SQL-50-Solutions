SELECT
   w1.id
FROM
   Weather w1
JOIN
   Weather w2
WHERE 
   DATEDIFF(w1.recordDATE, w2.recordDATE) = 1
AND
   w1.temperature > w2.temperature;