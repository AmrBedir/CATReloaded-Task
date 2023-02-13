# Week 5 Problems Solutions


### [Problem 1](https://www.hackerrank.com/challenges/weather-observation-station-1/problem)
Query a list of CITY and STATE from the STATION table.

```sql
SELECT CITY, STATE
FROM STATION;
```

### [Problem 2](https://www.hackerrank.com/challenges/weather-observation-station-3/problem)
Query a list of CITY names from STATION for cities
that have an even ID number. Print the results in
any order, but exclude duplicates from the answer.

```sql
SELECT DISTINCT CITY FROM STATION WHERE MOD(ID,2)=0 ORDER BY CITY ASC;
```

### [Problem 3](https://www.hackerrank.com/challenges/revising-aggregations-sum/problem)
Query the total population of all cities in CITY where District is California.

```sql
SELECT SUM(POPULATION)
FROM CITY
WHERE DISTRICT = 'California';
```

### [Problem 4](https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem)
Query a count of the number of cities in 
CITY having a Population larger than 100000.

```sql
SELECT COUNT(*)
FROM CITY
WHERE POPULATION > 100000;
```

### [Problem 5](https://www.hackerrank.com/challenges/what-type-of-triangle/problem)
Write a query identifying the type of each record
in the TRIANGLES table using its three side lengths.
Output one of the following statements for each
record in the table:

* **Equilateral**: It's a triangle with 3 sides of equal length.
* **Isosceles**: It's a triangle with 2 sides of equal length.
* **Scalene**: It's a triangle with 3 sides of differing lengths.
* **Not A Triangle**: The given values of A, B, and C don't form a triangle.
```sql
SELECT CASE
WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
WHEN A = B AND B = C THEN 'Equilateral'
WHEN A = B OR B = C OR A = C THEN 'Isosceles'
ELSE 'Scalene'
END
FROM TRIANGLES;
```
