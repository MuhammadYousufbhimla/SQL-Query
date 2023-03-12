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


-- Create Functions Scalar valued

Create function Addtwonumber(@a int ,@b int)

Returns int as
Begin 
Return (@a +@b)
end

Create function addno (@p1 int,@p2 int)
returns int
as
Begin
    Return @p1 + @p2
End

	
Select dbo.addno(23,34)

select dbo.Addtwonumber(5,5)