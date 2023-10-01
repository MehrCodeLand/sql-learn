-- nested query

--1
select user.Fname, user.Lname,
    (
        select user.salary from User as user
        where user.salary > 2000
    ) as user_salary
from Users as user

--2
select pro.name , pro.price ,
    (select avg(pro.price) from production as pro )
from production as pro
where pro.price > 1

--3 { with use AdventureWorks2019 }
select pro.Name, pro.ListPrice,
	(
		select avg(pro.ListPrice) from Production.Product as pro
		where pro.ListPrice > 1
	) as price
from Production.Product as pro
where pro.ListPrice > 1