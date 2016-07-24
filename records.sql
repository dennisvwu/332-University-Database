/* 3 PROFESSORS */
INSERT INTO PROFESSOR(Professor_SSN, Professor_Name, Professor_Street, Professor_City, Professor_State, Professor_Zip, Professor_Phone_Area, Professor_Phone_Number, Professor_Sex, Professor_Title, Professor_Salary)
VALUES (762039736, "Pat Norris", "800 N State College Blvd", "Fullerton", "CA", 92831, 714, 5557985, 'M', "Dr.", 104231);

INSERT INTO PROFESSOR(Professor_SSN, Professor_Name, Professor_Street, Professor_City, Professor_State, Professor_Zip, Professor_Phone_Area, Professor_Phone_Number, Professor_Sex, Professor_Title, Professor_Salary)
VALUES (146928993, "Elizabeth Mill", "800 N State College Blvd", "Fullerton", "CA", 92831, 714, 5557787, 'F', "Dr.", 100123);

INSERT INTO PROFESSOR(Professor_SSN, Professor_Name, Professor_Street, Professor_City, Professor_State, Professor_Zip, Professor_Phone_Area, Professor_Phone_Number, Professor_Sex, Professor_Title, Professor_Salary)
VALUES (013861162, "Mellisa Saunders", "800 N State College Blvd", "Fullerton", "CA", 92831, 714, 5557876, 'F', "Dr.", 102366);

/* PROFESSOR degrees */
INSERT INTO DEGREE(Degree_Owner_SSN, Degree_Name) /* PROFESSOR #1 */
VALUES (762039736, "Ph.D Computer Science");

INSERT INTO DEGREE(Degree_Owner_SSN, Degree_Name)
VALUES (762039736, "M.A Computer Science");

INSERT INTO DEGREE(Degree_Owner_SSN, Degree_Name)
VALUES (762039736, "B.S Computer Science");

INSERT INTO DEGREE(Degree_Owner_SSN, Degree_Name) /* PROFESSOR #2 */
VALUES (146928993, "Ph.D Computer Engineering");

INSERT INTO DEGREE(Degree_Owner_SSN, Degree_Name)
VALUES (146928993, "M.A Computer Engineering");

INSERT INTO DEGREE(Degree_Owner_SSN, Degree_Name)
VALUES (146928993, "B.S Mathematics");

INSERT INTO DEGREE(Degree_Owner_SSN, Degree_Name) /* PROFESSOR #3 */
VALUES (013861162, "Ph.D Computer Science");

INSERT INTO DEGREE(Degree_Owner_SSN, Degree_Name)
VALUES (013861162, "M.A Computer Science");

INSERT INTO DEGREE(Degree_Owner_SSN, Degree_Name)
VALUES (013861162, "B.S Computer Science");

/* 2 Departments */
INSERT INTO DEPARTMENT(Department_Number, Department_Name, Department_Phone, Department_Location, Department_Chair_Person)
VALUES (98765, "Computer Science", 7145558765, "CS-600", 762039736);

INSERT INTO DEPARTMENT(Department_Number, Department_Name, Department_Phone, Department_Location, Department_Chair_Person)
VALUES (12345, "Computer Engineering", 7145552345, "EGCP-500", 146928993);

/* 4 Courses */
INSERT INTO COURSE(Course_Department_Number, Course_Number, Course_Title, Course_Textbook, Course_Units)
VALUES (98765, "CPSC-131", "Data Structures Concepts", "Introduction to Data Structures, Tenth Edition", 3);

INSERT INTO COURSE(Course_Department_Number, Course_Number, Course_Title, Course_Textbook, Course_Units)
VALUES (98765, "CPSC-311", "Technical Writing for Computer Science", "Into to Writing", 4);

INSERT INTO COURSE(Course_Department_Number, Course_Number, Course_Title, Course_Textbook, Course_Units)
VALUES (12345, "EGCP-280", "Microcontrollers", "Microcontrollers: A Real Guide", 3);

INSERT INTO COURSE(Course_Department_Number, Course_Number, Course_Title, Course_Textbook, Course_Units)
VALUES (12345, "EGCP-470", "Projects in Computer Engineering", "Computer Engineering Projects, Third Edition", 4);

/* Prerequisets */
INSERT INTO PREREQUISITE(Parent_Course, Child_Course)
VALUES ("CPSC-121", "CPSC-131");

INSERT INTO PREREQUISITE(Parent_Course, Child_Course)
VALUES ("CPSC-131", "CPSC-311");

INSERT INTO PREREQUISITE(Parent_Course, Child_Course)
VALUES ("EGCP-180", "EGCP-280");

INSERT INTO PREREQUISITE(Parent_Course, Child_Course)
VALUES ("EGCP-330", "EGCP-470");


/* 5 Comptuer Programming Sections*/
INSERT INTO SECTION(Section_Number, Section_Course_Number, Section_Professor_SSN, Classroom, Meeting_Days, Start_Time, End_Time, Seats)
VALUES (74937, "CPSC-131", "762039736", "CS-355", "TTH", "10:30am", "11:45pm", 30);

INSERT INTO SECTION(Section_Number, Section_Course_Number, Section_Professor_SSN, Classroom, Meeting_Days, Start_Time, End_Time, Seats)
VALUES (23802, "CPSC-131", "762039736", "CS-355", "TTH", "1:30pm", "2:45pm", 30);

INSERT INTO SECTION(Section_Number, Section_Course_Number, Section_Professor_SSN, Classroom, Meeting_Days, Start_Time, End_Time, Seats)
VALUES (85390, "CPSC-311", "762039736", "CS-555", "MW", "10:30am", "11:45pm", 30);

INSERT INTO SECTION(Section_Number, Section_Course_Number, Section_Professor_SSN, Classroom, Meeting_Days, Start_Time, End_Time, Seats)
VALUES (65487, "CPSC-311", "013861162", "CS-455", "TH", "10:30am", "11:45pm", 45);

INSERT INTO SECTION(Section_Number, Section_Course_Number, Section_Professor_SSN, Classroom, Meeting_Days, Start_Time, End_Time, Seats)
VALUES (71157, "CPSC-311", "013861162", "CS-235", "T", "10:30am", "11:45pm", 30);


/* 3 Engineering Sections */
INSERT INTO SECTION(Section_Number, Section_Course_Number, Section_Professor_SSN, Classroom, Meeting_Days, Start_Time, End_Time, Seats)
VALUES (15853, "EGCP-280", 146928993, "CS-205", "TH", "10:30am", "11:45pm", 45);

INSERT INTO SECTION(Section_Number, Section_Course_Number, Section_Professor_SSN, Classroom, Meeting_Days, Start_Time, End_Time, Seats)
VALUES (96241, "EGCP-470", 146928993, "CS-110", "TTH", "10:30am", "11:45pm", 30);

INSERT INTO SECTION(Section_Number, Section_Course_Number, Section_Professor_SSN, Classroom, Meeting_Days, Start_Time, End_Time, Seats)
VALUES (98723, "EGCP-470", 146928993, "CS-105", "TTH", "10:30am", "11:45pm", 30);


/* 10 Students */
INSERT INTO STUDENT(Student_CWID, Student_FName, Student_LName, Student_Address, Student_Phone, Major)
VALUES (1837492844, "Sarah", "Sue", "132 Nutwood Ave. Fullerton, CA 92831", 7145558315, 98765);

INSERT INTO STUDENT(Student_CWID, Student_FName, Student_LName, Student_Address, Student_Phone, Major)
VALUES (9872589514, "Joshua", "Parson", "450 Nutwood Ave. Fullerton, CA 92831", 7145552354, 98765);

INSERT INTO STUDENT(Student_CWID, Student_FName, Student_LName, Student_Address, Student_Phone, Major)
VALUES (1598523575, "Franky", "Tong", "132 Nutwood Ave. Fullerton, CA 92831", 7145558521, 98765);

INSERT INTO STUDENT(Student_CWID, Student_FName, Student_LName, Student_Address, Student_Phone, Major)
VALUES (1478963250, "Stephanie", "Fong", "450 Nutwood Ave. Fullerton, CA 92831", 7145555896, 98765);

INSERT INTO STUDENT(Student_CWID, Student_FName, Student_LName, Student_Address, Student_Phone, Major)
VALUES (5812301578, "Richard", "Jackson", "450 Nutwood Ave. Fullerton, CA 92831", 7145551793, 98765);

INSERT INTO STUDENT(Student_CWID, Student_FName, Student_LName, Student_Address, Student_Phone, Major)
VALUES (5872365470, "Dylan", "Anderson", "123 Fullerton Blvd Fullerton, CA 92831", 7145558595, 98765);

INSERT INTO STUDENT(Student_CWID, Student_FName, Student_LName, Student_Address, Student_Phone, Major)
VALUES (3579514879, "David", "Lee", "123 Fullerton Blvd Fullerton, CA 92831", 7145554879, 12345);

INSERT INTO STUDENT(Student_CWID, Student_FName, Student_LName, Student_Address, Student_Phone, Major)
VALUES (7890286981, "Ashley", "Parker", "350 Fullerton Blvd Fullerton, CA 92831", 7145556981, 12345);

INSERT INTO STUDENT(Student_CWID, Student_FName, Student_LName, Student_Address, Student_Phone, Major)
VALUES (2486309715, "John", "Smith", "850 Fullerton Blvd Fullerton, CA 92831", 7145553597, 12345);

INSERT INTO STUDENT(Student_CWID, Student_FName, Student_LName, Student_Address, Student_Phone, Major)
VALUES (7093214568, "Tim", "Jones", "456 Fullerton Blvd Fullerton, CA 92831", 7145554587, 12345);

/* 10 Student Minors */

/* CS Minors */
INSERT INTO MINORS(Minor_Dept, Minor_Student_CWID)
VALUES (98765, 3579514879);

INSERT INTO MINORS(Minor_Dept, Minor_Student_CWID)
VALUES (98765, 7890286981);

INSERT INTO MINORS(Minor_Dept, Minor_Student_CWID)
VALUES (98765, 2486309715);

INSERT INTO MINORS(Minor_Dept, Minor_Student_CWID)
VALUES (98765, 7093214568);

/* ECP Minors */
INSERT INTO MINORS(Minor_Dept, Minor_Student_CWID)
VALUES (12345, 1837492844);

INSERT INTO MINORS(Minor_Dept, Minor_Student_CWID)
VALUES (12345, 9872589514);

INSERT INTO MINORS(Minor_Dept, Minor_Student_CWID)
VALUES (12345, 1598523575);

INSERT INTO MINORS(Minor_Dept, Minor_Student_CWID)
VALUES (12345, 1478963250);

INSERT INTO MINORS(Minor_Dept, Minor_Student_CWID)
VALUES (12345, 5812301578);

INSERT INTO MINORS(Minor_Dept, Minor_Student_CWID)
VALUES (12345, 5872365470);

/* 30 Enrollments */
INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (1837492844, 74937, "CPSC-131", 'A');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (1837492844, 15853, "EGCP-280", 'B+');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (1837492844, 96241, "EGCP-470", 'A');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (9872589514, 23802, "CPSC-131", 'B+');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (9872589514, 15853, "EGCP-280", 'C+');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (9872589514, 96241, "EGCP-470", 'B');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (1598523575, 71157, "CPSC-311", 'B+');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (1598523575, 15853, "EGCP-280", 'B+');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (1598523575, 98723, "EGCP-470", 'B-');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (1478963250, 65487, "CPSC-311", 'A-');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (1478963250, 15853, "EGCP-280", 'B+');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (1478963250, 96241, "EGCP-470", 'C-');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (5812301578, 23802, "CPSC-131", 'C-');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (5812301578, 15853, "EGCP-280", 'B-');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (5812301578, 98723, "EGCP-470", 'A-');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (5872365470, 74937, "CPSC-131", 'B-');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (5872365470, 15853, "EGCP-280", 'A');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (5872365470, 98723, "EGCP-470", 'A');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (3579514879, 85390, "CPSC-311", 'B+');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (3579514879, 15853, "EGCP-280", 'A-');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (3579514879, 96241, "EGCP-470", 'C+');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (7890286981, 71157, "CPSC-311", 'B-');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (7890286981, 15853, "EGCP-280", 'A');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (7890286981, 98723, "EGCP-470", 'A-');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (2486309715, 23802, "CPSC-131", 'B-');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (2486309715, 15853, "EGCP-280", 'A');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (2486309715, 96241, "EGCP-470", 'A');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (7093214568, 71157, "CPSC-311", 'B+');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (7093214568, 15853, "EGCP-280", 'B+');

INSERT INTO ENROLLMENT(Enrollment_CWID, Enrollment_Section_Number, Enrollment_Course_Number, Grade)
VALUES (7093214568, 98723, "EGCP-470", 'B-');