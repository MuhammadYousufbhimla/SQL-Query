use Student
-- Inner Join Both Table id Same else null response
select p.Pro_name,p.Pro_quality,p.Pro_price from Producct p

inner join Customer c
on p.Pro_id=c.Cus_id
order by p.Pro_id

Select *from Producct
select *from Customer

--Left join only left table field show whether right table same id else null

Select p.f_name,p.l_name,p.status,pr.Cus_name from parents p
left join Customer pr
on p.id=pr.Cus_id
order by p.id


select *from parents
select *from Customer
select *from parents
select *from Customer


--Right join only Right table field show whether left table same id else null

Select p.f_name,p.l_name,p.status from parents p
right join Customer pr
on p.id=pr.Cus_id
order by p.id


select *from parents
select *from Customer


--Full join p.id==pr.cus_id same  else null

Select p.f_name,p.l_name,p.status from parents p
full join Customer pr
on p.id=pr.Cus_id
order by p.id


select *from parents
select *from Customer

--Cross join product each row

Select p.f_name,pr.Cus_name from parents p
Cross join Customer pr

order by p.id


select *from parents
select *from Customer