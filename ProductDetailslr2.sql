-- CREATE DATABASE if NOT EXISTS ProductOrder;
-- use ProductOrder;
-- create TABLE
--     OrderDetails (
--         Order_No int AUTO_INCREMENT primary key,
--         CustomerName varchar(30),
--         Address_ varchar(300),
--         ProductCatagory varchar(20),
--         Quantity int,
--         UnitPrice decimal(8, 2)
--     )
-- ALTER TABLE ProductOrder.OrderDetails ADD OrderDate DATETIME after UnitPrice
-- ALTER TABLE ProductOrder.OrderDetails change CustomerName Cust_name varchar(30);
-- ALTER TABLE ProductOrder.OrderDetails drop column ProductCatagory;
-- ALTER TABLE ProductOrder.OrderDetails ADD ProductCatagory varchar(20) after Address_;
-- INSERT INTO
--     ProductOrder.OrderDetails (
--         Cust_name,
--         Address_,
--         ProductCatagory,
--         Quantity,
--         UnitPrice,
--         OrderDate
--     )
-- VALUES
-- (
--     'Rahul',
--     'Talaimari',
--     'Home Appliances',
--     4,
--     '3000.00',
--     now ()
-- );
-- (
--     'Adiba',
--     'Talaimari',
--     'Fabrics',
--     5,
--     4000.00,
--     now ()
-- ),
-- (
--     'Mahin',
--     'Vodra',
--     'Electronics',
--     100,
--     40.00,
--     now ()
-- ),
-- (
--     'Kamrul',
--     'Monnafer Mor',
--     'Device',
--     1,
--     150000.00,
--     now ()
-- ),
-- (
--     'Maysha',
--     'Shadur Mor',
--     'Equipment',
--     2,
--     6700.00,
--     now ()
-- ),
-- (
--     'Adiba2',
--     'Talaimari',
--     'Fabrics',
--     3,
--     4400.00,
--     now ()
-- ),
-- (
--     'Mahin2',
--     'Vodra',
--     'Electronics',
--     10,
--     403.00,
--     now ()
-- ),
-- (
--     'Kamrul2',
--     'Monnafer Mor',
--     'Device',
--     2,
--     15000.00,
--     now ()
-- ),
-- (
--     'Maysha2',
--     'Shadur Mor',
--     'Equipment',
--     4,
--     6750.00,
--     now ()
-- ),
-- (
--     'Adiba3',
--     'Talaimari',
--     'Fabrics',
--     55,
--     40.00,
--     now ()
-- ),
-- (
--     'Mahin3',
--     'Vodra',
--     'Electronics',
--     11,
--     35.00,
--     now ()
-- ),
-- (
--     'Kamrul3',
--     'Monnafer Mor',
--     'Device',
--     12,
--     1540.00,
--     now ()
-- ),
-- (
--     'Maysha3',
--     'Shadur Mor',
--     'Equipment',
--     20,
--     67.00,
--     now ()
-- ),
-- (
--     'Adiba4',
--     'Talaimari',
--     'Fabrics',
--     51,
--     45.00,
--     now ()
-- ),
-- (
--     'Mahin4',
--     'Vodra',
--     'Electronics',
--     10,
--     12.00,
--     now ()
-- );
-- SELECT
--     *
-- FROM
--     ProductOrder.OrderDetails
-- ORDER BY
--     Quantity ASC;
--     UnitPrice DESC;
-- SELECT
--     *
-- FROM
--     ProductOrder.OrderDetails
-- ORDER BY
--     UnitPrice DESC;
--     ALTER TABLE ProductOrder.OrderDetails modify OrderDate Date;
--     UPDATE ProductOrder.OrderDetails set UnitPrice = (UnitPrice+UnitPrice*.1);
-- SELECT
--     Order_No,
--     Cust_name,
--     Address_,
--     UnitPrice+UnitPrice*.1 as New_Price
-- FROM
--     ProductOrder.OrderDetails
-- ORDER BY
--     UnitPrice DESC;
-- ALTER TABLE ProductOrder.OrderDetails modify OrderDate DATETIME;
-- INSERT INTO
--     ProductOrder.OrderDetails (
--         Cust_name,
--         Address_,
--         ProductCatagory,
--         Quantity,
--         UnitPrice,
--         OrderDate
--     )
-- VALUES
--     (
--         'Rul',
--         'Timari',
--         'Homliances',
--         4010,
--         '310.00',
--         now ()
--     );
-- SELECT
--     *
-- FROM
--     ProductOrder.OrderDetails