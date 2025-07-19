# 🏥 Healthcare Management System – Advanced SQL Project

## 1. 📘 Introduction

This project is a comprehensive **Healthcare Management System** built using **Advanced SQL** concepts. It simulates real-world healthcare operations such as managing **patients, doctors, appointments, medical records, prescriptions, billing**, and **departments**. The system is designed with a well-structured relational schema, and advanced SQL queries are used to extract meaningful insights from the data.

----------

## 2. 🗂️ Data Model & Schema Design

### 📌 Entities Involved:

-   Patients
    
-   Doctors
    
-   Appointments
    
-   Departments
    
-   Prescriptions
    
-   Medications
    
-   Medical Records
    
-   Billing
    

A relational schema was designed using **primary keys, foreign keys, normalization**, and **entity relationships**. The ER diagram is also created using DBMS tools.

----------

## 3. 🛠️ Tools Used

Tool

Purpose

SQL Server Management Studio (SSMS)

Database creation, schema definition, and query execution

T-SQL

Writing schema and advanced queries

GitHub

Version control and project sharing

----------

## 4. 🔄 Step-by-Step Project Workflow

### A. 🔧 Schema Creation

> Created the full relational database schema with the following SQL:



`CREATE  TABLE Patients (...);
 CREATE  TABLE Doctors (...);
 CREATE  TABLE Appointments (...); 
 CREATE  TABLE Departments (...);
 CREATE  TABLE Prescriptions (...); 
 CREATE  TABLE Medications (...); 
 CREATE  TABLE MedicalRecords (...);
 CREATE  TABLE Billing (...);` 

✅ Primary and Foreign Keys are properly assigned.  
✅ Normalized to avoid redundancy.

----------

### B. 🧪 Sample Data Insertion

> Populated all 8 tables using `INSERT INTO` with meaningful test data for realistic query outputs.

----------

### C. 📊 Advanced SQL Queries

Query No.

Purpose

1-Total number of appointments per doctor

2-Patients who were prescribed "Paracetamol"

3-Appointment status summary

4-Monthly billing summary (paid only)

5-Doctors and their department

6-Most recent visit date per patient

7-Medical history of each patient including doctor specialization

8-Patients who visited more than once

9-Creating a view: `FrequentVisitors`

10-Selecting from the created view
Example:

`SELECT CONCAT(d.first_name, ' ', d.last_name) AS doctor_name, COUNT(a.appointment_id) AS total_appointments FROM Doctors d LEFT  JOIN Appointments a ON d.doctor_id = a.doctor_id GROUP  BY d.doctor_id;` 

----------

## 5. ⚠️ Challenges Faced

Challenge-Resolution

`'CREATE VIEW' must be first in batch`-
Used `GO` statements to batch queries in SQL Server

Invalid table errors-
Ensured proper table creation and sequencing before running inserts or queries

Join logic errors-
Used aliases and clear JOIN conditions for all multi-table queries

----------

## 6. 🎓 Key Learnings

-   Designed a **normalized healthcare schema** from scratch
    
-   Wrote **complex JOINs**, **GROUP BY**, **views**, and **aggregations**
    
-   Understood real-world relationships between healthcare entities
    
-   Practiced SQL optimization (e.g., `CREATE INDEX`)
    
-   Learned how to **organize SQL projects** for GitHub & LinkedIn portfolios
    

----------

## 7. ✅ Conclusion

This project showcases how **Advanced SQL** can power real-world applications like hospital systems. From managing patient records to generating billing reports and medical insights, the queries reflect core database skills crucial in healthcare IT, data analytics, and backend development roles.
