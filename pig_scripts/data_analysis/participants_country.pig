--Compute the count of participants based on country 

CountryParticipant= GROUP Participant_rel BY ParticipantCountry ;

CountryParticipantCount= FOREACH CountryParticipant GENERATE group,COUNT(Participant_rel);

STORE CountryParticipantCount INTO '/user/pig_output/participant_countries.csv' USING PigStorage(',');