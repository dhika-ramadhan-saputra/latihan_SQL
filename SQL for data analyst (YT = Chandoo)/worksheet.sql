--  Inspecting the database table
--  and inspecting each table]
show tables;
desc sales;

-- basic select and where clause
select * from sales;
select Amount, Customers, GeoID from sales;
select SaleDate, Amount, Boxes, Amount/Boxes as 'Amount per box' from sales;
select * from sales where Amount > 10000;
select * from sales where Amount > 10000 order by Amount asc;
select * from sales where GeoID = 'G1' order by GeoID, Amount asc;
select * from sales where Amount > 10000 order by Amount desc;

select * from sales
where Amount > 10000 and SaleDate >= '2022-01-01';
select SaleDate, Amount from sales
where Amount > 10000 and year(SaleDate) = 2022
order by Amount desc;

select SPID, Boxes from sales
where Boxes <= 50;
select * from sales
where Boxes between 0 and 50;

select SaleDate, Amount, Boxes, weekday(SaleDate) as day_of_week from sales
where weekday(SaleDate) = 4;