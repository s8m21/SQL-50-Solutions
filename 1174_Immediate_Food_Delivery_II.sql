SELECT ROUND(AVG(Delivery.order_date = customer_pref_delivery_date) * 100, 2) AS   immediate_percentage
FROM Delivery
WHERE (customer_id, order_date) IN