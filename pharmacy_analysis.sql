-- Top selling medicines
SELECT m.name, SUM(sa.quantity_sold) AS Total_Sold
FROM Sales sa
JOIN Medicines m ON sa.medicine_id = m.medicine_id
GROUP BY m.name
ORDER BY Total_Sold DESC
LIMIT 5;

-- Supplier with highest revenue
SELECT s.name, SUM(sa.amount) AS Revenue
FROM Sales sa
JOIN Medicines m ON sa.medicine_id = m.medicine_id
JOIN Suppliers s ON m.supplier_id = s.supplier_id
GROUP BY s.name
ORDER BY Revenue DESC
LIMIT 1;