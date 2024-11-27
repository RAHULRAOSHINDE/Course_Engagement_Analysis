--Compute the average training hours of each course 

CourseTitle = GROUP Courses_rel BY CourseTitle;

AvgCourseHours = FOREACH (GROUP Courses_rel BY CourseTitle) GENERATE group AS course,AVG(Courses_rel.CourseDuration);

STORE AvgCourseHours INTO '/user/pig_output/avg_training_duration.csv' USING PigStorage(',');