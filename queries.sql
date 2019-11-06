-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
select c.CategoryName as Category, p.ProductName as Product
from Product as p
join Category as c on p.CategoryId = c.Id;
-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
select [Order].Id as OrderId, Shipper.CompanyName as ShipperName from [Order] join Shipper on [Order].ShipVia = Shipper.Id where [Order].ShippedDate < '2012-09-08';


-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
select Product.ProductName as ProductName, OrderDetail.Quantity as Quantity from OrderDetail join Product on OrderDetail.ProductId = Product.Id where OrderDetail.OrderId = '10251'

-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
select 