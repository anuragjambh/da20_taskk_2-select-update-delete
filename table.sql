CREATE TABLE employee_performance (
    review_id INT,
    emp_id INT,
    year INT,
    rating INT,
    bonus_amount DECIMAL(8,2),
    reviewer VARCHAR(100)
);

INSERT INTO employee_performance VALUES
(301, 1, 2023, 4, 10000.00, 'Rajeev Tiwari'),
(302, 2, 2023, 5, 15000.00, 'Meena Sharma'),
(303, 3, 2023, 3, 7000.00, 'Amit Kumar'),
(304, 4, 2023, 5, 18000.00, 'Nidhi Jain'),
(305, 5, 2023, 4, 9000.00, 'Vikram Singh'),
(306, 6, 2023, 3, 6000.00, 'Priya Mehta'),
(307, 7, 2023, 2, 3000.00, 'Nikhil Rana'),
(308, 8, 2023, 4, 8500.00, 'Sonal Raj'),
(309, 9, 2023, 5, 12000.00, 'Reena Shah'),
(310, 10, 2023, 3, 5000.00, 'Rakesh Joshi');

select * from employee_performance 

--select query

select * from employee_performance where not rating > 4

select emp_id,year,reviewer from employee_performance where not reviewer = 'Rajeev Tiwari' 

select emp_id,year,reviewer from employee_performance where not emp_id = '6' and not emp_id = '4' 

select emp_id,year,reviewer from employee_performance where not emp_id = '1' and not emp_id = '8' and not reviewer = 'Nikhil Rana'
 
select emp_id,year,reviewer from employee_performance where not rating = '5' and not emp_id = '10'

--update query

select * from employee_performance 

select * from employee_performance where reviewer = 'Nidhi Jain'

update employee_performance set reviewer = 'ayu' where bonus_amount = '18000.00'

select * from employee_performance

update employee_performance set bonus_amount = '12345.6' where reviewer = 'Amit Kumar' 

update employee_performance set reviewer = 'khushbu patle' where bonus_amount = '9000.00'

select * from employee_performance

update employee_performance set year = '2025'

select * from employee_performance

update employee_performance set bonus_amount = '90000.00' where reviewer = 'ayu'

--delete query

select * from employee_performance 

delete from employee_performance where reviewer = 'ayu'

delete from employee_performance where bonus_amount = '10000.00'

delete from employee_performance where rating = '2'

delete from employee_performance where review_id = '308'

delete from employee_performance where review_id = '306'

select * from employee_performance

