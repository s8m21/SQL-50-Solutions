SELECT MAX(num) AS num
FROM MyNumbers
WHERE num in 
(SELECT num 
FROM MyNumbers
GROUP BY num
HAVING COUNT(*) = 1);