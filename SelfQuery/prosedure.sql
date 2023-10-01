-- store

--1
create procedure select_all_user
AS 
select * from User as user
where user.name like '%a%'
and user.age > 18
exec selet_all_user

--2
create procedure find_spacefic_user @userId int
AS
select * from User as user
where user.Id = @userId
exec find_spacefic_user @userId = 23

--3 
alter procedure find_spacefic_user @userId int , @username nvarchar(50)
AS
select * from User as user
where user.userId = @userId or 
user.username = @username
exec find_spacefic_user @userId = 22 , @username = 'mehrshad'