# 💊 Pharmacy Management System (SQL Project)

### Overview
This project is a SQL-based Pharmacy Management System designed to manage medicines, suppliers, customers, orders, and sales.

### Features
- Tracks medicine expiry and stock levels
- Generates reorder alerts automatically (trigger-based)
- Calculates monthly supplier sales
- Includes analytical queries for business insights

### Files
- pharmacy_schema.sql – table creation script
- pharmacy_data.sql – insert sample data
- pharmacy_queries.sql – core queries
- pharmacy_triggers.sql – trigger creation
- pharmacy_analysis.sql – analytics queries

### How to Run
1. Run `pharmacy_schema.sql` to create the database.
2. Run `pharmacy_data.sql` to insert data.
3. Execute queries from the other files for results.

### GitHub Upload Steps
```bash
git init
git add .
git commit -m "Pharmacy Management System SQL Project"
git branch -M main
git remote add origin https://github.com/<your-username>/Pharmacy-Management-System.git
git push -u origin main
```