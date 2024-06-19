INSERT INTO hostel_info.STUDENT (Student_ID, Name, Phone_No, DOB, Course)
VALUES
    (640, 'Shyam Prakash', 9876543210, '1998-05-15', 'Computer Science'),
    (880, 'Rakesh Kumar', 9876543211, '1999-10-20', 'Mathematics'),
    (944, 'Akshat Sharma', 9876543212, '2000-03-25', 'Physics'),
    (114, 'Anjali Gupta', 9876543213, '1997-07-12', 'Biology'),
    (27, 'Rajesh Patel', 9876543214, '1996-12-08', 'Chemistry'),
    (739, 'Sunita Mishra', 9876543215, '1998-08-31', 'English'),
    (927, 'Vikram Singh', 9876543216, '1999-06-18', 'History'),
    (139, 'Neeta Yadav', 9876543217, '1995-04-29', 'Economics'),
    (752, 'Arjun Sharma', 9876543218, '2001-02-14', 'Psychology'),
    (870, 'Kavita Verma', 9876543219, '2002-09-07', 'Sociology');

INSERT INTO hostel_info.staff (Staff_ID, Name, Phone_No, Role)
VALUES
    ('S101', 'Priya Gupta', 9876543220, 'Professor'),
    ('S102', 'Anil Sharma', 9876543221, 'Librarian'),
    ('S103', 'Meera Singh', 9876543222, 'Counselor'),
    ('S104', 'Mohan Verma', 9876543223, 'Janitor'),
    ('S105', 'Neha Patel', 9876543224, 'Nurse'),
    ('S106', 'Rajesh Kumar', 9876543225, 'Coach'),
    ('S107', 'Pooja Mishra', 9876543226, 'Administrator'),
    ('S108', 'Rakesh Singh', 9876543227, 'IT Support'),
    ('S109', 'Shweta Gupta', 9876543228, 'Accountant'),
    ('S110', 'Vivek Sharma', 9876543229, 'Security');
    
INSERT INTO hostel_info.room (Student_ID, Room_No, Room_Type, Capacity, Availability_Status)
VALUES
    (640, 101, 'Single', 1, 'Occupied'),
    (880, 102, 'Single', 1, 'Occupied'),
    (944, 103, 'Single', 1, 'Occupied'),
    (114, 104, 'Single', 1, 'Occupied'),
    (27, 105, 'Single', 1, 'Vacant'),
    (739, 106, 'Double', 2, 'Occupied'),
    (927, 107, 'Double', 2, 'Vacant'),
    (139, 108, 'Double', 2, 'Occupied'),
    (752, 109, 'Triple', 3, 'Vacant'),
    (870, 110, 'Triple', 3, 'Vacant');

INSERT INTO hostel_info.mess (Mess_ID, Mess_Type, Timings, Mess_Details)
VALUES
    ('M101', 'Breakfast', '07:00-09:00', 'South Indian'),
    ('M102', 'Lunch', '12:00-14:00', 'North Indian'),
    ('M103', 'Dinner', '19:00-21:00', 'Continental'),
    ('M104', 'Breakfast', '07:00-09:00', 'North Indian'),
    ('M105', 'Lunch', '12:00-14:00', 'South Indian'),
    ('M106', 'Dinner', '19:00-21:00', 'Chinese'),
    ('M107', 'Breakfast', '07:00-09:00', 'North Indian'),
    ('M108', 'Lunch', '12:00-14:00', 'South Indian'),
    ('M109', 'Dinner', '19:00-21:00', 'Continental'),
    ('M110', 'Breakfast', '07:00-09:00', 'South Indian');

INSERT INTO hostel_info.leave_record (Leave_ID, Leave_Type, Out_Day, In_Day)
VALUES
    ('L101', 'Sick Leave', '2024-04-01', '2024-04-02'),
    ('L102', 'Vacation', '2024-05-15', '2024-05-30'),
    ('L103', 'Personal', '2024-06-20', '2024-06-20'),
    ('L104', 'Emergency', '2024-07-10', '2024-07-12'),
    ('L105', 'Sick Leave', '2024-08-05', '2024-08-06'),
    ('L106', 'Vacation', '2024-09-01', '2024-09-15'),
    ('L107', 'Personal', '2024-10-10', '2024-10-10'),
    ('L108', 'Emergency', '2024-11-20', '2024-11-22'),
    ('L109', 'Sick Leave', '2024-12-25', '2024-12-26'),
    ('L110', 'Vacation', '2025-01-15', '2025-01-30');

INSERT INTO hostel_info.hostel (Hostel_ID, Hostel_Name, No_of_Rooms, No_of_Students)
VALUES
    ('H101', 'Sunrise Hostel', 50, 45),
    ('H102', 'Greenview Hostel', 60, 55),
    ('H103', 'Riverside Hostel', 70, 65),
    ('H104', 'Golden Hostel', 55, 50),
    ('H105', 'Pinecrest Hostel', 45, 40),
    ('H106', 'Oceanic Hostel', 75, 70),
    ('H107', 'Horizon Hostel', 80, 75),
    ('H108', 'Serene Hostel', 65, 60),
    ('H109', 'Tranquil Hostel', 55, 50),
    ('H110', 'Blissful Hostel', 50, 45);


INSERT INTO hostel_info.h_maintenance (Maintenance_ID, Description, Date, Status, Resolution_Details)
VALUES
    (101, 'Electrical', '2024-04-01', 'Pending', NULL),
    (102, 'Plumbing', '2024-04-05', 'In Progress', NULL),
    (103, 'HVAC', '2024-04-10', 'Resolved', 'Replaced parts'),
    (104, 'Cleaning', '2024-04-15', 'Pending', NULL),
    (105, 'Electrical', '2024-04-20', 'Resolved', 'Rewired circuits'),
    (106, 'Painting', '2024-04-25', 'In Progress', NULL),
    (107, 'Plumbing', '2024-05-01', 'Pending', NULL),
    (108, 'HVAC', '2024-05-05', 'Resolved', 'Repaired ductwork'),
    (109, 'Cleaning', '2024-05-10', 'Resolved', 'Deep cleaning'),
    (110, 'Electrical', '2024-05-15', 'In Progress', NULL);

INSERT INTO hostel_info.fee (Fee_ID, AMOUNT, Due_Date, Payment_Details, Fee_Type)
VALUES
    (101, 5000, '2024-04-15', 'Paid', 'Tuition'),
    (102, 3000, '2024-04-20', 'Unpaid', 'Accommodation'),
    (103, 2000, '2024-04-25', 'Paid', 'Miscellaneous'),
    (104, 4000, '2024-05-01', 'Unpaid', 'Tuition'),
    (105, 3500, '2024-05-05', 'Paid', 'Accommodation'),
    (106, 2500, '2024-05-10', 'Paid', 'Miscellaneous'),
    (107, 4500, '2024-05-15', 'Unpaid', 'Tuition'),
    (108, 3200, '2024-05-20', 'Paid', 'Accommodation'),
    (109, 2800, '2024-05-25', 'Paid', 'Miscellaneous'),
    (110, 4800, '2024-06-01', 'Unpaid', 'Tuition');

INSERT INTO hostel_info.complaint (Complaint_ID, Description, Date, Status)
VALUES
    (101, 'Noise issue', '2024-04-01', 'Pending'),
    (102, 'AC not working', '2024-04-05', 'In Progress'),
    (103, 'Broken window', '2024-04-10', 'Resolved'),
    (104, 'Water leakage', '2024-04-15', 'Pending'),
    (105, 'Broken door', '2024-04-20', 'Resolved'),
    (106, 'Pest infestation', '2024-04-25', 'In Progress'),
    (107, 'Dirty bathroom', '2024-05-01', 'Pending'),
    (108, 'Broken furniture', '2024-05-05', 'Resolved'),
    (109, 'Internet issue', '2024-05-10', 'Resolved'),
    (110, 'Heating problem', '2024-05-15', 'In Progress');

INSERT INTO hostel_info.attendance (Student_ID, Date, Student_Name, Roll_No, Time, Status)
VALUES
    (640, '2024-04-01', 'Shyam Prakash', 101, '09:00 AM', 'Present'),
    (880, '2024-04-01', 'Rakesh Kumar', 102, '09:00 AM', 'Present'),
    (944, '2024-04-01', 'Akshat Sharma', 103, '09:00 AM', 'Present'),
    (114, '2024-04-01', 'Anjali Gupta', 104, '09:00 AM', 'Present'),
    (27, '2024-04-01', 'Rajesh Patel', 105, '09:00 AM', 'Absent'),
    (739, '2024-04-01', 'Sunita Mishra', 106, '09:00 AM', 'Present'),
    (927, '2024-04-01', 'Vikram Singh', 107, '09:00 AM', 'Present'),
    (139, '2024-04-01', 'Neeta Yadav', 108, '09:00 AM', 'Present'),
    (752, '2024-04-01', 'Arjun Sharma', 109, '09:00 AM', 'Absent'),
    (870, '2024-04-01', 'Kavita Verma', 110, '09:00 AM', 'Present');

