# Week 4 Problems Solutions

### [Problem 1](https://www.hackerrank.com/challenges/select-all-sql/problem)
Query all columns (attributes) for every row in the CITY table.

```sql
select * from CITY;
```

### [Problem 2](https://www.hackerrank.com/challenges/select-by-id/problem)
Query all columns for a city in CITY with the ID 1661.

```sql
select * from CITY where ID = 1661;
```

### [Problem 3](https://www.hackerrank.com/challenges/revising-the-select-query/problem)
Query all columns for all American cities in the CITY table with
populations larger than 100000. The CountryCode for America is USA.

```sql
select * from CITY where COUNTRYCODE = 'USA' and POPULATION > 100000;
```

### [Problem 4](https://www.hackerrank.com/challenges/japanese-cities-name/problem)
Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.

```sql
select NAME from CITY where COUNTRYCODE = 'JPN';
```

### [Problem 5](https://www.hackerrank.com/challenges/more-than-75-marks/problem)
Query the Name of any student in STUDENTS who scored higher than 75 Marks.
Order your output by the last three characters of each name. If two or
more students both have names ending in the same last three characters
(i.e.: Bobby, Robby, etc.), secondary sort them by ascending ID.
```sql
select name from students where marks > 75 order by Right(name,3) , ID;
```
