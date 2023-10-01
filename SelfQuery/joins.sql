-- inner join
select user.username from User as user
inner join Student as stu
on user.username = stu.username

