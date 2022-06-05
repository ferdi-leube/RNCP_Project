# insight queries

use climate_change_check;


select sector_country_combo.country,
 sum('2018') as year_2018,
sum('2017') as year_2017,
sum('2016') as year_2016,
sum('2015') as year_2015,
sum('2014') as year_2014,
highest_temp_increase_cts.country as highest_tenperature_increase_countries
from sector_country_combo
left join highest_temp_increase_cts
on sector_country_combo.country = highest_temp_increase_cts.country
where sector = 'Agriculture'
or sector = 'Building'
or sector = 'Bunker Fuels'
group by sector_country_combo.country
order by year_2018 desc
;


select country, sum('2018') as year_1
from sector_country_combo
where sector = 'Agriculture'
or sector = 'Building'
or sector = 'Bunker Fules'
group by country
order by year_1 desc;
