CREATE TABLE hostel_info.STUDENT (
    Student_ID INT PRIMARY KEY,
    Name VARCHAR(32) NOT NULL,
    Phone_No INT,
    DOB DATE,
    Course VARCHAR(32)
);

CREATE TABLE hostel_info.HOSTEL (
    Hostel_ID VARCHAR(10) PRIMARY KEY,
    Hostel_Name VARCHAR(32) NOT NULL,
    No_of_Rooms INT,
    No_of_Students INT
);

CREATE TABLE hostel_info.ROOM (
    Student_ID INT,
    Room_No INT PRIMARY KEY,
    Room_Type VARCHAR(50),
    Capacity INT,
    Availability_Status VARCHAR(10),
    FOREIGN KEY (Student_ID) REFERENCES STUDENT(Student_ID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE hostel_info.ATTENDANCE (
    Student_ID INT,
    Date DATE,
    Student_Name VARCHAR(32),
    Roll_No INT,
    Time VARCHAR(12),
    Status VARCHAR(32),
    PRIMARY KEY (Student_ID, Date),
    FOREIGN KEY (Student_ID) REFERENCES STUDENT(Student_ID) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE hostel_info.STAFF (
    Staff_ID VARCHAR(10) PRIMARY KEY,
    Name VARCHAR(32) NOT NULL,
    Phone_No INT,
    Role VARCHAR(200)
);

CREATE TABLE hostel_info.LEAVE_RECORD (
    Leave_ID VARCHAR(10) PRIMARY KEY,
    Leave_Type VARCHAR(32),
    Out_Day DATE,
    In_Day DATE
);

CREATE TABLE hostel_info.FEE (
    Fee_ID VARCHAR(10) PRIMARY KEY,
    AMOUNT INT,
    Due_Date DATE,
    Payment_Details VARCHAR(200),
    Fee_Type VARCHAR(32)
);

CREATE TABLE hostel_info.H_MAINTENANCE (
    Maintenance_ID VARCHAR(10) PRIMARY KEY,
    Description VARCHAR(200),
    Date DATE,
    Status VARCHAR(32),
    Resolution_Details VARCHAR(32)
);

CREATE TABLE hostel_info.COMPLAINT (
    Complaint_ID VARCHAR(10) PRIMARY KEY,
    Description VARCHAR(200),
    Date DATE,
    Status VARCHAR(32)
);

CREATE TABLE hostel_info.Mess (
    Mess_ID VARCHAR(10) PRIMARY KEY,
    Mess_Type VARCHAR(32),
    Timings VARCHAR(32),
    Mess_Details VARCHAR(32)
);
