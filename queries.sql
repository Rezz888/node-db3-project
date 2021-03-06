-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
   
   SELECT ProductName,
          CategoryName
   FROM Product AS p
   JOIN Category AS c ON p.CategoryId = c.Id


-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
   
   SELECT o.Id,
          s.CompanyName
   From "Order" AS o
   JOIN Shipper AS s ON o.ShipVia = s."Id"
    WHERE "OrderDate" < "2012-08-09";


-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.

 SELECT  "OrderDetail"."OrderId",
         "OrderDetail".Quantity,
        Product.ProductName
        
        FROM "OrderDetail"
        
        JOIN Product ON Product.Id = "OrderDetail".ProductId
        WHERE "OrderId" = "10251";




-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.

SELECT "Order".Id AS OrderId,
        Customer.CompanyName,
        Employee.LastName AS EmployeeName
        
FROM "Order"

JOIN Customer ON "Order".CustomerId = Customer.Id 
JOIN Employee ON "Order".EmployeeId = Employee.Id;