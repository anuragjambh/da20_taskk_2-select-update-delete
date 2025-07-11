CREATE TABLE investigations (
    investigation_id INT PRIMARY KEY,
    case_id INT,
    officer_name VARCHAR(100),
    days_taken INT,
    suspect_count INT,
    status VARCHAR(20)
);

INSERT INTO investigations VALUES
(301, 1, 'Inspector Raj', 30, 3, 'Solved'),
(302, 2, 'Officer Leena', 45, 2, 'Pending'),
(303, 3, 'SI Pradeep', 25, 1, 'Solved'),
(304, 4, 'ACP Kiran', 60, 4, 'Ongoing'),
(305, 5, 'Inspector Sahu', 15, 2, 'Solved'),
(306, 6, 'DSP Vinay', 40, 3, 'Ongoing'),
(307, 7, 'SI Sharma', 18, 1, 'Solved'),
(308, 8, 'Officer Ritu', 22, 2, 'Pending'),
(309, 9, 'Inspector Khan', 50, 3, 'Solved'),
(310, 10, 'DSP Mehta', 35, 2, 'Ongoing');

select * from investigations

--select query

select  case_id,officer_name,days_taken,suspect_count from investigations where not officer_name = 'Officer leena'

select officer_name,days_taken,suspect_count from investigations where not suspect_count = '3'

select investigation_id,case_id,officer_name,status from investigations where not status = 'Ongoing'

select investigation_id,officer_name,days_taken,suspect_count,status from investigations where not officer_name = 'ASP Kiran'
and not status = 'Pending'

select investigation_id,officer_name,days_taken,suspect_count,status from investigations where not investigation_id = '306'
and not days_taken = '40'
and not status = 'Solved'

--update query

select * from investigations

update investigations set officer_name = 'ACP anurag jambhulkar' where  investigation_id = '301'

update investigations set officer_name = 'DSP ayush madankar' where  investigation_id = '309'

update investigations set officer_name = 'officer khushbu' where case_id = '4'

update investigations set status = 'done' where officer_name = 'DSP Vinay'

update investigations set suspect_count = '100' where officer_name = 'DSP ayush madankar'

--delete query

select * from investigations

delete from investigations where status = 'done'

delete from investigations where suspect_count = '4'

delete from investigations where officer_name = 'SI Sharma'

delete from investigations where case_id = '10'

delete from investigations where investigation_id = '308'

select * from investigations