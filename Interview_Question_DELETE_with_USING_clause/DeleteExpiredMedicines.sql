-- -----------------------------------------------------------------------------
-- DeleteExpiredMedicines.sql
-- -----------------------------------------------------------------------------
-- Author: Manish Sharma
-- YouTube: www.youtube.com/@RebellionRider
-- Instagram: www.instagram.com/RebellionRider
-- -----------------------------------------------------------------------------
-- Description: 
-- This script demonstrates the use of DELETE with the USING clause in PostgreSQL.
-- It deletes expired medicines from the 'medicines' table based on the 
-- expiry date in the 'stock' table.
-- -----------------------------------------------------------------------------

-- Drop existing tables if they exist
DROP TABLE IF EXISTS stock;
DROP TABLE IF EXISTS medicines;

-- Create 'medicines' table
CREATE TABLE medicines (
  medicine_id INT PRIMARY KEY,
  medicine_name VARCHAR(255) NOT NULL,
  MRP DECIMAL(10,2) NOT NULL,
  expiry_date DATE NOT NULL
);

-- Create 'stock' table with a foreign key reference to 'medicines'
CREATE TABLE stock (
  stock_id INT PRIMARY KEY,
  medicine_id INT NOT NULL REFERENCES medicines(medicine_id) ON DELETE CASCADE,
  quantity INT NOT NULL,
  expiry_date DATE NOT NULL
);

-- Truncate tables to remove any existing data
TRUNCATE TABLE medicines;
TRUNCATE TABLE stock;

-- Insert 5 rows into the 'medicines' table
INSERT INTO medicines (medicine_id, medicine_name, MRP, expiry_date)
VALUES
  (1, 'Medicine A', 5.99, DATE '2023-06-30'),
  (2, 'Medicine B', 6.49, DATE '2023-08-15'),
  (3, 'Medicine C', 4.99, DATE '2023-07-10'),
  (4, 'Medicine D', 15.75, DATE '2024-02-28'),
  (5, 'Medicine E', 9.99, DATE '2023-05-20');

-- Insert 5 rows into the 'stock' table
INSERT INTO stock (stock_id, medicine_id, quantity, expiry_date)
VALUES
  (101, 1, 100, DATE '2023-07-15'),
  (102, 2, 50, DATE '2023-09-10'),
  (103, 3, 75, DATE '2023-07-20'),
  (104, 4, 30, DATE '2024-03-10'),
  (105, 5, 80, DATE '2023-06-10');

-- Display contents of 'medicines' and 'stock' tables
SELECT * FROM medicines;
SELECT * FROM stock;

-- Delete expired medicines from 'medicines' table using 'stock' table
DELETE FROM medicines
USING stock
WHERE medicines.medicine_id = stock.medicine_id
  AND stock.expiry_date <= CURRENT_DATE;

