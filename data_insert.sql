INSERT INTO Departments (department_name) VALUES
('Cardiology'), ('Neurology'), ('Pediatrics');

INSERT INTO Patients (first_name, last_name, date_of_birth, gender, contact_number, email, address, insurance_provider) VALUES
('John', 'Doe', '1980-03-15', 'M', '1234567890', 'john.doe@example.com', '123 Elm Street', 'HealthPlus'),
('Jane', 'Smith', '1992-07-24', 'F', '9876543210', 'jane.smith@example.com', '456 Oak Avenue', 'MediCare'),
('Alice', 'Johnson', '1985-11-05', 'F', '5551234567', 'alice.j@example.com', '789 Pine Road', 'LifeSecure');

INSERT INTO Doctors (first_name, last_name, specialization, department_id, email, phone) VALUES
('Emily', 'Brown', 'Cardiologist', 1, 'emily.brown@hospital.com', '1112223333'),
('Michael', 'Lee', 'Neurologist', 2, 'michael.lee@hospital.com', '4445556666'),
('David', 'Wilson', 'Pediatrician', 3, 'david.wilson@hospital.com', '7778889999');

INSERT INTO Appointments (patient_id, doctor_id, appointment_date, reason, status) VALUES
(1, 1, '2025-07-15 10:00:00', 'Chest pain', 'Completed'),
(2, 2, '2025-07-16 14:30:00', 'Headache', 'Scheduled'),
(3, 3, '2025-07-17 09:00:00', 'Fever', 'Completed');

INSERT INTO Medications (medication_name, manufacturer, dosage_form) VALUES
('Aspirin', 'Bayer', 'Tablet'),
('Ibuprofen', 'Advil', 'Capsule'),
('Paracetamol', 'Tylenol', 'Tablet');

INSERT INTO Prescriptions (appointment_id, medication_id, dosage, frequency, duration, notes) VALUES
(1, 1, '100mg', 'Twice a day', '5 days', 'Take after meals'),
(2, 2, '200mg', 'Once a day', '3 days', 'Take with water'),
(3, 3, '500mg', 'Three times a day', '7 days', 'If fever persists, revisit');

INSERT INTO MedicalRecords (patient_id, appointment_id, diagnosis, treatment, record_date) VALUES
(1, 1, 'Mild cardiac arrhythmia', 'Rest + medication', '2025-07-15'),
(2, 2, 'Migraine', 'Prescribed Ibuprofen', '2025-07-16'),
(3, 3, 'Viral fever', 'Paracetamol + hydration', '2025-07-17');

INSERT INTO Billing (patient_id, appointment_id, amount, payment_status, payment_method, billing_date) VALUES
(1, 1, 150.00, 'Paid', 'Credit Card', '2025-07-15'),
(2, 2, 120.00, 'Pending', 'Cash', '2025-07-16'),
(3, 3, 100.00, 'Paid', 'Insurance', '2025-07-17');
