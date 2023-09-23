use Hospital;
#1 find phycician expertise with a certification_number of '12'
SELECT expertise 
FROM Physician
WHERE certification_number = '12';

#2 Find the room number and fee for rooms that have a capacity of 2
SELECT number, fee 
FROM Room
WHERE capacity = 2;

#3 
SELECT invoice_ID, total_fee 
FROM Invoice;

#4 select patients who have cancer
SELECT name
FROM health_record, patient, person
WHERE disease = 'cancer'
AND health_record.patient_ID = patient.patient_ID
AND patient.person_ID = ID;

#5 find patients with health record from before 2023
SELECT name
FROM patient, person, health_record
WHERE patient.person_ID = ID
AND patient.patient_ID = health_record.patient_ID
AND date < '2023-01-01';

#6 Find the instructions for the patient with strep
SELECT description
FROM instruction, patient, person, health_record
WHERE ID = patient.person_ID
AND patient.patient_ID = health_record.patient_ID
AND disease = 'strep'
AND health_record.patient_ID = instruction.patient_ID;


#7 Join - find status and disease associated 
SELECT p.name, h.disease, h.status
FROM Person p
JOIN Patient pt ON p.ID = pt.person_ID
JOIN Health_Record h ON pt.patient_id = h.patient_ID;

#8 aggregation - find the amount of patients per nurse
SELECT p.name, COUNT(*) AS patient_count
FROM Person p 
Join Nurse n on p.ID = n.person_ID
JOIN ExecutesInstruction ei ON n.nurse_ID = ei.nurse_ID
GROUP BY n.nurse_ID;

#9 aggregation - finds the number of instruction per person
SELECT p.name, COUNT(*) AS instruction_count
FROM Person p
JOIN Patient pt ON p.ID = pt.person_ID
JOIN Instruction i ON pt.patient_id = i.patient_ID
GROUP BY p.name;

#10 find the number of nurses with a certification higher than 23
SELECT COUNT(*) as Nurse_Count 
FROM Nurse 
WHERE certification_number > 23;

#11 find total of fee the hospital accumulates
SELECT SUM(fee) as total_fee FROM Payable_Items;

#12 aggregation - Retrieve the physicians' names and the total duration they monitored all patients
SELECT p.name AS physician_name, SUM(m.duration) AS total_duration
FROM Person p
JOIN Physician ph ON p.ID = ph.person_ID
JOIN Monitors m ON ph.physician_ID = m.physician_id
GROUP BY p.name;

#13 Nested - Find name,address, and phone_number of patients
SELECT name, address, phone_number 
FROM Person 
WHERE ID IN (
SELECT person_ID 
FROM Patient);

#14 Nested - select name of patient who still have balance due
SELECT name 
FROM person, patient
WHERE patient.person_ID = person.ID
AND patient_ID IN (
	SELECT patient.patient_ID 
	FROM patient, invoice
	WHERE patient.patient_ID = invoice.patient_ID
	AND amount_paid < total_fee);
    
#15 Nested - patients whose instructions are complete
SELECT name 
FROM person, patient
WHERE patient.person_ID = person.ID
AND patient_ID IN (
	SELECT patient.patient_ID 
	FROM patient, executesInstruction
	WHERE patient.patient_ID = executesInstruction.patient_ID
	AND status = 'complete');