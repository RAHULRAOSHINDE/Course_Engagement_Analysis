--Identify the most popular courses 

course_group = GROUP Courses_rel BY CourseTitle;

course_count= FOREACH course_group  GENERATE group AS CourseTitle ,COUNT(Courses_rel) AS popularity;

course_order = ORDER course_count BY popularity DESC;

--course_limit = LIMIT course_order 1;

STORE course_order INTO '/user/pig_output/popular_courses.csv' USING PigStorage(',');

--dump course_limit;