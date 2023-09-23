
INSERT INTO `hospital`.`Person` (`ID`, `name`, `address`, `phone_number`) VALUES ('1234', 'John Smith', '300 lake shore drive', '212-5471');
INSERT INTO `hospital`.`Person` (`ID`, `name`, `address`, `phone_number`) VALUES ('1324', 'Nyomi Hess', '3047 Bronco Ln', '497-4296');
INSERT INTO `hospital`.`Person` (`ID`, `name`, `address`, `phone_number`) VALUES ('1432', 'Jamie Watson', '2400 Newburgh Rd', '544-9037');
INSERT INTO `hospital`.`Person` (`ID`, `name`, `address`, `phone_number`) VALUES ('1243', 'Dallas Barrett', '1025 23rd ave', '710-4144');
INSERT INTO `hospital`.`Person` (`ID`, `name`, `address`, `phone_number`) VALUES ('1342', 'Hedi Moore', '114 New York Ave', '482-1984');
INSERT INTO `hospital`.`Person` (`ID`, `name`, `address`, `phone_number`) VALUES ('2134', 'Jose Cuevas', '1114 W Detroit St', '304-5724');
INSERT INTO `hospital`.`Person` (`ID`, `name`, `address`, `phone_number`) VALUES ('2143', 'Kobe Carey', '885 Meridian Hwy', '744-3734');
INSERT INTO `hospital`.`Person` (`ID`, `name`, `address`, `phone_number`) VALUES ('2314', 'Hattie Mora', '680 Rice Station', '285-4044');
INSERT INTO `hospital`.`Person` (`ID`, `name`, `address`, `phone_number`) VALUES ('2341', 'Angela Matthews', '508 E Broad St', '812-5643');
INSERT INTO `hospital`.`Person` (`ID`, `name`, `address`, `phone_number`) VALUES ('2413', 'Lila McDonal', '2014 Cotton place', '555-5555');
INSERT INTO `hospital`.`Person` (`ID`, `name`, `address`, `phone_number`) VALUES ('3124', 'Emory Duke', '46 Park Dr', '694-7624');
INSERT INTO `hospital`.`Person` (`ID`, `name`, `address`, `phone_number`) VALUES ('3142', 'Julia Barber', '21 main St', '426-0078');
INSERT INTO `hospital`.`Person` (`ID`, `name`, `address`, `phone_number`) VALUES ('3214', 'Zoe Decker', '291 Griffith st', '900-2496');
INSERT INTO `hospital`.`Person` (`ID`, `name`, `address`, `phone_number`) VALUES ('3241', 'Maddox Hess', '275 Bridge lane', '368-2052');
INSERT INTO `hospital`.`Person` (`ID`, `name`, `address`, `phone_number`) VALUES ('3412', 'Joyce Moon', '7037 Ridge St', '249-8450');

INSERT INTO `hospital`.`Physician` (`physician_ID`, `expertise`, `certification_number`, `person_ID`) VALUES ('1', 'oncology', '11', '1234');
INSERT INTO `hospital`.`Physician` (`physician_ID`, `expertise`, `certification_number`, `person_ID`) VALUES ('2', 'pediatricts', '12', '1324');
INSERT INTO `hospital`.`Physician` (`physician_ID`, `expertise`, `certification_number`, `person_ID`) VALUES ('3', 'cardiology', '13', '1432');
INSERT INTO `hospital`.`Physician` (`physician_ID`, `expertise`, `certification_number`, `person_ID`) VALUES ('4', 'radiology', '14', '1243');
INSERT INTO `hospital`.`Physician` (`physician_ID`, `expertise`, `certification_number`, `person_ID`) VALUES ('5', 'epidemiology', '15', '1342');

INSERT INTO `hospital`.`Nurse` (`nurse_ID`, `certification_number`, `person_ID`) VALUES ('1', '21', '2134');
INSERT INTO `hospital`.`Nurse` (`nurse_ID`, `certification_number`, `person_ID`) VALUES ('2', '22', '2143');
INSERT INTO `hospital`.`Nurse` (`nurse_ID`, `certification_number`, `person_ID`) VALUES ('3', '23', '2314');
INSERT INTO `hospital`.`Nurse` (`nurse_ID`, `certification_number`, `person_ID`) VALUES ('4', '24', '2341');
INSERT INTO `hospital`.`Nurse` (`nurse_ID`, `certification_number`, `person_ID`) VALUES ('5', '25', '2413');

INSERT INTO `hospital`.`Payable_Items` (`payable_ID`, `fee`) VALUES ('1', '100');
INSERT INTO `hospital`.`Payable_Items` (`payable_ID`, `fee`) VALUES ('2', '100');
INSERT INTO `hospital`.`Payable_Items` (`payable_ID`, `fee`) VALUES ('3', '100');
INSERT INTO `hospital`.`Payable_Items` (`payable_ID`, `fee`) VALUES ('4', '50');
INSERT INTO `hospital`.`Payable_Items` (`payable_ID`, `fee`) VALUES ('5', '50');
INSERT INTO `hospital`.`Payable_Items` (`payable_ID`, `fee`) VALUES ('6', '10');
INSERT INTO `hospital`.`Payable_Items` (`payable_ID`, `fee`) VALUES ('7', '10');
INSERT INTO `hospital`.`Payable_Items` (`payable_ID`, `fee`) VALUES ('8', '10');
INSERT INTO `hospital`.`Payable_Items` (`payable_ID`, `fee`) VALUES ('9', '10');
INSERT INTO `hospital`.`Payable_Items` (`payable_ID`, `fee`) VALUES ('10', '10');

INSERT INTO `hospital`.`Patient` (`patient_id`, `person_ID`, `room_number`) VALUES ('1', '3124', '1');
INSERT INTO `hospital`.`Patient` (`patient_id`, `person_ID`, `room_number`) VALUES ('2', '3142', '2');
INSERT INTO `hospital`.`Patient` (`patient_id`, `person_ID`, `room_number`) VALUES ('3', '3214', '3');
INSERT INTO `hospital`.`Patient` (`patient_id`, `person_ID`, `room_number`) VALUES ('4', '3241', '4');
INSERT INTO `hospital`.`Patient` (`patient_id`, `person_ID`, `room_number`) VALUES ('5', '3412', '5');

INSERT INTO `hospital`.`Room` (`capacity`, `number`, `payable_ID`, `fee`) VALUES ('1', '1', '1', '100');
INSERT INTO `hospital`.`Room` (`capacity`, `number`, `payable_ID`, `fee`) VALUES ('1', '2', '2', '100');
INSERT INTO `hospital`.`Room` (`capacity`, `number`, `payable_ID`, `fee`) VALUES ('1', '3', '3', '100');
INSERT INTO `hospital`.`Room` (`capacity`, `number`, `payable_ID`, `fee`) VALUES ('2', '4', '4', '50');
INSERT INTO `hospital`.`Room` (`capacity`, `number`, `payable_ID`, `fee`) VALUES ('2', '5', '5', '50');

INSERT INTO `hospital`.`Monitors` (`physician_id`, `patient_id`, `duration`) VALUES ('1', '1', '3');
INSERT INTO `hospital`.`Monitors` (`physician_id`, `patient_id`, `duration`) VALUES ('2', '2', '2');
INSERT INTO `hospital`.`Monitors` (`physician_id`, `patient_id`, `duration`) VALUES ('3', '3', '6');
INSERT INTO `hospital`.`Monitors` (`physician_id`, `patient_id`, `duration`) VALUES ('4', '4', '4');
INSERT INTO `hospital`.`Monitors` (`physician_id`, `patient_id`, `duration`) VALUES ('5', '5', '1');

INSERT INTO `hospital`.`Health_Record` (`record_ID`, `disease`, `status`, `date`, `patient_ID`) VALUES ('1', 'cancer', 'in treatment', '2023-01-15', '1');
INSERT INTO `hospital`.`Health_Record` (`record_ID`, `disease`, `status`, `date`, `patient_ID`) VALUES ('2', 'strep', 'recovery', '2023-05-30', '2');
INSERT INTO `hospital`.`Health_Record` (`record_ID`, `disease`, `status`, `date`, `patient_ID`) VALUES ('3', 'heart failure', 'monitoring', '2023-04-01', '3');
INSERT INTO `hospital`.`Health_Record` (`record_ID`, `disease`, `status`, `date`, `patient_ID`) VALUES ('4', 'brain bleed', 'treating', '2023-03-27', '4');
INSERT INTO `hospital`.`Health_Record` (`record_ID`, `disease`, `status`, `date`, `patient_ID`) VALUES ('5', 'ebola', 'quarantine', '2015-08-21', '5');

INSERT INTO `hospital`.`Invoice` (`invoice_ID`, `patient_ID`, `date_issued`, `total_fee`, `date_paid`, `amount_paid`) VALUES ('1', '1', '2023-01-15', '110', '2023-01-30', '110');
INSERT INTO `hospital`.`Invoice` (`invoice_ID`, `patient_ID`, `date_issued`, `total_fee`, `date_paid`, `amount_paid`) VALUES ('2', '2', '2023-05-30', '110', '2023-06-15', '100');
INSERT INTO `hospital`.`Invoice` (`invoice_ID`, `patient_ID`, `date_issued`, `total_fee`, `date_paid`, `amount_paid`) VALUES ('3', '3', '2023-04-01', '110', '2023-04-15', '110');
INSERT INTO `hospital`.`Invoice` (`invoice_ID`, `patient_ID`, `date_issued`, `total_fee`, `date_paid`, `amount_paid`) VALUES ('4', '4', '2023-03-27', '60', '2023-04-12', '50');
INSERT INTO `hospital`.`Invoice` (`invoice_ID`, `patient_ID`, `date_issued`, `total_fee`, `date_paid`, `amount_paid`) VALUES ('5', '5', '2015-08-21', '60', '2015-09-07', '60');

INSERT INTO `hospital`.`Instruction` (`code`, `Description`, `physician_ID`, `patient_ID`, `fee`, `payable_ID`) VALUES ('1', 'chemo', '1', '1', '10', '6');
INSERT INTO `hospital`.`Instruction` (`code`, `Description`, `physician_ID`, `patient_ID`, `fee`, `payable_ID`) VALUES ('2', 'strep test', '2', '2', '10', '7');
INSERT INTO `hospital`.`Instruction` (`code`, `Description`, `physician_ID`, `patient_ID`, `fee`, `payable_ID`) VALUES ('3', 'draw blood', '3', '3', '10', '8');
INSERT INTO `hospital`.`Instruction` (`code`, `Description`, `physician_ID`, `patient_ID`, `fee`, `payable_ID`) VALUES ('4', 'MRI', '4', '4', '10', '9');
INSERT INTO `hospital`.`Instruction` (`code`, `Description`, `physician_ID`, `patient_ID`, `fee`, `payable_ID`) VALUES ('5', 'IV fluids', '5', '5', '10', '10');

INSERT INTO `hospital`.`OrdersInstruction` (`instruction_code`, `physician_ID`, `patient_ID`, `date`) VALUES ('1', '1', '1', '2023-01-15');
INSERT INTO `hospital`.`OrdersInstruction` (`instruction_code`, `physician_ID`, `patient_ID`, `date`) VALUES ('2', '2', '2', '2023-05-30');
INSERT INTO `hospital`.`OrdersInstruction` (`instruction_code`, `physician_ID`, `patient_ID`, `date`) VALUES ('3', '3', '3', '2023-04-01');
INSERT INTO `hospital`.`OrdersInstruction` (`instruction_code`, `physician_ID`, `patient_ID`, `date`) VALUES ('4', '4', '4', '2023-03-27');
INSERT INTO `hospital`.`OrdersInstruction` (`instruction_code`, `physician_ID`, `patient_ID`, `date`) VALUES ('5', '5', '5', '2015-08-21');

INSERT INTO `hospital`.`ExecutesInstruction` (`instruction_code`, `date`, `status`, `nurse_ID`, `patient_ID`) VALUES ('1', '2023-01-15', 'in progress', '1', '1');
INSERT INTO `hospital`.`ExecutesInstruction` (`instruction_code`, `date`, `status`, `nurse_ID`, `patient_ID`) VALUES ('2', '2023-05-30', 'complete', '2', '2');
INSERT INTO `hospital`.`ExecutesInstruction` (`instruction_code`, `date`, `status`, `nurse_ID`, `patient_ID`) VALUES ('3', '2023-04-01', 'not done', '3', '3');
INSERT INTO `hospital`.`ExecutesInstruction` (`instruction_code`, `date`, `status`, `nurse_ID`, `patient_ID`) VALUES ('4', '2023-03-27', 'in progress', '4', '4');
INSERT INTO `hospital`.`ExecutesInstruction` (`instruction_code`, `date`, `status`, `nurse_ID`, `patient_ID`) VALUES ('5', '2015-08-21', 'complete', '5', '5');

INSERT INTO `hospital`.`AdministerMedicine` (`medication_name`, `nurse_ID`, `patient_ID`, `amount`, `date`) VALUES ('Azacitidine', '1', '1', '10', '2023-01-15');
INSERT INTO `hospital`.`AdministerMedicine` (`medication_name`, `nurse_ID`, `patient_ID`, `amount`, `date`) VALUES ('doxycycline', '2', '2', '5', '2023-05-30');
INSERT INTO `hospital`.`AdministerMedicine` (`medication_name`, `nurse_ID`, `patient_ID`, `amount`, `date`) VALUES ('eliquis', '3', '3', '20', '2023-04-01');
INSERT INTO `hospital`.`AdministerMedicine` (`medication_name`, `nurse_ID`, `patient_ID`, `amount`, `date`) VALUES ('nimodipine', '4', '4', '8', '2023-03-27');
INSERT INTO `hospital`.`AdministerMedicine` (`medication_name`, `nurse_ID`, `patient_ID`, `amount`, `date`) VALUES ('Inmazeb', '5', '5', '30', '2015-08-21');

