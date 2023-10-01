-- CREATE TABELS WITH FK AND PK

-- 1
create procedure create_tables_person_student
AS
create database sql_learn_v2

create table Person(
    Id int not null identity(1,1) primary key,
    Fname nvarchar(50) not null,
    Lname nvarchar(50) not null,
    Age int,
)
create table Student(
    Id int not not identity(1,1) primary key , 
    PersonId int foreign key references Person(Id),
    StudentNumber int not null,
    Grade float
) 
create table Employee(
    Id int not null identity(1,1) primary key,
    PersonId int foreign key references Person(Id),
    Firm nvarchar(50) not null ,
)

-- 2
exec create_tables_person_student

-- 3 use join here 
select * from Person as p
inner join Student as s
on s.PersonId = p.Id

-- 3-1
select * from Student as s
inner join Employee as e 
on e.PersonId = s.PersonId

-- 3-2
select * from Perosn as p
where Id in (
    select p.PersonId from student as p
    inner join Employee as e
    on e.PersonId = p.PersonId
)