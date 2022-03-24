
Select Children_2001_2012.area_name, 
Children_2001_2012.Murder+children_2013.Other_murder as "Children_Murder_2001_2013",
Children_2001_2012.Rape+children_2013.rape as "Children_Rape_2001_2013",
Children_2001_2012.Kidnapping_and_Abduction+children_2013.Kidnapping_and_Abduction as "Children_Kidnapping_2001_2013",
Women_2001_2012.Rape+women_2013.Rape as "Women_Rape_2010_2013",
Women_2001_2012.Kidnapping_and_Abduction+women_2013.Kidnapping_and_Abduction as "Women_Kidnapping_2001_2013",
Women_2001_2012.Dowry_Deaths+women_2013.Dowry_Deaths as "Women_DowryDeaths_2001_2013",
Children_2001_2012.Murder+children_2013.Other_murder+
Children_2001_2012.Rape+children_2013.rape+
Children_2001_2012.Kidnapping_and_Abduction+children_2013.Kidnapping_and_Abduction+
Women_2001_2012.Rape+women_2013.Rape+
Women_2001_2012.Kidnapping_and_Abduction+women_2013.Kidnapping_and_Abduction+
Women_2001_2012.Dowry_Deaths+women_2013.Dowry_Deaths As "Total_Crime"
From Children_2001_2012 join children_2013
ON Children_2001_2012.district = children_2013.DISTRICT 
join Women_2001_2012
on Children_2001_2012.DISTRICT = Women_2001_2012.DISTRICT
join women_2013
on Children_2001_2012.DISTRICT = women_2013.DISTRICT
Group by Children_2001_2012.area_name 
Order By "Total_Crime" DESC


