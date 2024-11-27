--Associate participant details with course details and list the particulars based on various conditions

participant_course_join = JOIN Participant_rel BY ParticipantId,Courses_rel BY CourseOwnerId;

result_data = FOREACH participant_course_join GENERATE
Participant_rel::ParticipantId,Participant_rel::ParticipantMailId,
Participant_rel::ParticipantCountry,Participant_rel::TrainingHours,Participant_rel::Location,Participant_rel::Status,Courses_rel::CourseTitle;
 
filtered_data = FILTER result_data BY TrainingHours > 6;

STORE filtered_data INTO '/user/pig_output/training_duration.csv' USING PigStorage(',');