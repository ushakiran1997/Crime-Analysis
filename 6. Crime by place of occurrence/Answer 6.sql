select CPoccurrence_2001_2012.area_name,
sum(CPoccurrence_2014.ATM_Dacoity_Cases_reported) As "ATM Dacoity",
sum(CPoccurrence_2001_2012.BANKS_Dacoity+CPoccurrence_2013.banks__dacoity+
CPoccurrence_2014.Bank_Dacoity_Cases_reported) as "Bank Dacioty",
sum(CPoccurrence_2001_2012.HIGHWAYS_Dacoity+CPoccurrence_2013.HIGHWAYS__Dacoity+
CPoccurrence_2014.Highways_Dacoity_Cases_reported) As "Highway Dacoity",
sum(CPoccurrence_2001_2012.RAILWAYS_Dacoity+CPoccurrence_2013.RAILWAYS__Dacoity+
CPoccurrence_2014.Railways_Dacoity_Cases_reported) As "Railways Dacoity",
sum(CPoccurrence_2001_2012.RESIDENTIAL_PREMISES_Dacoity+CPoccurrence_2013.RESIDENTIAL_PREMISES__Dacoity+
CPoccurrence_2014.Residence_Dacoity_Cases_reported) As "Residence Dacoity",
sum(CPoccurrence_2014.Religious_Places_Dacoity_Cases_reported) As "Religious Place Dacoity",
sum(CPoccurrence_2001_2012.RIVER_and_SEA_Dacoity+CPoccurrence_2013.RIVER_and_SEA__Dacoity+
CPoccurrence_2014.RiverOrSea_Dacoity_Cases_reported) As "River And Sea Dacoity",
sum(CPoccurrence_2001_2012.COMMERCIAL_ESTABLISHMENTS_Dacoity+CPoccurrence_2013.COMMERCIAL_ESTABLISHMENTS__Dacoity+
CPoccurrence_2014.CommEst_Dacoity_Cases_reported) As "Commercial Establishment Dacoity",
sum(CPoccurrence_2001_2012.OTHER_PLACES_Dacoity+CPoccurrence_2013.OTHER_PLACES__Dacoity+
CPoccurrence_2014.OtherPlaces_Dacoity_Cases_reported) As "Other Places Dacoity"

from CPoccurrence_2001_2012
JOIN CPoccurrence_2014
ON LOWER(CPoccurrence_2001_2012.Area_Name) = lower(CPoccurrence_2014.Area_Name)
Join CPoccurrence_2013
On LOWER(CPoccurrence_2001_2012.area_name) = LOWER(CPoccurrence_2014.area_name)
group by CPoccurrence_2001_2012.area_name;