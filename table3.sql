CREATE TABLE investors (
    investor_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    total_investment DECIMAL(12,2),
    portfolio_count INT,
    risk_profile VARCHAR(20)
);

INSERT INTO investors VALUES
(201, 'Anil Mehta', 45, 2500000.00, 5, 'Moderate'),
(202, 'Rita Sharma', 38, 1500000.00, 3, 'Conservative'),
(203, 'Rajiv Gupta', 29, 300000.00, 2, 'Aggressive'),
(204, 'Sneha Joshi', 34, 750000.00, 4, 'Moderate'),
(205, 'Vikram Nair', 50, 980000.00, 6, 'Conservative'),
(206, 'Kavita Desai', 27, 410000.00, 2, 'Aggressive'),
(207, 'Manoj Yadav', 32, 650000.00, 3, 'Moderate'),
(208, 'Preeti Kaur', 40, 1200000.00, 4, 'Conservative'),
(209, 'Sameer Khan', 36, 890000.00, 4, 'Aggressive'),
(210, 'Meena Reddy', 31, 520000.00, 3, 'Moderate');

select * from investors

-- select query

select investor_id,name,age,total_investment from investors where not name  = 'Anil Mehta'

select investor_id,name,age,total_investment from investors where not age = '29'

select name,age,total_investment,portfolio_count from investors where not total_investment = '750000'

select investor_id,name,age,total_investment,portfolio_count,risk_profile from investors where not name = 'Sneha Joshi' and not age = '27'

select age,total_investment from investors where not  total_investment > 650000.00

--update query

select * from investors

update investors set name = 'anurag jambhulkar' where investor_id = '201'

update investors set name = 'ayush madankar' where investor_id = '210'

update investors set total_investment = '1000000000' where name = 'ayush madankar'

update investors set total_investment = '9000000000' where name = 'anurag jambhulkar'

update investors set age = '20' where total_investment = '1000000000'

update investors set age = '21' where total_investment = '9000000000'


--delete query

select * from investors

delete from investors where name = 'Rajiv Gupta'

delete from investors where age  = '38'

delete from investors where total_investment = '1200000.00'

delete from investors where portfolio_count = '4'

delete from investors where investor_id = '207'

select * from investors