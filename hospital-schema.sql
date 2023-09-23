DROP DATABASE IF EXISTS hospital;
CREATE DATABASE hospital;
USE hospital;

CREATE TABLE Person (
    ID INT PRIMARY KEY,
    name VARCHAR(255),
    address VARCHAR(255),
    phone_number VARCHAR(20)
);

CREATE TABLE Physician (
    physician_ID INT PRIMARY KEY,
    expertise VARCHAR(255),
    certification_number VARCHAR(255),
    person_ID INT,
    FOREIGN KEY (person_ID) REFERENCES Person (ID)
);

CREATE TABLE Nurse (
    nurse_ID INT PRIMARY KEY,
    certification_number VARCHAR(255),
    person_ID INT,
    FOREIGN KEY (person_ID) REFERENCES Person (ID)
);
CREATE TABLE Payable_Items (
    payable_ID INT PRIMARY KEY,
    fee DECIMAL(10,2)
);

CREATE TABLE Room (
    capacity INT,
    number INT PRIMARY KEY,
    payable_ID INT,
    fee DECIMAL(10,2),
    FOREIGN KEY (payable_ID) REFERENCES Payable_Items (payable_ID)
);

CREATE TABLE Patient (
    patient_id INT PRIMARY KEY,
    person_ID INT,
    room_number INT,
    FOREIGN KEY (person_ID) REFERENCES Person (ID),
    FOREIGN KEY (room_number) REFERENCES Room (number)
);

CREATE TABLE Monitors (
    physician_id INT,
    patient_id INT,
    duration INT,
    PRIMARY KEY (physician_id, patient_id),
    FOREIGN KEY (physician_id) REFERENCES Physician (physician_ID),
    FOREIGN KEY (patient_id) REFERENCES Patient (patient_id)
);

CREATE TABLE Health_Record (
    record_ID INT PRIMARY KEY,
    disease VARCHAR(50),
    status VARCHAR(50),
    date DATE,
    patient_ID INT,
    FOREIGN KEY (patient_ID) REFERENCES Patient (patient_id)
);


CREATE TABLE Invoice (
    invoice_ID INT PRIMARY KEY,
    patient_ID INT,
    date_issued DATE,
    total_fee DECIMAL(10,2),
    date_paid DATE,
    amount_paid DECIMAL(10,2),
    FOREIGN KEY (patient_ID) REFERENCES Patient (patient_id)
);

CREATE TABLE Instruction (
    code INT PRIMARY KEY,
    Description VARCHAR(50),
    physician_ID INT,
    patient_ID INT,
    fee DECIMAL(10,2),
    payable_ID INT,
    FOREIGN KEY (physician_ID) REFERENCES Physician (physician_ID),
    FOREIGN KEY (payable_ID) REFERENCES Payable_Items (payable_ID),
    FOREIGN KEY (patient_ID) REFERENCES Patient (patient_id)
);

CREATE TABLE OrdersInstruction (
    instruction_code INT,
    physician_ID INT,
    patient_ID INT,
    date DATE,
    PRIMARY KEY (instruction_code, physician_ID, patient_ID),
    FOREIGN KEY (physician_ID) REFERENCES Physician (physician_ID),
    FOREIGN KEY (patient_ID) REFERENCES Patient (patient_id),
    FOREIGN KEY (instruction_code) REFERENCES Instruction (code)
);

CREATE TABLE ExecutesInstruction (
    instruction_code INT,
    date DATE,
    status VARCHAR(50),
    nurse_ID INT,
    patient_ID INT,
    PRIMARY KEY (instruction_code, nurse_ID, patient_ID),
    FOREIGN KEY (nurse_ID) REFERENCES Nurse (nurse_ID),
    FOREIGN KEY (patient_ID) REFERENCES Patient (patient_id),
    FOREIGN KEY (instruction_code) REFERENCES Instruction (code)
);

CREATE TABLE AdministerMedicine (
    medication_name VARCHAR(50),
    nurse_ID INT,
    patient_ID INT,
    amount INT,
    date DATE,
    PRIMARY KEY (medication_name, nurse_ID, patient_ID),
    FOREIGN KEY (nurse_ID) REFERENCES Nurse (nurse_ID),
    FOREIGN KEY (patient_ID) REFERENCES Patient (patient_id)
);