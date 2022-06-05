# insight queries

use climate_change_check;

select country, avg(temperature_increase) as average_temperature_increase
from measurements
group by country
order by average_temperature_increase desc
limit 10;
