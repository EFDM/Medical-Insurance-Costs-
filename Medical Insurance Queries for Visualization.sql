Select count(Med_ID) as 'Normal BMI Count', Region
from Users
where BMI between 18.5 AND 24.9
group by Region;

Select count(Med_ID) as 'Unhealthy BMI Count', Region
From Users
Where BMI > 24.9 OR BMI < 18.5
Group By Region;

Select ROUND(AVG(Charges), 2) as 'Average National Costs for Optimal BMI'
From Users 
Where BMI BETWEEN 18.5 AND 24.9;

Select ROUND(AVG(Charges), 2) as 'Average National Costs for Unhealthy BMI'
From Users
Where BMI > 24.9 OR BMI < 18.5;

Select ROUND(AVG(Charges), 2) * 100 / (Select ROUND(AVG(Charges), 2) FROM Users Where BMI BETWEEN 18.5 AND 24.9) - 100 as 
'Insurance Cost Percentage Premium for Unhealthy BMI'
FROM Users
Where BMI > 24.9 OR BMI < 18.5 