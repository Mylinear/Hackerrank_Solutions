Language: MS SQL
Question link:https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true

SELECT NAME+'('+SUBSTRING(OCCUPATION,1,1)+')'
FROM OCCUPATIONS
ORDER BY NAME
SELECT 'There are a total of '+STR(COUNT(Occupation)) +' '+ LOWER(occupation) +'s.'
from OCCUPATIONS
GROUP BY Occupation
ORDER BY COUNT(Occupation),OCCUPATION
