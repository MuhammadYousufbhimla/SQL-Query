use Student

Create Procedure One_proc 
@name varchar(50)
as

Select *from customer where Cus_name  =@name

go

exec One_proc @name ='ayan'