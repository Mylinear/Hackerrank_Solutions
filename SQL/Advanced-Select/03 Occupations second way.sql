Language: MS SQL

/*
Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
with DOC as(
    select name,
    ROW_NUMBER() OVER(ORDER BY NAME) RN from occupations
    where occupation='Doctor'
    ),
    PRO AS (
    SELECT NAME, ROW_NUMBER() OVER(ORDER BY NAME) RN FROM occupations
    WHERE occupation = 'Professor'
    ),
    ACT AS (
    SELECT NAME, ROW_NUMBER() OVER(ORDER BY NAME) RN FROM occupations
    WHERE occupation = 'Actor'
    ),
    SING AS (
    SELECT NAME, ROW_NUMBER() OVER(ORDER BY NAME) RN FROM occupations
    WHERE occupation = 'singer'
    )

select d.NAME,P.name ,S.name, A.NAME
FROM PRO P
LEFT JOIN DOC D ON  P.RN = D.RN
LEFT JOIN ACT A ON  A.RN = P.RN
LEFT JOIN SING S ON  P.RN = S.RN

