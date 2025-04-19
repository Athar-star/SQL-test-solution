show databases;
use customers_database;
show tables;
select*from customers;

-- Find all customers who live in the state of ‘delhi’ and have more than 100 points ?
select * from 
customers
where state = 'delhi'
and points > 100 ;

-- Display the names and income of customers whose income is between 50,000 and 100,000 ?

SELECT first_name, last_name, monthly_income
FROM customers
WHERE monthly_income BETWEEN 50000 AND 100000;

-- List all customers whose name starts with the letter A ?
select*from
customers
where first_name like "A%";

select * from 
customers
where first_name regexp "^A";

-- Find customers who either live in ‘karnataka’ or have more than 30,000 points?
select * from
customers
where state = "karnataka"
and points < 30000;

-- Retrieve the customers with the highest monthly income?
SELECT * 
FROM customers 
ORDER BY monthly_income DESC  -- solution 1
LIMIT 1;


SELECT * 
FROM customers -- solution 2
WHERE monthly_income = (
    SELECT MAX(monthly_income) 
    FROM customers
);

-- Find the customers with the second highest monthly income?
select* from
customers 
order by monthly_income desc
limit 1 offset 1;

-- List all the customers whose phone number is missing (either NULL or an empty string)?
SELECT * FROM customers
WHERE phone IS NULL OR phone = '';

-- Find all customers whose sector is not missing ?
select * from customers
where sector is not null or sector = '' ;

-- Get the list of unique states from the customers table ?
select distinct state from customers ; -- distinct for finding unique 

-- Count how many different cities the customers come from ?
SELECT COUNT(DISTINCT city) AS city_count
FROM customers;

-- Get the names of all customers whose name is exactly 5 characters long ?
select first_name, last_name from customers
where length(first_name) = 5; -- solution 1

-- Get the top five customers with the highest points ?
select * from customers
order by monthly_income desc
limit 5 ;

-- Find all the customers whose name contains only alphabets and is at least 3 characters long ?
select first_name, last_name  from customers 
where length(first_name) = 3 ;

-- Show customers whose address includes the word ‘Road’ ?
select * from customers 
where address like "road"; 

-- Find all customers whose name end with the letter ‘n’ ?
select * from customers
where first_name regexp 'n$' ;
-- Show all customers sorted by monthly income in descending order ?
select * from customers 
order by monthly_income desc ;

-- Display customers who do not live in ‘Mumbai’ ?
select * from customers 
where city != 'Mumbai';

-- List customers who have points greater than 10,000 and live in either ‘Delhi’ , ‘Pune’ , or ‘chennai’ ?
SELECT *
FROM customers
WHERE points > 10000
  AND city IN ('Delhi', 'Pune', 'Chennai');





