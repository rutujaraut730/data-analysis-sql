--Hospital data set
CREATE TABLE patients (
    patient_id INTEGER,
    name TEXT,
    age INTEGER,
    disease TEXT,
    city TEXT,
    doctor TEXT,
    bill INTEGER
);

INSERT INTO patients VALUES (1, 'Rahul', 45, 'Diabetes', 'Mumbai', 'Dr. Sharma', 15000);
INSERT INTO patients VALUES (2, 'Priya', 32, 'Fever', 'Pune', 'Dr. Mehta', 3000);
INSERT INTO patients VALUES (3, 'Amit', 67, 'Heart Disease', 'Delhi', 'Dr. Sharma', 45000);
INSERT INTO patients VALUES (4, 'Sneha', 28, 'Fever', 'Mumbai', 'Dr. Mehta', 2500);
INSERT INTO patients VALUES (5, 'Ravi', 55, 'Diabetes', 'Bangalore', 'Dr. Patel', 18000);
INSERT INTO patients VALUES (6, 'Anjali', 41, 'Heart Disease', 'Pune', 'Dr. Sharma', 52000);
INSERT INTO patients VALUES (7, 'Meera', 36, 'Fever', 'Delhi', 'Dr. Patel', 2800);
INSERT INTO patients VALUES (8, 'Karan', 72, 'Diabetes', 'Mumbai', 'Dr. Mehta', 22000);
INSERT INTO patients VALUES (9, 'Pooja', 29, 'Fever', 'Bangalore', 'Dr. Sharma', 3200);
INSERT INTO patients VALUES (10, 'Vivek', 58, 'Heart Disease', 'Delhi', 'Dr. Patel', 48000);

-- Q1. Show all patients from Mumbai.
SELECT patient_id, name FROM patients WHERE city = 'Mumbai';

-- Q2. Show name and bill of patients whose bill is more than 10000.
SELECT name, bill FROM patients WHERE bill > 10000;

-- Q3. Show total bill amount for each disease.
SELECT SUM(bill), disease FROM patients GROUP BY disease;

-- Q4. Show average age of patients per city.
SELECT AVG(age), city FROM patients GROUP BY city;

-- Q5. Show the highest bill for each doctor.
SELECT MAX(bill), doctor FROM patients GROUP BY doctor;

-- Q6. Show diseases where average bill is more than 20000.
SELECT disease FROM patients GROUP BY disease HAVING AVG(bill) > 20000;

-- Q7. Show all patients sorted by age oldest to youngest.
SELECT * FROM patients ORDER BY age DESC;

-- Q8. Show patients who have Fever AND are from Delhi.
SELECT name FROM patients WHERE disease = 'Fever' AND city = 'Delhi';

-- Q9. Show count of patients per doctor.
SELECT COUNT(patient_id), doctor FROM patients GROUP BY doctor;

-- Q10. Show doctors where total bill collected is more than 50000 AND they have more than 2 patients.
SELECT doctor FROM patients GROUP BY doctor HAVING SUM(bill) > 50000 AND COUNT(patient_id) > 2;
