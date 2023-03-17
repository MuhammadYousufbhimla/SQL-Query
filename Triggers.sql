use Student


-- Create Trigers First
select *from Customer
alter Trigger Firsts 
on Customer 

After Insert,delete,Update

as
BEgin 
if exists (Select *from deleted) and exists (Select * from inserted)
begin 
  print 'Updated'
     select *from Customer
  end
  else if exists (select *from inserted) 
  begin 
  print 'Inserted'
   select *from Customer
  end
  else if exists (select *from deleted )
  begin 
   print 'deleted'
      select *from Customer
   end
   End
   Go

   select *from Producct

   insert into Customer values ('Asad1','Testing','Finland','0321586715')
   delete from Customer where Cus_id=4
   update Customer set Cus_name='Zohaib' where Cus_id=2








   -- Create Trigger After Insert
   Create Trigger After_Insert
   on Producct 

   After insert 

   as
 
   declare @name varchar(20);
   declare @quality varchar(20);
   declare @expirydate varchar(20);
   declare @price varchar(20);
     declare @status varchar(20);

   Select @name=i.Pro_name,@price=i.Pro_price,@quality=i.Pro_quality,@expirydate=i.Pro_expiry from inserted i;
   set @status = 'Inserted Record';
	Insert into Producct (Pro_name,Pro_quality,Pro_expiry,Pro_price) values(@name,@quality,@expirydate,@price);
	print 'After Inserted Trigger Fired';
	Go

	--insert into Producct values ('nor','Good','2023-12-05','250')

	select *from Producct

	 -- Create Trigger After Insert
   Create Trigger After_Update
   on Producct 

   After Update

   as
 
   declare @name varchar(20);
   declare @quality varchar(20);
   declare @expirydate varchar(20);
   declare @price varchar(20);
    declare @status varchar(20);

  Select @name =i.Pro_name ,@quality=i.Pro_quality,@expirydate=i.Pro_expiry,@price=i.Pro_price from inserted i;

  if update(name) 
  set @status ='Updated Record';
 if update (quality)
   set @status='Updated Record';
if update (expirydate)
  set @status ='Updated Record';
  if update (price)
  set @status ='Updated Record';


	Insert into Producct (Pro_name,Pro_quality,Pro_expiry,Pro_price) values(@name,@quality,@expirydate,@price);
	print 'After Updated Trigger Fired';
	Go

	--insert into Producct values ('nor','Good','2023-12-05','250')

	select *from Producct