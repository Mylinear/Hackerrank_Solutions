Language: MS SQL

Question link : https://www.hackerrank.com/challenges/binary-search-tree-1/problem?isFullScreen=true

select n,
case 
    when p is null then 'Root'
    when n not in (select distinct p from bst where p is not null) then 'Leaf'
    else 'Inner'
    end
from bst
order by n
