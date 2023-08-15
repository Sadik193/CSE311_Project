create database account_details

use [account_details]



CREATE TABLE account (
  account_number varchar(15) DEFAULT NULL,
  branch_name  varchar(15) DEFAULT NULL,
  balance int DEFAULT NULL
) 



INSERT INTO account (account_number, branch_name, balance) 
VALUES
('A-101', 'Downtown', 50),
('A-215', 'Mianus', 300),
('A-102', 'Perryridge', 100),
('A-305', 'Round-Hill', 1050),
('A-201', 'Brighton', 500),
('A-222', 'Redwood', 500),
('A-217', 'Brighton', 300);






CREATE TABLE borrower (
  customer_name varchar(15) DEFAULT NULL,
  loan_number varchar(15) DEFAULT NULL
) 




INSERT INTO borrower(customer_name, loan_number) 
VALUES
('Adams', 'L-16'),
('Curry', 'L-93'),
('Hayes', 'L-15'),
('Jackson', 'L-14'),
('Jones', 'L-17'),
('Smith', 'L-11'),
('Smith', 'L-23'),
('Williams', 'L-17');






CREATE TABLE branch (
  branch_name varchar(15) DEFAULT NULL,
  branch_city varchar(15) DEFAULT NULL,
  assets int DEFAULT NULL
) 


INSERT INTO branch (branch_name, branch_city, assets) 
VALUES
('Brighton', 'Brooklyn', 7100000),
('Downtown', 'Brooklyn', 9000000),
('Mianus', 'Horseneck', 400000),
('North Town', 'Rye', 3700000),
('Perryridge', 'Horseneck', 1700000),
('Pownal', 'Bennington', 300000),
('Redwood', 'Palo Alto', 2100000),
('Round-Hill', 'Horseneck', 8000000);






CREATE TABLE customer (
  customer_name varchar(15) DEFAULT NULL,
  customer_street varchar(15) DEFAULT NULL,
  customer_city varchar(15) DEFAULT NULL
) 




INSERT INTO customer (customer_name, customer_street, customer_city) 
VALUES
('Adams', 'Spring', 'Pittsfield'),
('Brooks', 'Senator', 'Brooklyn'),
('Curry ', 'North', 'Rye'),
('Glenn', 'Sand Hill', 'Woodside'),
('Green', 'Walnut', 'Stamford'),
('Hayes', 'Main', 'Horseneck'),
('Lindsay', 'Park', 'Pittsfield'),
('Smith', 'North', 'Rye'),
('Turner', 'Putnam', 'Stamford'),
('Williams', 'Nassau', 'Princeton'),
('Johnson', 'Alma', 'Palo Alto'),
('Jones', 'Main', 'Harrison'),
('Lex', 'Spring', 'Pittsfield');






CREATE TABLE depositor (
  customer_name varchar(15) DEFAULT NULL,
  account_number varchar(15) DEFAULT NULL
) 




INSERT INTO depositor (customer_name, account_number) 
VALUES
('Hayes', 'A-102'),
('Johnson', 'A-101'),
('Johnson', 'A-201'),
('Jones', 'A-217'),
('Lindsey', 'A-222'),
('Smith', 'A-215'),
('Turner', 'A-305');






CREATE TABLE loan (
  loan_number varchar(15) DEFAULT NULL,
  branch_name varchar(15) DEFAULT NULL,
  amount int DEFAULT NULL
) 




INSERT INTO loan (loan_number, branch_name, amount) 
VALUES
('L-11', 'Round-Hill', 900),
('L-14', 'Downtown', 1500),
('L-15', 'Perryridge', 1500),
('L-16', 'Perryridge', 1300),
('L-17', 'Downtown', 1000),
('L-23', 'Redwood', 2000),
('L-93', 'Mianus', 500);








--Find out the customers' name, customers' city who have jointly borrowed a Loan

--SELECT customer.customer_name, customer.customer_city
--FROM borrower, customer
--WHERE borrower.customer_name = customer.customer_name
--AND borrower.loan_number IN(
   -- SELECT borrower.loan_number
   -- FROM borrower
   -- GROUP by borrower.loan_number
   -- HAVING COUNT(customer_name) >1) 
	--ORDER BY customer_street ASC




--Find out the Average deposited amount of the customers having a name that
--starts with ‘J’

--SELECT AVG(account.balance) AS 'AVERAGE BALANCE'
--FROM depositor,account
--WHERE depositor.account_number = account.account_number
--AND customer_name LIKE 'J%'





--List all the possible combinations of customer name and branch name. Sort the
--result based on the customer's name in descending order

--SELECT customer_name, branch.branch_name
--FROM customer,branch
--ORDER BY customer_name DESC





--Find out the customer’s details who does not have any deposit or loan account.

--SELECT *
--FROM customer
--WHERE customer.customer_name NOT IN(
 --   SELECT depositor.customer_name
  --  FROM depositor)
 --   AND customer.customer_name NOT IN(
  --      SELECT borrower.customer_name
   --     FROM borrower)





--Find out the Total Asset, Total Loan, Total Deposit of your Bank

--SELECT b.E as 'Total Assest', c.F as 'Total Balance', d.G 'Total Loan'
--FROM (SELECT SUM(branch.assets) E FROM branch) as b,
--	(SELECT SUM(account.balance) F FROM account) as c,
  --  (SELECT SUM(loan.amount) G FROM loan) as d





--Find out the customer name, street address, Account Number, Loan Number.
--Include the customer details also even if he/she doesn’t have any deposit or loan
--account. Sort the result set in ascending order of customer name.



--SELECT customer.customer_name, customer.customer_street, account_number, loan_number
--FROM customer
--LEFT JOIN depositor
--ON(customer.customer_name = depositor.customer_name)
--LEFT JOIN borrower
--ON(customer.customer_name = borrower.customer_name)  
--ORDER BY customer.customer_name ASC





