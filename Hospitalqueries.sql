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
