Question link: https://www.hackerrank.com/challenges/earnings-of-employees/problem?isFullScreen=true

Language: MS SQL
  
select top 1 salary*months as p, count(name)
from Employee
group by (salary*months)
order by p desc
