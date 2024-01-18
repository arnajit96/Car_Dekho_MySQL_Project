create schema cars;
use cars;
select * from car_dekho;

-- READ DATA--
select * from car_dekho;

-- Total cars: To get a count of total records
select count(*) from car_dekho;

-- The manager asked the employee How many cars will be available in 2023?
select count(*) from car_dekho where year =2023;


-- The manager asked the employee how many cars is available in 2020, 2021 and 2022? 

select count(*) from car_dekho where year in (2020,2021,2022) group by year;

-- Client asked me to print the total of all cars by year. 
select year,count(*) from car_dekho group by year;

-- Client asked the car dealer agent How many diesel cars will there be in 2020? 

select count(*) as diesel_cars from car_dekho where year="2020" and fuel="Diesel"; 

-- client requested a car dealer agent how many petrol cars will there be in 2020?
select count(*) as Petrol_cars from car_dekho where year="2020" and fuel="Petrol"; 

-- The manager told me the employee to give a print all the fuels cars(petrol,diesel and 
-- cng ) come by all year.

SELECT
    year,
    COUNT(CASE WHEN fuel = 'petrol' THEN 1 ELSE NULL END) AS fuel_list_petrol,
    COUNT(CASE WHEN fuel = 'diesel' THEN 1 ELSE NULL END) AS fuel_list_diesel,
    COUNT(CASE WHEN fuel = 'cng' THEN 1 ELSE NULL END) AS fuel_list_cng
FROM
    car_dekho
WHERE
    fuel IN ('petrol', 'diesel','cng')
GROUP BY
    year;
 

-- Manager said there were more than 100 cars in a given year, which year had more 
-- than 100 cars?

select max(year),count(*) as Available_cars from car_dekho group by 
year having count(*)>100; 


-- The manager said to the employee all cars count details between 2015 and 2023, 
-- we need a complete list

select count(*) as car_list from car_dekho where year between 2015 and 2023;

-- The Manager said to the employee all the cars details between 2015 to 2023 we need 
-- complete list 

select * from car_dekho where year between 2015 and 2023;



-- ----------------------------END-------------------------------------


