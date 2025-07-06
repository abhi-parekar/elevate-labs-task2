USE ecommerce;

INSERT INTO Category (category_name) VALUES ('Electronics'), ('Books'), ('Fashion');

INSERT INTO Product (product_name, price, category_id) VALUES 
('Laptop', 55000.00, 1),
('T-Shirt', 799.00, 3),
('Novel', 399.00, 2),
('Headphones', NULL, 1); -- Handling NULL

INSERT INTO Customer (name, email, phone, address) VALUES 
('Abhishek', 'abhi@example.com', '9876543210', 'Bangalore'),
('Harish', 'harish@example.com', NULL, 'Mysore'); -- NULL phone

INSERT INTO OrderTable (customer_id, order_date, status) VALUES 
(1, '2025-07-06', 'Pending'),
(2, '2025-07-05', 'Shipped');

INSERT INTO Order_Item (order_id, product_id, quantity) VALUES 
(1, 1, 1),
(1, 2, 2),
(2, 3, 1);

INSERT INTO Payment (order_id, payment_date, amount, method) VALUES 
(1, '2025-07-06', 56598.00, 'Credit Card'),
(2, '2025-07-05', 399.00, 'UPI');
UPDATE Product SET price = 499.00 WHERE product_name = 'Novel';
DELETE FROM Order_Item WHERE quantity = 2;
