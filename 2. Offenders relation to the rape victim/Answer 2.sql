 SELECT area_name,
 sum(no_of_cases_in_which_offenders_were_known_to_the_victims) as "Known to victim",
 sum(no_of_cases_in_which_offenders_were_neighbours) as Neighbour,
 sum(no_of_cases_in_which_offenders_were_other_known_persons)as "Familiar pupils" ,
 sum(no_of_cases_in_which_offenders_were_parentsclose_family_members)as "Parents close ones" ,
 sum(no_of_cases_in_which_offenders_were_relatives)as "Relatives"
 from OffenderRelation
 GROUP by area_name
 