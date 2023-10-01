-- normal update
update User
set username = 'milad23' , Fname = 'milad'
where id = 2


create procedure update_user
@Id int , @username nvarchar(50) , @Fname nvarchar(50)
AS
update User
set username = @username , Fname = @Fname
where Id = @id

exec update_user
@username = 'Jalal' , @Fname = 'jalal', @Id = 3