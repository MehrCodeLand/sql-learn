--1 delete spacefic user
create procedure delete_user
@username nvarchar(50)
AS
delete from User 
where username = @username

exec delete_user
@username = 'mehrshad'

--2 delete all rows
alter procedure delete_user
AS
delete from User

--3 delete table (drop)
create procedure drop_table_user
AS
drop table User

--4 delete multi rows
create procedure multi_delete_user
AS
delete from User
where Id in (select Id from User where Id > 3 and Id < 10 )