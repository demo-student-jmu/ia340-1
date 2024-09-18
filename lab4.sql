--4.1
/* no, because we still have VA records */


--4.2
/* no, because 80 is not a valid fisp*/

--4.3
/* just fine */

--4.6
/* it works pefect*/

SELECT name.name, income.income, income.year
FROM income
JOIN name ON income.fips = name.fips
WHERE income.year = (SELECT MAX(year) FROM income)
ORDER BY income.income DESC
LIMIT 1;



