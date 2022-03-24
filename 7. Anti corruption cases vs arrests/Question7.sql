Select Anti_Corruprion_Cases.area_name ,Anti_Corruprion_Cases.year ,
sum(ac02_no_of_cases_registered_during_the_year) As "Total Anti Corruption Cases",
sum(aca02_no_of_persons_arrested_during_the_year) As "Total Anti Corruption Arrest"
from Anti_Corruprion_Cases join Anti_corruption_arrests 
on Anti_Corruprion_Cases.area_name=Anti_corruption_arrests.area_name group by 
Anti_Corruprion_Cases.area_name ,Anti_Corruprion_Cases.year