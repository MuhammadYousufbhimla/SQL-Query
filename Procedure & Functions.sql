use Student

--Create one parameter procedure

Create Procedure One_proc 
@name varchar(50)
as

Select *from customer where Cus_name  =@name

go

exec One_proc @name ='ayan'

--Create Two parameter procedure

Create Procedure Two_proc 
@name varchar(50),
@address varchar(50)
as

Select *from customer where Cus_name  =@name
And Cus_address=@address
go


exec Two_proc @name ='ayan' ,@address='Malir'


