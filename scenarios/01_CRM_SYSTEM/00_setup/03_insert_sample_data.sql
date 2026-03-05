-- =============================================
-- Insert Sample Data
-- =============================================

USE CRM;

INSERT INTO customers VALUES
(1,'Amit Sharma','amit@gmail.com','900000001','Delhi',NOW()),
(2,'Neha Verma','neha@gmail.com','900000002','Mumbai',NOW()),
(3,'Ravi Kumar','ravi@gmail.com','900000003','Bangalore',NOW()),
(4,'Priya Singh','priya@gmail.com','900000004','Pune',NOW()),
(5,'Karan Mehta','karan@gmail.com','900000005','Ahmedabad',NOW());

INSERT INTO products VALUES
(1,'Laptop','Electronics',70000,1),
(2,'Mobile','Electronics',30000,1),
(3,'Headphones','Electronics',3000,1),
(4,'Chair','Furniture',5000,1),
(5,'Table','Furniture',12000,1),
(6,'Pen','Stationery',20,1),
(7,'Notebook','Stationery',100,1),
(8,'Printer','Electronics',15000,1);

INSERT INTO warehouse VALUES
(1,'Delhi',1000),
(2,'Mumbai',800),
(3,'Bangalore',1200);

INSERT INTO inventory VALUES
(1,1,1,20,NOW()),
(2,1,2,15,NOW()),
(3,2,1,30,NOW()),
(4,2,3,10,NOW()),
(5,3,2,50,NOW()),
(6,4,1,25,NOW()),
(7,5,3,12,NOW()),
(8,6,1,200,NOW()),
(9,7,2,300,NOW()),
(10,8,3,8,NOW());

INSERT INTO orders VALUES
(101,1,'2025-01-10','PLACED'),
(102,2,'2025-01-12','SHIPPED'),
(103,3,'2025-01-15','PLACED'),
(104,4,'2025-02-01','CANCEL'),
(105,1,'2025-02-05','SHIPPED');

INSERT INTO order_items VALUES
(1,101,1,1,68000),
(2,101,3,2,2800),
(3,102,2,1,29000),
(4,102,6,10,18),
(5,103,5,1,11500),
(6,104,4,2,4800),
(7,105,1,1,70000),
(8,105,8,1,14500);