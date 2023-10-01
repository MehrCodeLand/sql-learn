-- 1-> firstName, lastName ,passwordSalt
select pass.PasswordSalt , person.FirstName from Person.Password as pass
inner join Person.Person as person
on pass.BusinessEntityID = person.BusinessEntityID

