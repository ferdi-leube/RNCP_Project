# insight query

use climate_change_check;

select primary_fuel
from powerplants
group by primary_fuel;
# fuel types considered climat damaging: Oil, Coal, Gas

# look for country with highest amount of powerplants with those fuel types
select  country, 
count(name_of_powerplant) as number_of_powerplants
from powerplants
where primary_fuel = 'Oil'
or primary_fuel = 'Gas'
or primary_fuel = 'Coal'
group by country
order by number_of_powerplants desc
limit 10;