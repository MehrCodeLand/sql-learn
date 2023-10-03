-- case
select Fname , Lname,[Age Range] = case
when age < 18 then 'thats fals'
when age = 18 then 'equal'
else 'false'
end
from Username

