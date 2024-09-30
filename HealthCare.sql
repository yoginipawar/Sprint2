DROP DATABASE HealthcareDB;
CREATE DATABASE HealthcareDB;

USE HealthcareDB;

CREATE TABLE Patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    FullName VARCHAR(50),
    dob DATE,
    gender ENUM('Male', 'Female', 'Other'),
    contact_number VARCHAR(15)
);

INSERT INTO Patients (patient_id, FullName, dob, Gender, contact_number) VALUES
(1, 'Olot Volcanic', '2019-11-05', 'Female', '9128702069'),
(2, 'Calatrava', '2020-10-08', 'Female', '9120202972'),
(3, 'Larderello', '2020-9-03', 'Male', '9126591978'),
(4, 'Vulsini', '2001-08-27', 'Male', '9126470042'),
(5, 'Colli Alban', '2002-07-08', 'Male', '9122266351'),
(6, 'Campi Flegrei', '2003-06-25', 'Male', '9129546487'),
(7, 'Vesuvius', '2005-05-15', 'Female', '9125873016'),
(8, 'Ischia', '2001-04-24', 'Female', '9123767683'),
(9, 'Palinuro', '2006-05-10', 'Female', '9124903470'),
(10, 'Stromboli', '2007-03-20', 'Female', '9126863047'),
(11, 'Panarea', '2007-02-06', 'Female', '9121338886'),
(12, 'Lipari', '2008-1-09', 'Male', '9121058703'),
(13, 'Vulcano', '2008-12-12', 'Female', '9127078301'),
(14, 'Etna', '2008-11-07', 'Male', '9123333317'),
(15, 'Campi Flegrei', '2001-10-29', 'Female', '9121760200'),
(16, 'Pantelleria', '2002-09-15', 'Female', '9126344444'),
(17, 'Marsili', '2006-08-11', 'Female', '9122228998'),
(18, 'Amiata', '2005-07-01', 'Male', '9122860303'),
(19, 'Methana', '2019-06-21', 'Male', '9126405050'),
(20, 'Milos', '2019-05-01', 'Female', '9126921000'),
(21, 'Santorini', '2020-04-30', 'Male', '9123323223'),
(22, 'Nisyros', '2020-03-05', 'Male', '9121444924'),
(23, 'Yali', '2021-03-09', 'Male', '9121007476'),
(24, 'Kos', '2003-01-17', 'Male', '9124400045'),
(25, 'Kula', '2004-01-12', 'Male', '9121100078'),
(26, 'Karapinar Field', '2000-02-18', 'Female', '9127008000'),
(27, 'Hasan Dagi', '2000-03-19', 'Male', '9122252622'),
(28, 'Gollu Dag', '2000-04-20', 'Female', '9124448424'),
(29, 'Acigol-Nevsehir', '2000-05-21', 'Female', '9122012004'),
(30, 'Erciyes Dagi', '2000-06-22', 'Male', '9125068079'),
(31, 'Karaca Dag', '2001-07-25', 'Male', '9120507565'),
(32, 'Nemrut Dagi', '2001-08-28', 'Male', '9128474943'),
(33, 'Tenduruk Dagi', '2001-09-10', 'Male', '9121018736'),
(34, 'Ararat', '2002-10-15', 'Male', '9121104090'),
(35, 'Elbrus', '2002-11-06', 'Female', '9120966678'),
(36, 'Kazbek', '2002-12-07', 'Female', '9120876558'),
(37, 'Samsari cenro', '2004-01-10', 'Male', '9120837579'),
(38, 'Aragats', '2006-02-11', 'Female', '9121985700'),
(39, 'Ghegam Ridge', '2006-03-23', 'Female', '9121138217'),
(40, 'Dar-Alages', '2004-04-04', 'Male', '9128190060'),
(41, 'Porak', '2008-05-05', 'Female', '9129595506'),
(42, 'Tskhouk-Karckar', '2008-06-06', 'Male', '9126186540'),
(43, 'Tair', '2007-07-09', 'Female', '9121054110'),
(44, 'Zubair', '2007-08-14', 'Female', '9121018282'),
(45, 'Zukur', '2002-09-26', 'Male', '9128052369'),
(46, 'Hanish', '2001-10-03', 'Female', '9122080550'),
(47, 'Sujata','2023-11-15', 'Female', '9129726200'),
(48, 'Anish', '2023-12-08', 'Male', '9122726500'),
(49, 'Jalua', '2023-01-17', 'Male', '9124726200'),
(50, 'Shubham', '2023-02-16', 'Male', '9126726200');
#select * from Patients;

CREATE TABLE Appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    appointment_date DATETIME,
    doctor_name VARCHAR(100),
    status ENUM('Scheduled', 'Completed', 'Cancelled'),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);
INSERT INTO Appointments (patient_id, appointment_date, doctor_name, status) VALUES
(1, '2024-01-20', 'Dr John Smith', 'Scheduled'),
(2, '2024-02-20', 'Dr Emily Johnson', 'Completed'),
(3, '2024-02-27', 'Dr Michael Brown', 'Cancelled'),
(4, '2024-03-10', 'Dr Sarah Davis', 'Scheduled'),
(5, '2024-04-11', 'Dr David Wilson', 'Completed'),
(6, '2024-05-12', 'Dr Laura Martinez', 'Cancelled'),
(7, '2024-06-13', 'Dr James Anderson', 'Scheduled'),
(8, '2024-07-14', 'Dr Linda Taylor', 'Completed'),
(9, '2024-07-15', 'Dr Robert Thomas', 'Cancelled'),
(10, '2024-08-16', 'Dr Barbara Moore', 'Scheduled'),
(11, '2024-10-17', 'Dr William Jackson', 'Completed'),
(12, '2024-12-18', 'Dr Patricia White', 'Cancelled'),
(13, '2024-02-19', 'Dr Charles Harris', 'Scheduled'),
(14, '2024-04-20', 'Dr Jennifer Martin', 'Completed'),
(15, '2024-06-21', 'Dr Joseph Thompson', 'Cancelled'),
(16, '2024-08-22', 'Dr Mary Garcia', 'Scheduled'),
(17, '2024-10-23', 'Dr Christopher Martinez', 'Completed'),
(18, '2024-11-24', 'Dr Karen Robinson', 'Cancelled'),
(19, '2024-01-25', 'Dr Daniel Clark', 'Scheduled'),
(20, '2024-02-26', 'Dr Nancy Rodriguez', 'Completed'),
(21, '2024-03-27', 'Dr Matthew Lewis', 'Cancelled'),
(22, '2024-04-28', 'Dr Susan Lee', 'Scheduled'),
(23, '2024-05-11', 'Dr Anthony Walker', 'Completed'),
(24, '2024-06-12', 'Dr Jessica Hall', 'Cancelled'),
(25, '2024-07-13', 'Dr Mark Allen', 'Scheduled'),
(26, '2024-07-14', 'Dr Elizabeth Young', 'Completed'),
(27, '2024-11-15', 'Dr Steven King', 'Cancelled'),
(28, '2024-12-16', 'Dr Karen Wright', 'Scheduled'),
(29, '2024-01-17', 'Dr Brian Scott', 'Completed'),
(30, '2024-02-18', 'Dr Lisa Green', 'Cancelled'),
(31, '2024-03-19', 'Dr Kevin Adams', 'Scheduled'),
(32, '2024-03-20', 'Dr Sandra Baker', 'Completed'),
(33, '2024-11-22', 'Dr Jason Gonzalez', 'Cancelled'),
(34, '2024-04-23', 'Dr Donna Nelson', 'Scheduled'),
(35, '2024-07-24', 'Dr Eric Carter', 'Completed'),
(36, '2024-02-25', 'Dr Michelle Mitchell', 'Cancelled'),
(37, '2024-07-26', 'Dr George Perez', 'Scheduled'),
(38, '2024-04-27', 'Dr Angela Roberts', 'Completed'),
(39, '2024-06-28', 'Dr Paul Turner', 'Cancelled'),
(40, '2024-01-29', 'Dr Sharon Phillips', 'Scheduled'),
(41, '2024-10-30', 'Dr Kenneth Campbell', 'Completed'),
(42, '2024-11-12', 'Dr Deborah Parker', 'Cancelled'),
(43, '2024-10-03', 'Dr Ronald Evans', 'Scheduled'),
(44, '2024-12-04', 'Dr Cynthia Edwards', 'Completed'),
(45, '2024-01-05', 'Dr Jeffrey Collins', 'Cancelled'),
(46, '2024-10-06', 'Dr Rebecca Stewart', 'Scheduled'),
(47, '2024-12-07', 'Dr Frank Sanchez', 'Completed'),
(48, '2024-07-08', 'Dr Stephanie Morris', 'Cancelled'),
(49, '2024-08-09', 'Dr Raymond Rogers', 'Scheduled'),
(50, '2024-10-10', 'Dr Kathleen Reed', 'Completed');

#select * from Appointments;
DROP TABLE IF EXISTS medical_history;

CREATE TABLE Medical_History (
   history_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    `condition` VARCHAR(100),
    date_diagnosed DATE,
    treatment VARCHAR(100),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);

INSERT INTO Medical_History (patient_id, `condition`, date_diagnosed, treatment) VALUES
(1, 'Hypertension', '2023-05-15', 'Medication'),
(2, 'Diabetes', '2022-11-20', 'Insulin'),
(3, 'Asthma', '2021-08-10', 'Inhaler'),
(4, 'Arthritis', '2020-02-25', 'Physical Therapy'),
(5, 'Migraine', '2023-01-05', 'Pain Relief'),
(6, 'Allergy', '2022-04-18', 'Antihistamines'),
(7, 'Depression', '2021-09-30', 'Counseling'),
(8, 'Anxiety', '2020-12-12', 'Therapy'),
(9, 'Obesity', '2023-03-22', 'Diet Plan'),
(10, 'Heart Disease', '2022-06-15', 'Surgery'),
(11, 'Hypertension', '2023-05-15', 'Medication'),
(12, 'Diabetes', '2022-11-20', 'Insulin'),
(13, 'Asthma', '2021-08-10', 'Inhaler'),
(14, 'Arthritis', '2020-02-25', 'Physical Therapy'),
(15, 'Migraine', '2023-01-05', 'Pain Relief'),
(16, 'Allergy', '2022-04-18', 'Antihistamines'),
(17, 'Depression', '2021-09-30', 'Counseling'),
(18, 'Anxiety', '2020-12-12', 'Therapy'),
(19, 'Obesity', '2023-03-22', 'Diet Plan'),
(20, 'Heart Disease', '2022-06-15', 'Surgery'),
(21, 'Hypertension', '2023-05-15', 'Medication'),
(22, 'Diabetes', '2022-11-20', 'Insulin'),
(23, 'Asthma', '2021-08-10', 'Inhaler'),
(24, 'Arthritis', '2020-02-25', 'Physical Therapy'),
(25, 'Migraine', '2023-01-05', 'Pain Relief'),
(26, 'Allergy', '2022-04-18', 'Antihistamines'),
(27, 'Depression', '2021-09-30', 'Counseling'),
(28, 'Anxiety', '2020-12-12', 'Therapy'),
(29, 'Obesity', '2023-03-22', 'Diet Plan'),
(30, 'Heart Disease', '2022-06-15', 'Surgery'),
(31, 'Hypertension', '2023-05-15', 'Medication'),
(32, 'Diabetes', '2022-11-20', 'Insulin'),
(33, 'Asthma', '2021-08-10', 'Inhaler'),
(34, 'Arthritis', '2020-02-25', 'Physical Therapy'),
(35, 'Migraine', '2023-01-05', 'Pain Relief'),
(36, 'Allergy', '2022-04-18', 'Antihistamines'),
(37, 'Depression', '2021-09-30', 'Counseling'),
(38, 'Anxiety', '2020-12-12', 'Therapy'),
(39, 'Obesity', '2023-03-22', 'Diet Plan'),
(40, 'Heart Disease', '2022-06-15', 'Surgery'),
(41, 'Hypertension', '2023-05-15', 'Medication'),
(42, 'Diabetes', '2022-11-20', 'Insulin'),
(43, 'Asthma', '2021-08-10', 'Inhaler'),
(44, 'Arthritis', '2020-02-25', 'Physical Therapy'),
(45, 'Migraine', '2023-01-05', 'Pain Relief'),
(46, 'Allergy', '2022-04-18', 'Antihistamines'),
(47, 'Depression', '2021-09-30', 'Counseling'),
(48, 'Anxiety', '2020-12-12', 'Therapy'),
(49, 'Obesity', '2023-03-22', 'Diet Plan'),
(50, 'Heart Disease', '2022-06-15', 'Surgery');
#select * from Medical_History;

#joining all the column

SELECT 
    a.patient_id,
    a.appointment_date,
    a.doctor_name,
    a.status,
    p.FullName,
    p.dob,
    p.gender,
    p.contact_number,
    m.`condition`,
    m.date_diagnosed,
    m.treatment
FROM 
    Appointments a
JOIN 
    Patients p ON a.patient_id = p.patient_id
JOIN 
    Medical_History m ON a.patient_id = m.patient_id
LIMIT 0, 1000;

#using group to see the total appointments of patient

SELECT 
    p.patient_id,
    p.FullName,
    COUNT(a.appointment_id) AS total_appointments,
    COUNT(m.history_id) AS total_conditions
FROM 
    Patients p
LEFT JOIN 
    Appointments a ON p.patient_id = a.patient_id
LEFT JOIN 
    Medical_History m ON p.patient_id = m.patient_id
GROUP BY 
    p.patient_id, p.FullName;
