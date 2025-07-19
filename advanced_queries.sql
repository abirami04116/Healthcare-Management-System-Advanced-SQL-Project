SELECT 
    d.doctor_id,
    CONCAT(d.first_name, ' ', d.last_name) AS doctor_name,
    COUNT(a.appointment_id) AS total_appointments
FROM Doctors d
LEFT JOIN Appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id, d.first_name, d.last_name
ORDER BY total_appointments DESC;

SELECT 
    DISTINCT CONCAT(p.first_name, ' ', p.last_name) AS patient_name,
    m.medication_name
FROM Patients p
JOIN Appointments a ON p.patient_id = a.patient_id
JOIN Prescriptions pr ON a.appointment_id = pr.appointment_id
JOIN Medications m ON pr.medication_id = m.medication_id
WHERE m.medication_name = 'Paracetamol';

SELECT 
    status,
    COUNT(*) AS total
FROM Appointments
GROUP BY status;

SELECT 
    FORMAT(billing_date, 'yyyy-MM') AS billing_month,
    SUM(amount) AS total_paid
FROM Billing
WHERE payment_status = 'Paid'
GROUP BY FORMAT(billing_date, 'yyyy-MM')
ORDER BY billing_month DESC;

SELECT 
    CONCAT(d.first_name, ' ', d.last_name) AS doctor_name,
    dept.department_name
FROM Doctors d
JOIN Departments dept ON d.department_id = dept.department_id;

SELECT 
    p.patient_id,
    CONCAT(p.first_name, ' ', p.last_name) AS patient_name,
    MAX(a.appointment_date) AS last_visit
FROM Patients p
JOIN Appointments a ON p.patient_id = a.patient_id
GROUP BY p.patient_id, p.first_name, p.last_name;

SELECT 
    CONCAT(p.first_name, ' ', p.last_name) AS patient_name,
    mr.diagnosis,
    mr.treatment,
    a.appointment_date,
    d.specialization
FROM MedicalRecords mr
JOIN Appointments a ON mr.appointment_id = a.appointment_id
JOIN Patients p ON mr.patient_id = p.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id
ORDER BY a.appointment_date DESC;

SELECT 
    p.patient_id,
    CONCAT(p.first_name, ' ', p.last_name) AS patient_name,
    COUNT(a.appointment_id) AS visit_count
FROM Patients p
JOIN Appointments a ON p.patient_id = a.patient_id
GROUP BY p.patient_id, p.first_name, p.last_name
HAVING COUNT(a.appointment_id) > 1;

GO


CREATE VIEW FrequentVisitors_V2 AS
SELECT 
    p.patient_id,
    CONCAT(p.first_name, ' ', p.last_name) AS patient_name,
    COUNT(a.appointment_id) AS total_visits
FROM Patients p
JOIN Appointments a ON p.patient_id = a.patient_id
GROUP BY p.patient_id, p.first_name, p.last_name
HAVING COUNT(a.appointment_id) >= 2;
GO

SELECT * FROM FrequentVisitors;
