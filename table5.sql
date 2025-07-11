CREATE TABLE flights (
    flight_id INT PRIMARY KEY,
    airline VARCHAR(50),
    origin VARCHAR(50),
    destination VARCHAR(50),
    duration_minutes INT,
    distance_km INT
);

INSERT INTO flights VALUES
(1, 'IndiGo', 'Delhi', 'Mumbai', 130, 1140),
(2, 'Air India', 'Bangalore', 'Chennai', 60, 290),
(3, 'SpiceJet', 'Mumbai', 'Kolkata', 150, 1650),
(4, 'Vistara', 'Delhi', 'Hyderabad', 120, 1265),
(5, 'GoAir', 'Pune', 'Ahmedabad', 90, 670),
(6, 'IndiGo', 'Lucknow', 'Delhi', 55, 440),
(7, 'AirAsia', 'Jaipur', 'Goa', 125, 1090),
(8, 'SpiceJet', 'Chennai', 'Mumbai', 110, 1030),
(9, 'Air India', 'Kolkata', 'Delhi', 135, 1300),
(10, 'Vistara', 'Hyderabad', 'Bangalore', 75, 570);


select * from flights

--select query

select airline,origin,destination,duration_minutes from flights where not airline = 'air india'

select flight_id,airline,origin,destination from flights where not destination = 'kolkata'

select origin,destination,distance_km from flights where not origin = 'Mumbai'

select flight_id,airline,destination,duration_minutes from flights where not airline = 'indigo'
and not distance_km = '290'

select origin,airline,destination,duration_minutes,distance_km from flights where not origin = 'jaipur'and not destination = 'goa' 
and not duration_minutes = '60' and not distance_km = '1140'

--update query

select * from flights

update flights set airline = 'anurag air lines' where destination = 'Kolkata'

update flights set origin = 'nagpur' where destination = 'Delhi'

update flights set destination = 'america' where airline = 'anurag air lines'

update flights set duration_minutes = '500' where distance_km = '440' 

update flights set airline = 'ayush air line' where origin = 'Pune'

--delete query

select * from flights

delete from flights where origin = 'Hyderabad'

delete from flights where destination = 'Ahmedabad'

delete from flights where flight_id = '4'

delete from flights where airline = 'SpiceJet'

delete from flights where distance_km = '1140'

select * from flights