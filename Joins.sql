use Student
-- Inner Join Both Table id Same else null response
select p.Pro_name,p.Pro_quality,p.Pro_price from Producct p

inner join Customer c
on p.Pro_id=c.Cus_id
order by p.Pro_id

Select *from Producct
select *from Customer