SELECT c.customer_id
FROM Customer c
GROUP BY 1
HAVING COUNT(DISTINCT product_key) = (SELECT COUNT(*) FROM Product);