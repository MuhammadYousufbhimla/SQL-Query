use Student

select *from Student_info 
select *from teacher
Select * from employe 

Insert into teacher values (4,'Adnan','Bio-medical','032150452','42101-9813328-7');
Insert into employe values ('Rohail	','Sale');

delete from parents where id=2


/* New table from script*/

Create table store 
(
id bigint IDENTITY(1,1) PRIMARY KEY,
 name varchar (20),
 item varchar (10),

);
select *from store
alter table store add quantity varchar(50)

alter table store add price varchar(50)
alter table store alter column quantity varchar(20)
alter table store drop column quantiy
alter table store drop column price
insert into store values('Ismail ','Mirinda','2')
update store set quantity='1' where id =1
Select s.price from store s
delete from store where id=2


/* New customer table from script*/

Create table Customer 
(
Cus_id bigint IDENTITY(1,1) PRIMARY KEY,
 Cus_name varchar (20),
 Cus_role varchar (10),
  Cus_address varchar (10),
  Cus_phone varchar(20)

);
insert into Customer values('Ahmed','Testre','Al -Asif','0321-8563142')
insert into Customer values('Mesum','Backend','Defence','0321-8563142')
insert into Customer values('Noman','Programmer','Johar ','0321-8563142')
/* New customer table from script*/

Create table Producct 
(
Pro_id bigint IDENTITY(1,1) PRIMARY KEY,
Pro_name varchar (20),
Pro_quality varchar (10),
  Pro_expiry Date,
  Pro_price varchar(20)

);

insert into Producct values('Pakola','Below','2023-11-15','140')
insert into Producct values('Sting','Average','2023-10-27','120')
insert into Producct values('Neon','Good','2023-11-20','100')


/*Aggregate function*/

Select *from Customer where Cus_address in ('Malir','Johar ')
Select *from Customer where Cus_address not in ('Malir','Johar ')
Select *from Customer where Cus_address like '%r'
Select *from Customer where Cus_address like 'A%'
Select *from Customer where Cus_address like '%a%'
select *from parents
select status from parents   group by status
select *from Producct
select Sum(Cast(Pro_price as money))   from Producct 
select   Pro_quality ,Sum(Cast(Pro_price as money)) As Total  from Producct 
group by Pro_quality

select min(Pro_price) from Producct 
select max(Pro_price) from Producct 
select HAVING SUM(CAST(Pro_price AS smallmoney)) from Producct 


/*Now create View*/

CREATE VIEW [Product_Customer] AS
SELECT Cus_name, Cus_role
FROM Customer
WHERE Cus_role = 'Developer';
Select *from Product_Customer
select GETDATE() as date,0,1,1
select *from Customer
select *from Producct 
select *from Customer  c where c.Cus_id  in(Select p.Pro_id from Producct p   where p.Pro_id=6)
select *from Customer  c where c.Cus_id  not in(Select p.Pro_id from Producct p   where p.Pro_id=1)
select *from Customer  c where exists  (Select *from Producct p   where p.Pro_id=6 and p.Pro_id=c.Cus_id)
select *from Customer  c where not exists  (Select *from Producct p   where p.Pro_id=6 and p.Pro_id=c.Cus_id)


if  exists (Select *from Customer c where c.Cus_id=7 )

begin
print('Record is Exists');
	select 'Record exists' as Result;
end
else
begin 
print('Record is not  Exists');
	select 'Record not exists' as Result;
end


/*Temporay table */

Create table #tempo
(
id int primary key,
name varchar(50)
);

Select *from #tempo