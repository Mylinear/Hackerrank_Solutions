Question link : https://www.hackerrank.com/challenges/occupations/problem?isFullScreen=true
Language: MS SQL

SELECT DOCTOR, PROFESSOR, SINGER, ACTOR
FROM
    (SELECT ROW_NUMBER() OVER(partition BY occupation ORDER BY NAME) R_NUMBER, *
    FROM OCCUPATIONS) AS AA
pivot(
    max(name) for occupation in (doctor, PROFESSOR, SINGER, ACTOR)
    ) Piv 
