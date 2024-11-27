--Find the distinct countries from where C-Learn is been accessed 

colearn_data = FOREACH Participant_rel GENERATE ParticipantCountry,Location;

colearn_filter = FILTER colearn_data BY Location MATCHES 'Co-Learn_Application';

colearn_distinct = DISTINCT colearn_filter;

STORE colearn_distinct INTO '/user/pig_output/distinct_countries.csv' USING PigStorage(',');

--dump colearn_distinct;