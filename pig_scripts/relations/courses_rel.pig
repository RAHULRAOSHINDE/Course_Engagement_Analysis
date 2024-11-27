--Create a relation named Courses_rel with defining the schema 

Courses_rel = LOAD '/user/Digi_Analysis/Courses.csv' USING PigStorage(',') AS (
CourseOwnerId:int,
CourseOwnerMailId:chararray,
CourseCode:chararray,
DepartmentCode:chararray,
Source:chararray,
DateCreated:chararray,
OfferingMode:chararray,
Stacks:chararray,
Status:chararray,
CourseTitle:chararray,
TaskName:chararray,
CourseDuration:int
);