# insight queries

use climate_change_check;

# check for top 3 sectors with highest GHG emission in the last 5 years
select sector, sum('2018') as '2018',
sum('2017') as '2017',
sum('2016') as '2016',
sum('2015') as '2015',
sum('2014') as '2014'
from sector_country_combo
group by sector
order by '2018'
and '2017'
and '2016'
and '2015'
and '2014'
limit 3;