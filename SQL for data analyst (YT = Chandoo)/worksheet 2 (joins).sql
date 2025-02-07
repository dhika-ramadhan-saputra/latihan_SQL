-- Joins
select * from sales;
select * from people;
select * from geo;
select * from products;
select
	p.Salesperson,
    p.SPID,
    s.SaleDate,
    s.Amount
from sales as s
inner join people as p
	on s.SPID = p.SPID
;


-- Multiple Joins
select
	s.SaleDate,
    p.Product,
    s.Amount,
    pe.Salesperson,
    pe.Team,
    g.Geo
from sales as s
left join products as p
	on s.PID = p.PID
left join people as pe
	on s.SPID = pe.SPID
left join geo as g
	on s.GeoID = g.GeoID
;


-- Adding condition on joins
select
	s.SaleDate,
    p.Product,
    s.Amount,
    pe.Salesperson,
    pe.Team,
    g.Geo
from sales as s
left join products as p
	on s.PID = p.PID
left join people as pe
	on s.SPID = pe.SPID
left join geo as g
	on s.GeoID = g.GeoID
where s.Amount <= 500;
    