SELECT DISTINCT (group_name), 
sum (victims_upto_10_yrs) as AgeUpto10,

sum (victims_upto_10_15_yrs) as AgeUpto10_15, 

sum (victims_upto_15_18_yrs) as AgeUpto15_18, 

sum (victims_upto_18_30_yrs) as AgeUpto18_30, 

sum (victims_upto_30_50_yrs) as AgeUpto30_50, 

sum (victims_above_50_yrs) as AgeAbove50 
FROM Murderagewise
where group_name not NULL

Group by group_name