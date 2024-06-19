-- Update the STUDENT table
ALTER TABLE hostel_info.STUDENT
CHANGE COLUMN Student_ID Registration_No INT;

-- Update the ROOM table
ALTER TABLE hostel_info.ROOM
CHANGE COLUMN Student_ID Registration_No INT;

-- Update the ATTENDANCE table
ALTER TABLE hostel_info.ATTENDANCE
CHANGE COLUMN Student_ID Registration_No INT;

-- Add columns for foreign keys in the STUDENT table
ALTER TABLE hostel_info.STUDENT
ADD COLUMN Room_No INT,
ADD COLUMN Mess_ID VARCHAR(10);

-- Add columns for foreign keys in the ATTENDANCE table
ALTER TABLE hostel_info.ATTENDANCE
ADD COLUMN Reg_No INT;

-- Add columns for foreign keys in the LEAVE_RECORD table
ALTER TABLE hostel_info.LEAVE_RECORD
ADD COLUMN Registration_No INT;

-- Add columns for foreign keys in the FEE table
ALTER TABLE hostel_info.FEE
ADD COLUMN Registration_No INT;

-- Add columns for foreign keys in the H_MAINTENANCE table
ALTER TABLE hostel_info.H_MAINTENANCE
ADD COLUMN Hostel_ID VARCHAR(10);

-- Add columns for foreign keys in the COMPLAINT table
ALTER TABLE hostel_info.COMPLAINT
ADD COLUMN Hostel_ID varchar(10);

-- Add foreign key constraints for the STUDENT table
ALTER TABLE hostel_info.STUDENT
ADD CONSTRAINT Room_No
FOREIGN KEY (Room_No) REFERENCES ROOM(Room_No),
ADD CONSTRAINT Mess_ID
FOREIGN KEY (Mess_ID) REFERENCES Mess(Mess_ID);

-- Add foreign key constraints for the ATTENDANCE table
ALTER TABLE hostel_info.ATTENDANCE
ADD CONSTRAINT fk_attendance_student
FOREIGN KEY (Reg_No) REFERENCES STUDENT(Registration_No);

-- Add foreign key constraints for the LEAVE_RECORD table
ALTER TABLE hostel_info.LEAVE_RECORD
ADD CONSTRAINT fk_leave_record_student
FOREIGN KEY (Registration_No) REFERENCES STUDENT(Registration_No);

-- Add foreign key constraints for the FEE table
ALTER TABLE hostel_info.FEE
ADD CONSTRAINT fk_fee_student
FOREIGN KEY (Registration_No) REFERENCES STUDENT(Registration_No);

-- Add foreign key constraints for the H_MAINTENANCE table
ALTER TABLE hostel_info.H_MAINTENANCE
ADD CONSTRAINT fk_maintenance_hostel
FOREIGN KEY (Hostel_ID) REFERENCES HOSTEL(Hostel_ID);

-- Add foreign key constraints for the COMPLAINT table
ALTER TABLE hostel_info.COMPLAINT
ADD CONSTRAINT fk_complaint_hostel
FOREIGN KEY (Hostel_ID) REFERENCES HOSTEL(Hostel_ID);

UPDATE `hostel_info`.`student` SET `Room_No` = '101', `Mess_ID` = 'M103' WHERE (`Registration_No` = '640');
UPDATE `hostel_info`.`student` SET `Room_No` = '102', `Mess_ID` = 'M107' WHERE (`Registration_No` = '880');
UPDATE `hostel_info`.`student` SET `Room_No` = '103', `Mess_ID` = 'M109' WHERE (`Registration_No` = '944');
UPDATE `hostel_info`.`student` SET `Room_No` = '104', `Mess_ID` = 'M101' WHERE (`Registration_No` = '114');
UPDATE `hostel_info`.`student` SET `Room_No` = '105', `Mess_ID` = 'M101' WHERE (`Registration_No` = '27');
UPDATE `hostel_info`.`student` SET `Room_No` = '106', `Mess_ID` = 'M104' WHERE (`Registration_No` = '739');
UPDATE `hostel_info`.`student` SET `Room_No` = '107', `Mess_ID` = 'M108' WHERE (`Registration_No` = '927');
UPDATE `hostel_info`.`student` SET `Room_No` = '108', `Mess_ID` = 'M102' WHERE (`Registration_No` = '139');
UPDATE `hostel_info`.`student` SET `Room_No` = '109', `Mess_ID` = 'M105' WHERE (`Registration_No` = '752');
UPDATE `hostel_info`.`student` SET `Room_No` = '110', `Mess_ID` = 'M106' WHERE (`Registration_No` = '870');

UPDATE `hostel_info`.`leave_record` SET `Registration_No` = '27' WHERE (`Leave_ID` = 'L101');
UPDATE `hostel_info`.`leave_record` SET `Registration_No` = '114' WHERE (`Leave_ID` = 'L102');
UPDATE `hostel_info`.`leave_record` SET `Registration_No` = '139' WHERE (`Leave_ID` = 'L103');
UPDATE `hostel_info`.`leave_record` SET `Registration_No` = '640' WHERE (`Leave_ID` = 'L104');
UPDATE `hostel_info`.`leave_record` SET `Registration_No` = '944' WHERE (`Leave_ID` = 'L110');
UPDATE `hostel_info`.`leave_record` SET `Registration_No` = '927' WHERE (`Leave_ID` = 'L108');
UPDATE `hostel_info`.`leave_record` SET `Registration_No` = '880' WHERE (`Leave_ID` = 'L106');
UPDATE `hostel_info`.`leave_record` SET `Registration_No` = '870' WHERE (`Leave_ID` = 'L109');
UPDATE `hostel_info`.`leave_record` SET `Registration_No` = '752' WHERE (`Leave_ID` = 'L105');
UPDATE `hostel_info`.`leave_record` SET `Registration_No` = '739' WHERE (`Leave_ID` = 'L107');

UPDATE `hostel_info`.`h_maintenance` SET `Hostel_ID` = 'H101' WHERE (`Maintenance_ID` = '108');
UPDATE `hostel_info`.`h_maintenance` SET `Hostel_ID` = 'H102' WHERE (`Maintenance_ID` = '104');
UPDATE `hostel_info`.`h_maintenance` SET `Hostel_ID` = 'H103' WHERE (`Maintenance_ID` = '102');
UPDATE `hostel_info`.`h_maintenance` SET `Hostel_ID` = 'H104' WHERE (`Maintenance_ID` = '110');
UPDATE `hostel_info`.`h_maintenance` SET `Hostel_ID` = 'H105' WHERE (`Maintenance_ID` = '105');
UPDATE `hostel_info`.`h_maintenance` SET `Hostel_ID` = 'H106' WHERE (`Maintenance_ID` = '101');
UPDATE `hostel_info`.`h_maintenance` SET `Hostel_ID` = 'H107' WHERE (`Maintenance_ID` = '109');
UPDATE `hostel_info`.`h_maintenance` SET `Hostel_ID` = 'H108' WHERE (`Maintenance_ID` = '107');
UPDATE `hostel_info`.`h_maintenance` SET `Hostel_ID` = 'H109' WHERE (`Maintenance_ID` = '103');
UPDATE `hostel_info`.`h_maintenance` SET `Hostel_ID` = 'H110' WHERE (`Maintenance_ID` = '106');

UPDATE `hostel_info`.`fee` SET `Registration_No` = '27' WHERE (`Fee_ID` = '105');
UPDATE `hostel_info`.`fee` SET `Registration_No` = '114' WHERE (`Fee_ID` = '102');
UPDATE `hostel_info`.`fee` SET `Registration_No` = '139' WHERE (`Fee_ID` = '108');
UPDATE `hostel_info`.`fee` SET `Registration_No` = '640' WHERE (`Fee_ID` = '109');
UPDATE `hostel_info`.`fee` SET `Registration_No` = '739' WHERE (`Fee_ID` = '110');
UPDATE `hostel_info`.`fee` SET `Registration_No` = '752' WHERE (`Fee_ID` = '104');
UPDATE `hostel_info`.`fee` SET `Registration_No` = '870' WHERE (`Fee_ID` = '101');
UPDATE `hostel_info`.`fee` SET `Registration_No` = '880' WHERE (`Fee_ID` = '107');
UPDATE `hostel_info`.`fee` SET `Registration_No` = '927' WHERE (`Fee_ID` = '106');
UPDATE `hostel_info`.`fee` SET `Registration_No` = '944' WHERE (`Fee_ID` = '103');

UPDATE `hostel_info`.`complaint` SET `Hostel_ID` = 'H101' WHERE (`Complaint_ID` = '101');
UPDATE `hostel_info`.`complaint` SET `Hostel_ID` = 'H104' WHERE (`Complaint_ID` = '102');
UPDATE `hostel_info`.`complaint` SET `Hostel_ID` = 'H103' WHERE (`Complaint_ID` = '103');
UPDATE `hostel_info`.`complaint` SET `Hostel_ID` = 'H109' WHERE (`Complaint_ID` = '104');
UPDATE `hostel_info`.`complaint` SET `Hostel_ID` = 'H102' WHERE (`Complaint_ID` = '110');
UPDATE `hostel_info`.`complaint` SET `Hostel_ID` = 'H106' WHERE (`Complaint_ID` = '109');
UPDATE `hostel_info`.`complaint` SET `Hostel_ID` = 'H110' WHERE (`Complaint_ID` = '108');
UPDATE `hostel_info`.`complaint` SET `Hostel_ID` = 'H108' WHERE (`Complaint_ID` = '107');
UPDATE `hostel_info`.`complaint` SET `Hostel_ID` = 'H105' WHERE (`Complaint_ID` = '106');
UPDATE `hostel_info`.`complaint` SET `Hostel_ID` = 'H107' WHERE (`Complaint_ID` = '105');

UPDATE `hostel_info`.`attendance` SET `Reg_No` = '27' WHERE (`Registration_No` = '27') and (`Date` = '2024-04-01');
UPDATE `hostel_info`.`attendance` SET `Reg_No` = '114' WHERE (`Registration_No` = '114') and (`Date` = '2024-04-01');
UPDATE `hostel_info`.`attendance` SET `Reg_No` = '139' WHERE (`Registration_No` = '139') and (`Date` = '2024-04-01');
UPDATE `hostel_info`.`attendance` SET `Reg_No` = '640' WHERE (`Registration_No` = '640') and (`Date` = '2024-04-01');
UPDATE `hostel_info`.`attendance` SET `Reg_No` = '739' WHERE (`Registration_No` = '739') and (`Date` = '2024-04-01');
UPDATE `hostel_info`.`attendance` SET `Reg_No` = '752' WHERE (`Registration_No` = '752') and (`Date` = '2024-04-01');
UPDATE `hostel_info`.`attendance` SET `Reg_No` = '870' WHERE (`Registration_No` = '870') and (`Date` = '2024-04-01');
UPDATE `hostel_info`.`attendance` SET `Reg_No` = '880' WHERE (`Registration_No` = '880') and (`Date` = '2024-04-01');
UPDATE `hostel_info`.`attendance` SET `Reg_No` = '927' WHERE (`Registration_No` = '927') and (`Date` = '2024-04-01');
UPDATE `hostel_info`.`attendance` SET `Reg_No` = '944' WHERE (`Registration_No` = '944') and (`Date` = '2024-04-01');
