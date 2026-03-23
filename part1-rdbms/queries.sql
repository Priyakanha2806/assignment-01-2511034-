-- Q1:
SELECT customer_id, SUM(total_amount)
FROM Orders
WHERE customer_id IN (
    SELECT customer_id FROM Customers WHERE city='Mumbai'
)
GROUP BY customer_id;

-- Q2:
SELECT num_items, COUNT(*) 
FROM Orders
GROUP BY num_items
ORDER BY COUNT(*) DESC
LIMIT 3;

-- Q3:
SELECT customer_id, COUNT(*) 
FROM Orders
GROUP BY customer_id;

-- Q4:
SELECT order_id, total_amount
FROM Orders
WHERE total_amount > 10000
ORDER BY total_amount DESC;

-- Q5:
SELECT 'No product data available' AS message;
