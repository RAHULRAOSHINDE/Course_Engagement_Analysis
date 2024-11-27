--Filter course details based on various predicates -- Status,TrackName,CourseDuration,OfferingMode

course_status= FILTER Courses_rel BY Status == 'active';

course_SAP= FILTER Participant_rel BY TrackName == 'SAP';

course_duration = FILTER Courses_rel BY CourseDuration > 4;

course_offering = FILTER Courses_rel BY OfferingMode == 'Online';

STORE course_status INTO '/user/pig_output/course_status.csv' USING PigStorage(',');

STORE course_SAP INTO '/user/pig_output/course_SAP.csv' USING PigStorage(',');

STORE course_duration INTO '/user/pig_output/course_duration.csv' USING PigStorage(',');

STORE course_offering INTO '/user/pig_output/course_offering.csv' USING PigStorage(',');