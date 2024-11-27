--Create a relation named Courses_rel without schema

Courses_rel_without_schema = LOAD '/user/Digi_Analysis/Courses.csv' USING PigStorage(',');