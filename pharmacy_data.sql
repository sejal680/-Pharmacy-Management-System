INSERT INTO Suppliers (name, contact_number, city) VALUES
('MedLife Pvt Ltd', '9876543210', 'Mumbai'),
('PharmaCare', '9123456789', 'Delhi');

INSERT INTO Medicines (name, supplier_id, price, quantity, expiry_date, reorder_level) VALUES
('Paracetamol', 1, 25.00, 50, '2025-08-01', 15),
('Amoxicillin', 1, 80.00, 20, '2024-12-15', 10),
('Vitamin C', 2, 30.00, 5, '2025-02-10', 10),
('Cough Syrup', 2, 55.00, 8, '2025-03-05', 12);

INSERT INTO Customers (name, phone) VALUES
('Rahul Verma', '9998877766'),
('Priya Singh', '8887766554');

INSERT INTO Orders (customer_id, order_date, total_amount) VALUES
(1, '2025-11-01', 130.00),
(2, '2025-11-03', 160.00);

INSERT INTO Sales (order_id, medicine_id, quantity_sold, amount) VALUES
(1, 1, 2, 50.00),
(1, 3, 1, 30.00),
(2, 2, 2, 160.00);