-- 1-> firstName, lastName ,passwordSalt
select pass.PasswordSalt , person.FirstName from Person.Password as pass
inner join Person.Person as person
on pass.BusinessEntityID = person.BusinessEntityID

--2 -> 100 From the following table write a query in SQL to calculate the sum
-- of the ListPrice and StandardCost for each color. Return color, sum of ListPrice.
select color , avg(listPrice) as price , avg(StandardCost) as cost
from Production.Product
group by color


