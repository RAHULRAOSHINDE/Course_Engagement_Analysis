--Identify the participants enrolled for the most demanding or popular courses 

courses_data = FOREACH Courses_rel GENERATE CourseOwnerId,CourseTitle;

courses_group = GROUP courses_data BY CourseTitle;

top_courses = FOREACH courses_group GENERATE courses_data.CourseOwnerId AS CourseOwnerId,group,COUNT(courses_data) AS popularity;

topcourses_order = ORDER top_courses BY popularity DESC;

topcourses_distinct = DISTINCT topcourses_order;

STORE topcourses_distinct INTO '/user/pig_output/popular_courses.csv' USING PigStorage(',');