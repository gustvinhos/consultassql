--Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.


SELECT top 1 city, len(city) from station where len(city) = (select min(len(city)) from station) order by city asc
SELECT top 1 city, len(city) from station where len(city) = (select max(len(city)) from station)