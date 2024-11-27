--User Defined Funtion to replace Blank/NULL instructor IDs with valid ID

instructorId_is_null = FILTER Participant_rel BY InstructorId is null;

REGISTER /root/Desktop/big-data-analytics-rwc/Pig/IDValidator.jar;

DEFINE ValidateInstructorUDF com.course.validation.InstructorValidator();

instructor_validation = FOREACH instructorId_is_null GENERATE ParticipantId,
ParticipantMailId,
ParticipantCountry,
ValidateInstructorUDF(OfferingMode) AS InstructorId,
CourseCode,
CourseOfferingId,
Source,
DateActionPerformed,
TrainingHours,
Location,
OfferingMode,
Status,
TrackName;

STORE instructor_validation INTO '/user/pig_output/instructor_validation.csv' USING PigStorage(',');
