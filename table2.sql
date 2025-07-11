CREATE TABLE countries (
    country_id INT PRIMARY KEY,
    country_name VARCHAR(100),
    continent VARCHAR(50),
    population_millions DECIMAL(6,2),
    area_km2 INT,
    official_language VARCHAR(50)
);

INSERT INTO countries VALUES
(1, 'India', 'Asia', 1410.00, 3287263, 'Hindi'),
(2, 'USA', 'North America', 331.00, 9833517, 'English'),
(3, 'Brazil', 'South America', 213.00, 8515767, 'Portuguese'),
(4, 'Germany', 'Europe', 83.00, 357022, 'German'),
(5, 'Nigeria', 'Africa', 206.00, 923768, 'English'),
(6, 'Japan', 'Asia', 125.00, 377975, 'Japanese'),
(7, 'Russia', 'Europe/Asia', 146.00, 17098242, 'Russian'),
(8, 'Australia', 'Oceania', 25.70, 7692024, 'English'),
(9, 'Canada', 'North America', 38.00, 9984670, 'English/French'),
(10, 'France', 'Europe', 67.00, 551695, 'French');

select * from countries
--select query

select country_name,continent,population_millions from countries where not population_millions < 331.00

select country_id,continent,population_millions,area_km2 from countries where not area_km2 = '923768'

select country_id,country_name,continent,population_millions from countries where not country_name = 'Germany'

select country_id,country_name,continent,population_millions from countries where not continent = 'Europe'

select country_id,country_name,population_millions,area_km2 from countries  where not country_name = 'USA' and not area_km2 = '357022'

--update query

select * from countries

update countries set country_name = 'Bharat' where country_id = '1' 

update countries set continent = 'AAssiiaa' where country_name = 'Japan'

update countries set continent = 'Euro' where country_name = 'Nigeria'

update countries set official_language = 'GERMAN' where continent = 'Europe'

update countries set population_millions = '1500' where country_name = 'Bharat'

--delete query

select *from countries

delete from countries where country_name = 'Germany'

delete from countries where continent = 'Euro'

delete from countries where population_millions = '67.00'

delete from countries where area_km2 = '9984670'

delete from countries where official_language = 'Russian'

select * from countries
