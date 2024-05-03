#1 What is the gender distribution in the dataset?
Select gender, count(gender) as gender_dist
from loan_ability
group by gender;

#2 How many individuals in the dataset are married?
select count(Married)
from loan_ability
where married = 'yes';

#3  What is the average applicant income for graduates in the dataset?
select Education, avg(applicant_income)
from loan_ability
group by education;

#4 How many applicant has a credit history of 1?
select count(Credit_History)
from loan_ability
where Credit_History = 1;

#5 What is the most common term (in months) for loans in the dataset?
select term, term/12 as months, count(term) as commom_term 
from loan_ability
group by term 
order by commom_term desc
limit 1;

#6 How many applicants in the dataset are self-employed?
select count(self_employed)
from loan_ability
where Self_Employed = 'yes';

#7 What is the average coapplicant income for individuals in urban areas?
select avg(coapplicant_income)
from loan_ability
where Area ='urban';

#8 How many applicants in rural areas have a status of "N"?
select count(status)
from loan_ability
where area = 'rural' and status = 'N';

#9 What is the highest loan amount in the dataset?
select max(loan_amount)
from loan_ability;

#10 What is the education level of the applicant with the highest combined income (applicant income + coapplicant income)?
select education 
from loan_ability
order by (applicant_income + coapplicant_income)desc
limit 1;
