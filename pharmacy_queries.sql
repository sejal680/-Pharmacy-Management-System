-- Show expired medicines
SELECT name, expiry_date FROM Medicines WHERE expiry_date < CURDATE();

-- Monthly sales by supplier
SELECT s.name AS Supplier,
       DATE_FORMAT(o.order_date, '%Y-%m') AS Month,
       SUM(sa.amount) AS Total_Sales
FROM Sales sa
JOIN Medicines m ON sa.medicine_id = m.medicine_id
JOIN Suppliers s ON m.supplier_id = s.supplier_id
JOIN Orders o ON sa.order_id = o.order_id
GROUP BY s.name, DATE_FORMAT(o.order_date, '%Y-%m')
ORDER BY Month;

-- Medicines below reorder level
SELECT name AS Medicine_Name, quantity, reorder_level
FROM Medicines
WHERE quantity < reorder_level;