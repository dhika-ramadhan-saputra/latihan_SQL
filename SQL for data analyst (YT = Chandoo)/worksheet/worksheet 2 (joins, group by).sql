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


SELECT * 
FROM geo 
CROSS JOIN people 
CROSS JOIN products 
CROSS JOIN sales;

-- group by
select GeoID, sum(Customers), sum(Amount), sum(Boxes)
from sales
group by GeoID;

select
	g.Geo,
    sum(s.Customers),
    sum(s.Amount),
    sum(s.Boxes)
from geo as g
inner join sales as s
	on g.GeoID = s.GeoID
group by g.Geo;

select
	p.Team,
    pr.Product,
    sum(s.Customers) as jumlah_customer,
    sum(s.Amount) as jumlah_amount,
    sum(s.Boxes) as jumlah_boxes
from people as p
inner join sales as s
	on p.SPID = s.SPID
inner join products as pr
	on s.PID = pr.PID
group by pr.Product
order by jumlah_amount desc;