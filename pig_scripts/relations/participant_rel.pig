--To create a relation named Participant_rel by defining the entire schema with appropriate datatypes 

Participant_rel = LOAD '/user/Digi_Analysis/Participants.csv' USING PigStorage(',') AS (
ParticipantId:int,
ParticipantMailId:chararray,
ParticipantCountry:chararray,
InstructorId:int,
CourseCode:chararray,
CourseOfferingId:int,
Source:chararray,
DateActionPerformed:chararray,
TrainingHours:int,
Location:chararray,
OfferingMode:chararray,
Status:chararray,
TrackName:chararray
);
