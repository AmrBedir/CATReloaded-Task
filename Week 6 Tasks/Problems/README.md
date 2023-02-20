# Week 6 Problems Solutions


### [Problem 1](https://www.hackerrank.com/challenges/salary-of-employees/problem)
Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than  per month who have been employees for less than 10 months. Sort your result by ascending employee_id.
```sql
SELECT name FROM Employee WHERE salary > 2000 AND months < 10 ORDER BY employee_id;
```

### [Problem 2](https://www.hackerrank.com/challenges/african-cities/problem)
Given the CITY and COUNTRY tables, query the names of all cities where the CONTINENT is 'Africa'.

```sql
select City.Name
from City inner join Country
on City.CountryCode = Country.Code
where Continent = 'Africa'
```

### [Problem 3](https://www.hackerrank.com/challenges/asian-population/problem)
Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.

```sql
select sum(city.population)
from City join Country
on City.CountryCode = Country.Code
where Country.Continent = 'Asia'
```

### [Problem 4](https://leetcode.com/problems/swap-salary/)
+-------------+----------+
| Column Name | Type     |
+-------------+----------+
| id          | int      |
| name        | varchar  |
| sex         | ENUM     |
| salary      | int      |
+-------------+----------+
id is the primary key for this table.
The sex column is ENUM value of type ('m', 'f').
The table contains information about an employee.

```sql
update Salary
set sex =   iif(sex = 'm' ,'f','m')
```

### [Problem 5](https://www.hackerrank.com/challenges/placements/problem)
You are given three tables: Students, Friends and Packages. Students contains two columns: ID and Name. Friends contains two columns: ID and Friend_ID (ID of the ONLY best friend). Packages contains two columns: ID and Salary (offered salary in $ thousands per month).

```sql
SELECT t.Name
FROM (
    SELECT s1.ID, s1.Name, p1.Salary, f.Friend_ID, s2.name as friend_name, p2.Salary as friend_salary
    FROM Students s1
    JOIN Packages p1 ON s1.ID = p1.ID
    JOIN Friends f ON s1.ID = f.ID
    JOIN Students s2 ON f.Friend_ID = s2.ID
    JOIN Packages p2 ON f.Friend_ID = p2.ID
    ) t
WHERE t.friend_salary > t.Salary
ORDER BY friend_salary;
```
