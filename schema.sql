DROP TABLE IF EXISTS Billing;
DROP TABLE IF EXISTS MedicalRecords;
DROP TABLE IF EXISTS Prescriptions;
DROP TABLE IF EXISTS Medications;
DROP TABLE IF EXISTS Appointments;
DROP TABLE IF EXISTS Doctors;
DROP TABLE IF EXISTS Departments;
DROP TABLE IF EXISTS Patients;

CREATE TABLE Patients (
    patient_id INT IDENTITY PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    date_of_birth DATE,
    gender CHAR(1),
    contact_number VARCHAR(15),
    email VARCHAR(100) UNIQUE,
    address TEXT,
    insurance_provider VARCHAR(100)
);

CREATE TABLE Departments (
    department_id INT IDENTITY PRIMARY KEY,
    department_name VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE Doctors (
    doctor_id INT IDENTITY PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    specialization VARCHAR(100),
    department_id INT FOREIGN KEY REFERENCES Departments(department_id),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15)
);

CREATE TABLE Appointments (
    appointment_id INT IDENTITY PRIMARY KEY,
    patient_id INT FOREIGN KEY REFERENCES Patients(patient_id),
    doctor_id INT FOREIGN KEY REFERENCES Doctors(doctor_id),
    appointment_date DATETIME NOT NULL,
    reason TEXT,
    status VARCHAR(50) CHECK (status IN ('Scheduled', 'Completed', 'Cancelled'))
);

CREATE TABLE Medications (
    medication_id INT IDENTITY PRIMARY KEY,
    medication_name VARCHAR(100) UNIQUE,
    manufacturer VARCHAR(100),
    dosage_form VARCHAR(50)
);

CREATE TABLE Prescriptions (
    prescription_id INT IDENTITY PRIMARY KEY,
    appointment_id INT FOREIGN KEY REFERENCES Appointments(appointment_id),
    medication_id INT FOREIGN KEY REFERENCES Medications(medication_id),
    dosage VARCHAR(50),
    frequency VARCHAR(50),
    duration VARCHAR(50),
    notes TEXT
);

CREATE TABLE MedicalRecords (
    record_id INT IDENTITY PRIMARY KEY,
    patient_id INT FOREIGN KEY REFERENCES Patients(patient_id),
    appointment_id INT FOREIGN KEY REFERENCES Appointments(appointment_id),
    diagnosis TEXT,
    treatment TEXT,
    record_date DATETIME DEFAULT GETDATE()
);

CREATE TABLE Billing (
    bill_id INT IDENTITY PRIMARY KEY,
    patient_id INT FOREIGN KEY REFERENCES Patients(patient_id),
    appointment_id INT FOREIGN KEY REFERENCES Appointments(appointment_id),
    amount DECIMAL(10, 2),
    payment_status VARCHAR(50) CHECK (payment_status IN ('Paid', 'Pending', 'Cancelled')),
    payment_method VARCHAR(50),
    billing_date DATETIME DEFAULT GETDATE()
);

