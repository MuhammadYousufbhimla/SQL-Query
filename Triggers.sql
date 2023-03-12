use Student


-- Create Trigers First

Create Trigger Firsts 
on Customer 

After Insert,delete,Update

as
BEgin 
if exists (Select *from deleted) and exists (Select * from inserted)
begin 
  print 'Updated'

  end
  else if exists (select *from inserted) 
  begin 
  print 'Inserted'
  end
  else if exists (select *from deleted )
  begin 
   print 'deleted'
   end
   End
   Go

   select *from Customer

   insert into Customer values ('ahmed','Testing','Qatar','0321586715')
   delete from Customer where Cus_id=6
   update Customer set Cus_name='Zohaib' where Cus_id=2
