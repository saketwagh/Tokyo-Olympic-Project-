SELECT Country, Count(*) as TotalAthletes
from athletes
GROUP BY Country
ORDER BY TotalAthletes DESC;

--Calculate the total medals won by each country

SELECT
Team_Country,
SUM(Gold),
SUM(SILVER),
SUM(BRONZE)

from medals
GROUP BY Team_Country;

--Calculate the average number of entries by gender for each discipline

SELECT Discipline,
AVG(female) as Avg_Female,
Avg(Male) as Avg_Male
FROM entriesgender
WHERE Discipline = 'Archery'
GROUP BY Discipline