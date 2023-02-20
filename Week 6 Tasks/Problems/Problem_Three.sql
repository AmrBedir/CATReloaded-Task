select sum(city.population)
from City join Country
on City.CountryCode = Country.Code
where Country.Continent = 'Asia'