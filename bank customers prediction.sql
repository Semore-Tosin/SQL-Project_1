#1 How many customers are in the dataset?
select count(*) as total_customer
from bank_prediction;

#2 What is the average credit score of customers in france?
select country, avg(credit_score)
from bank_prediction
where country = 'france'
group by country;

#3 how many customers are male and how many are female?
select gender, count(*)
from bank_prediction
group by gender;

#4 What is the maximun age among customers who churned?
select churn, max(age)
from bank_prediction
where churn = 1
group by churn;

#5 What is the total estimated salary for customers in spain who have not churned?
select country, sum(estimated_salary)
from bank_prediction
where churn = 0
group by country
having country = 'spain';

#6 List the top 5 countries with the highest credit scores
select*
from bank_prediction
limit 5;

#7 What is the average age of cuatomers who have both a xcredit card and are active members?
select avg(age) 
from bank_prediction
where credit_card = 1 and active_member = 1;

#8 What is the total number of customers in each country?
select country, count(*) as totalcustomers
from bank_prediction
group by country;

#9 What is the average balance for each country, and only show countries where the average balance is greater than 50,000?
select country, avg(balance)
from  bank_prediction
group by country
having avg(balance) > 50000;

#10 What is the average tenure for customers of each gender and country
Select gender, country, avg(tenure)
from bank_prediction
group by gender, country
order by country asc;