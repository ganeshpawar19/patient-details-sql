create database Hospital;
use Hospital;
create table Patient_table (date date, Patient_id int, Patient_Name varchar(30), age int, Weight decimal (4,2), Gender char, Location varchar(40), Phone_number bigint, Disease varchar(30), Doctor_name varchar(30), Doctor_id int);
desc Patient_table;

insert into patient_table values ('2022-07-18', 1,  'Aman', 22, 55.5, 'M', 'Mumbai', 9090909090, 'Cold', 'Siddharth', 101);
insert into patient_table values ('2022-07-14', 2,  'Naman', 30, 75.5, 'M', 'Mumbai', 9090909088, 'Maleria', 'Sharma', 108),
('2022-07-10', 3,  'Asha', 20, 65.5, 'F', 'Pune', 5555909088, 'Dengue', 'Sharma', 108),
('2022-07-15', 4,  'Ayush', 30, 70.5, 'M', 'Mumbai', 9050909088, 'Fever', 'Siddharth', 101),
('2022-07-12', 5,  'Namrata', 30, 70.5, 'F', 'Noida', 9090769088, 'Corona', 'Akhil', 110);
insert into patient_table values ('2022-08-18', 6,  'Priya', 40, 68.5, 'F', 'Mumbai', 92344909088, 'Viral', 'Siddharth', 101);
insert into patient_table values ('2022-08-10', 6,  'Siddharth', 50, 68.5, 'M', 'Mumbai', 92344909088, 'Viral', 'Siddharth', 101);
Select * from patient_table;

select count(patient_id) from Patient_table;

select Patient_id, Patient_Name, Gender , disease from patient_table
order by age desc
limit 1;

Select patient_id, patient_name from Patient_table
where date = curdate();

select upper(patient_name) as New_name from Patient_table;

select Patient_name, length(patient_name) from Patient_table;

select Patient_name, Gender from Patient_table;

select concat(Patient_Name," ", Doctor_name) as Combine_name from Patient_table;

Select log10(age) from Patient_table;

Select year(date) as Years from patient_table;

select 
CASE
when patient_name = Doctor_name then "Null"
else Patient_name
end
from Patient_table;

select 
CASE
when age > 40 then "Yes"
else "No"
end
from Patient_table;

-- OR

select if (age> 40, "Yes", "No") from Patient_table;

select Doctor_name, count(*) as duplicate from Patient_table
group by doctor_name
having count(*) > 1;






