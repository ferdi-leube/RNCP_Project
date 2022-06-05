create database if not exists climate_change_check;
use climate_change_check;

create table countries (
country_name varchar(30),
number_of_cities int,
primary key (country_name)
);

create table cities (
city_name varchar(30),
country varchar(30),
year_1997 float,
year_1998 float,
year_1999 float,
year_2000 float,
year_2001 float,
year_2002 float,
year_2003 float,
year_2004 float,
year_2005 float,
year_2006 float,
year_2007 float,
year_2008 float,
year_2009 float,
year_2010 float,
year_2011 float,
year_2012 float,
year_2013 float,
year_2014 float,
year_2015 float,
year_2016 float,
year_2017 float,
year_2018 float,
primary key (city_name),
FOREIGN KEY (country)REFERENCES countries(country_name)
);

create table measurements (
measurement_id int,
country varchar(30),
city varchar(30),
years int,
average_temperature double,
temperature_increase double,
primary key (measurement_id),
FOREIGN KEY (country)REFERENCES countries(country_name),
FOREIGN KEY (city)REFERENCES cities(city_name)
);
drop table measurements;

create table sector_country (
sector_country_combo varchar(70),
sector varchar(30),
country varchar(30),
year_1996 double,
year_1997 double,
year_1998 double,
year_1999 double,
year_2000 double,
year_2001 double,
year_2002 double,
year_2003 double,
year_2004 double,
year_2005 double,
year_2006 double,
year_2007 double,
year_2008 double,
year_2009 double,
year_2010 double,
year_2011 double,
year_2012 double,
year_2013 double,
year_2014 double,
year_2015 double,
year_2016 double,
year_2017 double,
year_2018 double,
primary key (sector_country_combo),
foreign key (country) references countries(country_name)
);

drop table sector_country;
create table powerplants (
name_of_powerplant varchar(40),
country_code varchar(10),
country varchar(30),
capacity_in_mw double,
latitude double,
longitude double,
primary_fuel varchar(30),
primary key (name_of_powerplant),
foreign key(country) references countries(country_name)
);


insert into countries (country_name, number_of_cities)
Values ('germany', 30), ('france', 32), ('italy', 45) . . . 
# all the values inside a bracket represents the data for one specific row

# much quicker and effecient way is using the table data import wizard method
;
select * 
from countries;
select *
from cities;
select * 
from measurements;
select *
from powerplants;
select *
from sector_country;

