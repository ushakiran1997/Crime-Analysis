SELECT area_name,
sum(rape_cases_reported) as "Incest Rape Cases" 
FROM Victim where subgroup="Victims of Incest Rape"  
group by area_name
Order By "Incest Rape Cases" DESC