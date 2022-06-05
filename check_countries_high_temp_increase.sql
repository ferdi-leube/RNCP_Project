# insight queries

use climate_change_check;
create temporary table highest_temp_increase_cts (
select country, avg(temperature_increase) as average_temperature_increase
from measurements
group by country
order by average_temperature_increase desc
limit 10
);


select  powerplants.country, 
count(powerplants.name_of_powerplant) as number_of_powerplants,
highest_temp_increase_cts.average_temperature_increase
from powerplants
left join highest_temp_increase_cts
on powerplants.country = highest_temp_increase_cts.country
where primary_fuel = 'Oil'
or primary_fuel = 'Gas'
or primary_fuel = 'Coal'
group by country
order by number_of_powerplants desc;