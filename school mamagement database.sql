CREATE DATABASE SCHOOL_MANAGEMENT_SYSTEM
USE SCHOOL_MANAGEMENT_SYSTEM

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    dob DATE,
    gender VARCHAR(10),
    address VARCHAR(255),
    phone_number VARCHAR(15),
    email VARCHAR(50),
    class_name VARCHAR(50)
);

CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY,
    name VARCHAR(100),
    subject_name VARCHAR(100),
    phone_number VARCHAR(15),
    email VARCHAR(50),
    salary DECIMAL(10, 2),
    address VARCHAR(255)
);

CREATE TABLE Classes (
    class_id INT PRIMARY KEY,
    class_name VARCHAR(50),
    section VARCHAR(10),
    teacher_name VARCHAR(100)
);

CREATE TABLE Subjects (
    subject_id INT PRIMARY KEY,
    subject_name VARCHAR(100),
    teacher_name VARCHAR(100)
);

CREATE TABLE Grades (
    grade_id INT PRIMARY KEY,
    student_id INT,
    subject_id INT,
    marks DECIMAL(5, 2),
    grade VARCHAR(5)
);

CREATE TABLE Fees (
    fee_id INT PRIMARY KEY,
    student_id INT,
    amount DECIMAL(10, 2),
    status VARCHAR(10),
    due_date DATE
);

INSERT INTO Students (student_id, name, dob, gender, address, phone_number, email, class_name)
VALUES
(1, 'Aarav Kumar', '2008-04-15', 'Male', 'Mumbai, Maharashtra', '9876543210', 'aarav@gmail.com', '8th A'),
(2, 'Ishita Sharma', '2009-02-10', 'Female', 'Delhi, India', '9876543211', 'ishita@gmail.com', '8th A'),
(3, 'Rajesh Patel', '2008-06-25', 'Male', 'Ahmedabad, Gujarat', '9876543212', 'rajesh@gmail.com', '8th B'),
(4, 'Neha Singh', '2008-08-17', 'Female', 'Bangalore, Karnataka', '9876543213', 'neha@gmail.com', '8th B'),
(5, 'Vikram Singh', '2007-05-30', 'Male', 'Chennai, Tamil Nadu', '9876543214', 'vikram@gmail.com', '9th A'),
(6, 'Simran Gupta', '2009-10-21', 'Female', 'Pune, Maharashtra', '9876543230', 'simran@gmail.com', '9th A'),
(7, 'Aman Kumar', '2009-01-11', 'Male', 'Kolkata, West Bengal', '9876543215', 'aman@gmail.com', '8th A'),
(8, 'Kavya Reddy', '2008-11-14', 'Female', 'Hyderabad, Telangana', '9876543216', 'kavya@gmail.com', '8th A'),
(9, 'Saanvi Gupta', '2008-04-25', 'Female', 'Delhi, India', '9876543217', 'saanvi@gmail.com', '8th B'),
(10, 'Arjun Yadav', '2009-05-22', 'Male', 'Lucknow, Uttar Pradesh', '9876543218', 'arjun@gmail.com', '8th B'),
(11, 'Rohan Jain', '2008-12-03', 'Male', 'Bhopal, Madhya Pradesh', '9876543219', 'rohan@gmail.com', '9th A'),
(12, 'Pooja Verma', '2009-07-10', 'Female', 'Agra, Uttar Pradesh', '9876543220', 'pooja@gmail.com', '9th A'),
(13, 'Siddharth Patel', '2007-03-05', 'Male', 'Vadodara, Gujarat', '9876543221', 'siddharth@gmail.com', '9th B'),
(14, 'Tanu Verma', '2008-02-20', 'Female', 'Kanpur, Uttar Pradesh', '9876543222', 'tanu@gmail.com', '9th B'),
(15, 'Aryan Mehta', '2009-01-18', 'Male', 'Surat, Gujarat', '9876543223', 'aryan@gmail.com', '8th A'),
(16, 'Kritika Jain', '2009-04-11', 'Female', 'Patna, Bihar', '9876543224', 'kritika@gmail.com', '8th B'),
(17, 'Nikhil Sharma', '2008-08-06', 'Male', 'Chandigarh, Punjab', '9876543225', 'nikhil@gmail.com', '8th A'),
(18, 'Shivani Gupta', '2008-09-15', 'Female', 'Gurgaon, Haryana', '9876543226', 'shivani@gmail.com', '8th B'),
(19, 'Tanya Mehta', '2008-12-30', 'Female', 'Indore, Madhya Pradesh', '9876543227', 'tanya@gmail.com', '9th A'),
(20, 'Mohit Kumar', '2007-07-04', 'Male', 'Noida, Uttar Pradesh', '9876543228', 'mohit@gmail.com', '9th A');

INSERT INTO Teachers (teacher_id, name, subject_name, phone_number, email, salary, address)
VALUES
(1, 'Ravi Kumar', 'Mathematics', '9876543201', 'ravi.kumar@gmail.com', 50000, 'Mumbai, Maharashtra'),
(2, 'Priya Iyer', 'Science', '9876543202', 'priya.iyer@gmail.com', 45000, 'Bangalore, Karnataka'),
(3, 'Manoj Sharma', 'English', '9876543203', 'manoj.sharma@gmail.com', 48000, 'Delhi, India'),
(4, 'Sangeeta Reddy', 'Social Studies', '9876543204', 'sangeeta.reddy@gmail.com', 46000, 'Hyderabad, Telangana'),
(5, 'Anil Verma', 'Hindi', '9876543205', 'anil.verma@gmail.com', 47000, 'Chennai, Tamil Nadu'),
(6, 'Amit Kumar', 'Mathematics', '9876543206', 'amit.kumar@gmail.com', 52000, 'Mumbai, Maharashtra'),
(7, 'Neha Gupta', 'Science', '9876543207', 'neha.gupta@gmail.com', 48000, 'Bangalore, Karnataka'),
(8, 'Rajesh Iyer', 'English', '9876543208', 'rajesh.iyer@gmail.com', 47000, 'Delhi, India'),
(9, 'Kavita Sharma', 'Social Studies', '9876543209', 'kavita.sharma@gmail.com', 46000, 'Hyderabad, Telangana'),
(10, 'Amit Mehta', 'Hindi', '9876543210', 'amit.mehta@gmail.com', 49000, 'Chennai, Tamil Nadu'),
(11, 'Manju Verma', 'Mathematics', '9876543211', 'manju.verma@gmail.com', 50000, 'Mumbai, Maharashtra'),
(12, 'Vikram Reddy', 'Science', '9876543212', 'vikram.reddy@gmail.com', 47000, 'Bangalore, Karnataka'),
(13, 'Siddharth Jain', 'English', '9876543213', 'siddharth.jain@gmail.com', 45000, 'Delhi, India'),
(14, 'Pooja Gupta', 'Social Studies', '9876543214', 'pooja.gupta@gmail.com', 46000, 'Hyderabad, Telangana'),
(15, 'Rahul Sharma', 'Hindi', '9876543215', 'rahul.sharma@gmail.com', 48000, 'Chennai, Tamil Nadu'),
(16, 'Rajiv Mehta', 'Mathematics', '9876543216', 'rajiv.mehta@gmail.com', 51000, 'Mumbai, Maharashtra'),
(17, 'Geeta Reddy', 'Science', '9876543217', 'geeta.reddy@gmail.com', 49000, 'Bangalore, Karnataka'),
(18, 'Pradeep Sharma', 'English', '9876543218', 'pradeep.sharma@gmail.com', 47000, 'Delhi, India'),
(19, 'Tanu Reddy', 'Social Studies', '9876543219', 'tanu.reddy@gmail.com', 46000, 'Hyderabad, Telangana'),
(20, 'Ravina Gupta', 'Hindi', '9876543220', 'ravina.gupta@gmail.com', 46000, 'Chennai, Tamil Nadu');

INSERT INTO Classes (class_id, class_name, section, teacher_name)
VALUES
(1, '8th', 'A', 'Ravi Kumar'),
(2, '8th', 'B', 'Priya Iyer'),
(3, '9th', 'A', 'Manoj Sharma'),
(4, '9th', 'B', 'Sangeeta Reddy'),
(5, '10th', 'A', 'Anil Verma'),
(6, '8th', 'C', 'Amit Kumar'),
(7, '8th', 'D', 'Neha Gupta'),
(8, '9th', 'C', 'Rajesh Iyer'),
(9, '9th', 'D', 'Kavita Sharma'),
(10, '10th', 'B', 'Amit Mehta'),
(11, '8th', 'E', 'Manju Verma'),
(12, '8th', 'F', 'Vikram Reddy'),
(13, '9th', 'E', 'Siddharth Jain'),
(14, '9th', 'F', 'Pooja Gupta'),
(15, '10th', 'C', 'Rahul Sharma'),
(16, '10th', 'D', 'Rajiv Mehta'),
(17, '8th', 'G', 'Geeta Reddy'),
(18, '9th', 'G', 'Pradeep Sharma'),
(19, '9th', 'H', 'Tanu Reddy'),
(20, '10th', 'E', 'Ravina Gupta');

INSERT INTO Subjects (subject_id, subject_name, teacher_name)
VALUES
(1, 'Mathematics', 'Ravi Kumar'),
(2, 'Science', 'Priya Iyer'),
(3, 'English', 'Manoj Sharma'),
(4, 'Social Studies', 'Sangeeta Reddy'),
(5, 'Hindi', 'Anil Verma'),
(6, 'Mathematics', 'Amit Kumar'),
(7, 'Science', 'Neha Gupta'),
(8, 'English', 'Rajesh Iyer'),
(9, 'Social Studies', 'Kavita Sharma'),
(10, 'Hindi', 'Amit Mehta'),
(11, 'Mathematics', 'Manju Verma'),
(12, 'Science', 'Vikram Reddy'),
(13, 'English', 'Siddharth Jain'),
(14, 'Social Studies', 'Pooja Gupta'),
(15, 'Hindi', 'Rahul Sharma'),
(16, 'Mathematics', 'Rajiv Mehta'),
(17, 'Science', 'Geeta Reddy'),
(18, 'English', 'Pradeep Sharma'),
(19, 'Social Studies', 'Tanu Reddy'),
(20, 'Hindi', 'Ravina Gupta');

INSERT INTO Grades (grade_id, student_id, subject_id, marks, grade)
VALUES
(1, 1, 1, 85, 'A'),
(2, 1, 2, 90, 'A'),
(3, 2, 3, 88, 'A'),
(4, 2, 4, 92, 'A'),
(5, 3, 5, 75, 'B'),
(6, 4, 1, 70, 'B'),
(7, 5, 2, 80, 'A'),
(8, 6, 3, 78, 'B'),
(9, 7, 4, 88, 'A'),
(10, 8, 5, 85, 'A'),
(11, 9, 1, 90, 'A'),
(12, 10, 2, 92, 'A'),
(13, 11, 3, 75, 'B'),
(14, 12, 4, 70, 'B'),
(15, 13, 5, 80, 'A'),
(16, 14, 1, 78, 'B'),
(17, 15, 2, 88, 'A'),
(18, 16, 3, 85, 'A'),
(19, 17, 4, 95, 'A'),
(20, 18, 5, 80, 'A');

INSERT INTO Fees (fee_id, student_id, amount, status, due_date)
VALUES
(1, 1, 5000, 'Paid', '2025-01-01'),
(2, 2, 5000, 'Paid', '2025-01-01'),
(3, 3, 6000, 'Unpaid', '2025-01-01'),
(4, 4, 6000, 'Paid', '2025-01-01'),
(5, 5, 5500, 'Unpaid', '2025-01-01'),
(6, 6, 4500, 'Paid', '2025-01-01'),
(7, 7, 5000, 'Paid', '2025-02-01'),
(8, 8, 5000, 'Unpaid', '2025-02-01'),
(9, 9, 6000, 'Paid', '2025-02-01'),
(10, 10, 6000, 'Unpaid', '2025-02-01'),
(11, 11, 5500, 'Paid', '2025-03-01'),
(12, 12, 5500, 'Paid', '2025-03-01'),
(13, 13, 5000, 'Unpaid', '2025-03-01'),
(14, 14, 5000, 'Paid', '2025-03-01'),
(15, 15, 4500, 'Paid', '2025-04-01'),
(16, 16, 4500, 'Unpaid', '2025-04-01'),
(17, 17, 5000, 'Paid', '2025-04-01'),
(18, 18, 5000, 'Unpaid', '2025-04-01'),
(19, 19, 5500, 'Paid', '2025-05-01'),
(20, 20, 5500, 'Unpaid', '2025-05-01');

1. List all students in class '8th A'
SELECT * FROM Students WHERE class_name = '8th A';

2. List all teachers who teach 'Mathematics'
SELECT * FROM Teachers WHERE subject_name = 'Mathematics';

3. Find the total number of students in each class
SELECT class_name, COUNT(*) AS total_students
FROM Students
GROUP BY class_name;

4. Get the details of the student with ID 10
SELECT * FROM Students WHERE student_id = 10;

5. Find the name of the teacher who teaches 'English'
SELECT name FROM Teachers WHERE subject_name = 'English';

6. Get the details of all students who have not paid the fees
SELECT * FROM Fees WHERE status = 'Unpaid';

7. List all students and their corresponding teachers
SELECT Students.name AS student_name, Teachers.name AS teacher_name
FROM Students
JOIN Teachers ON Students.class_name = Teachers.subject_name;

8. Get the marks and grade of the student with ID 5
SELECT marks, grade FROM Grades WHERE student_id = 5;

9. Display all subjects taught by 'Priya Iyer'
SELECT * FROM Subjects WHERE teacher_name = 'Priya Iyer';

10. Find the students who scored more than 85 marks in 'Mathematics'
SELECT Students.name, Grades.marks
FROM Students
JOIN Grades ON Students.student_id = Grades.student_id
WHERE Grades.subject_id = 1 AND Grades.marks > 85;

11. List all the students who belong to 'Delhi'
SELECT * FROM Students WHERE address LIKE '%Delhi%';

12. Find the total number of students and teachers in each class
SELECT Students.class_name, COUNT(DISTINCT Students.student_id) AS total_students, 
       COUNT(DISTINCT Teachers.teacher_id) AS total_teachers
FROM Students
LEFT JOIN Teachers ON Students.class_name = Teachers.subject_name
GROUP BY Students.class_name;

13. Get the students who scored less than 50 marks in 'Science'
SELECT Students.name, Grades.marks
FROM Students
JOIN Grades ON Students.student_id = Grades.student_id
WHERE Grades.subject_id = 2 AND Grades.marks < 50;

14. List all students and their corresponding grades
SELECT Students.name AS student_name, Grades.grade
FROM Students
JOIN Grades ON Students.student_id = Grades.student_id;

15. Get the list of all teachers and the classes they teach
SELECT Teachers.name AS teacher_name, Classes.class_name
FROM Teachers
JOIN Classes ON Teachers.name = Classes.teacher_name;


























