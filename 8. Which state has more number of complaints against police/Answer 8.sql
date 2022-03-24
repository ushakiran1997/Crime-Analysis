SELECT area_name, Sum (cpa_cases_registered) As "Cases Registered" FROM PoliceComplaints
Group by area_name
Order By "Cases Registered" DESC
