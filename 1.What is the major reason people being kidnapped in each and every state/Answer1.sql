Select kidnap.area_name, kidnap.sub_group_name,
Max (Kidnap.Cases) as "Maximum Cases" From 


(SELECT DISTINCT area_name,sub_group_name,k_a_cases_reported as Cases
 
FROM Kidnapping_ass
Where sub_group_name not like '14. Total%'
GROUP BY area_name,sub_group_name order by cases desc) Kidnap

Group by area_name
Order by "Maximum Cases" Desc


