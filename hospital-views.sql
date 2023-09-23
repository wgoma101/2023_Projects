use hospital;
CREATE or Replace VIEW visitor_directory 
AS
SELECT name, room_number 
FROM person, patient
WHERE patient.person_ID = ID;

select * from visitor_directory;

CREATE or REPLACE VIEW internal_directory
AS
SELECT name, room_number, instruction.code, description
from person, patient, instruction
WHERE patient.person_ID = ID AND instruction.patient_ID = patient.patient_ID;

select * from internal_directory;

CREATE OR REPLACE VIEW nurse_orders
AS
SELECT name, medication_name, patient.patient_ID, room_number
FROM administerMedicine, patient, person, nurse
WHERE administerMedicine.patient_ID = patient.patient_ID 
and administermedicine.nurse_ID = nurse.nurse_ID 
and nurse.person_ID = ID;

select * from nurse_orders;