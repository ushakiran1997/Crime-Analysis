Select 
  crime_2012.STATE_UT,STATE.Population,
sum(crime_2012.TOTALIPCCRIMES + crime_2013.TOTALIPCCRIMES + 
crime_2014.TotalCognizableIPCcrimes )As Total_Crimes 


 from crime_2012 join crime_2013
on crime_2012.STATE_UT = crime_2013.STATE_UT 
join crime_2014
on crime_2012.STATE_UT=crime_2014.STATE_UT JOIN STATE
on crime_2012.STATE_UT=STATE.Area_Name
group by crime_2012.STATE_UT order by total_crimes ASC