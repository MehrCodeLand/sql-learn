-- C -> create 

create procedure createStudentTable
AS
create table Student(
    Id int identity(1,1,) not null primary key,
    Username nvarchar(50) not null ,
    Fname nvarchar(50),
)

-- insert || create rows
create procedure insert_into_student
AS
insert into Student
values
('aria81', 'aria'),
('yasmin78' , 'yasmin'),
('bornan22', 'bornan')
 

-- insert || create rows with prameters
alter procedure insert_into_student
@username nvarchar(50) , @Fname = nvarchar(50)
AS
insert into Student
values
(@username , @Fname)

exec insert_into_student
@username = 'mehrshad90' , @Fname = 'robert'

-----------