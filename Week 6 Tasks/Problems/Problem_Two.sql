select City.Name
from City inner join Country
on City.CountryCode = Country.Code
where Continent = 'Africa'