Create  Trigger crud 
on Producct 

After Insert,delete,Update

as
  declare @status varchar(20);
BEgin 
if exists (Select *from deleted) and exists (Select * from inserted)
begin 
  print 'Updated'
   set @status = 'Updated Record';
     select *from Producct
  end
  else if exists (select *from inserted) 
  begin 
  print 'Inserted'
     set @status = 'Inserted Record';
   select *from Producct
  end
  else if exists (select *from deleted )
  begin 
   print 'deleted'
    set @status = 'deleted Record';
      select *from Producct

   end
   End
   Go

    insert into Producct values ('Pepsi','Avg','2022-10-12','500')
   delete from Producct where Pro_id=14
   update Producct set Pro_name='normal' where Pro_id=13
