SELECT AVG(No_of_Students) AS Avg_Students_Per_Room
FROM hostel_info.HOSTEL;

SELECT SUM(No_of_Students) AS Total_Students
FROM hostel_info.HOSTEL;

SELECT * FROM hostel_info.mess where Mess_Type='Breakfast';

USE hostel_info;
SELECT SUM(AMOUNT) AS Total_Fees_Collected
FROM FEE;

use hostel_info;
SELECT s.Name
FROM STUDENT s
JOIN ROOM r ON s.Registration_No = r.Registration_No
WHERE r.Capacity = 1;

SELECT *
FROM COMPLAINT
WHERE Date > '2024-01-01';

SELECT Mess_Type, Timings
FROM Mess;

SELECT *
FROM STUDENT
WHERE Name LIKE 'A%';

SELECT AVG(AMOUNT) AS Avg_Fee
FROM FEE;

ALTER TABLE ROOM
ADD CONSTRAINT chk_capacity CHECK (Capacity > 0);

SELECT Name, Role
FROM STAFF;

SELECT Room_No, Room_Type
FROM ROOM;


SELECT Name, Role
FROM hostel_info.STAFF
WHERE Role LIKE '%Professor%';

SELECT Name, Phone_No
FROM STUDENT;

SELECT s.Name, r.Room_No
FROM STUDENT s
JOIN ROOM r ON s.Registration_No = r.Registration_No;

SELECT s.Name, s.Registration_No
FROM STUDENT s
JOIN ATTENDANCE a ON s.Registration_No = a.Registration_No
WHERE a.Status = 'Present';

UPDATE ATTENDANCE
SET Status = 'Absent'
WHERE Registration_No IN (139, 870, 927) AND Status = 'Present';
SELECT * FROM hostel_info.attendance;

UPDATE STAFF
SET Role = 'IT head'
WHERE Staff_ID = 'S108' AND Role = 'IT support';
SELECT * FROM hostel_info.staff where Staff_ID='S108';

SELECT  s.Registration_No,s.Name,l.Leave_Type AS Reason
FROM LEAVE_RECORD l
JOIN STUDENT s ON l.Registration_No = s.Registration_No WHERE l.Leave_Type ='Sick Leave';

SELECT Hostel_ID,Description,Date,Resolution_Details,Status
FROM H_MAINTENANCE
WHERE Status = 'Resolved';

SELECT s.Registration_No, s.Name, r.Room_No
FROM STUDENT s
JOIN ROOM r ON s.Registration_No = r.Registration_No
LEFT JOIN FEE f ON s.Registration_No = f.Registration_No
WHERE f.Payment_Details='Unpaid';

SELECT * FROM hostel_info.complaint where Status='Resolved';

SELECT Room_No,Availability_Status
FROM ROOM
WHERE Availability_Status = 'Vacant';

SELECT h.Hostel_Name, c.Description AS Complaint_Description, c.Status
FROM HOSTEL h
JOIN COMPLAINT c ON h.Hostel_ID = c.Hostel_ID where c.status='Pending';

SELECT s.Registration_No, s.Name AS Student_Name
FROM STUDENT s
JOIN MESS m ON s.Mess_ID = m.Mess_ID
WHERE m.Mess_Type = 'lunch';

SELECT s.Registration_No, s.Name, r.Room_No
FROM STUDENT s
JOIN ROOM r ON s.Registration_No = r.Registration_No
JOIN FEE f ON s.Registration_No = f.Registration_No
WHERE f.AMOUNT < 3000;

SELECT *
FROM STAFF
WHERE Phone_No LIKE '9%';

SELECT COUNT(*) AS Total_Students_Attended
FROM ATTENDANCE
WHERE Date = '2024-04-30';

SELECT *
FROM H_MAINTENANCE
ORDER BY Date DESC
LIMIT 1;

SELECT AVG(Capacity) AS Average_Capacity
FROM ROOM;

SELECT DISTINCT Mess_Type
FROM MESS;

SELECT Course, COUNT(*) AS Total_Students
FROM STUDENT
GROUP BY Course;



