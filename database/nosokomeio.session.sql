CREATE DATABASE IF NOT EXISTS student_2322;
USE student_2322;

CREATE TABLE CLINIC(
name VARCHAR(30) NOT NULL PRIMARY KEY,
area FLOAT(6,2),
phonenum CHAR(10),
managername VARCHAR(50)
);

CREATE TABLE ROOM(
roomnum INT(3) NOT NULL PRIMARY KEY,
beds INT(3),
floor TINYINT(2)
);

CREATE TABLE MEDSPEC(
id CHAR(7) NOT NULL PRIMARY KEY,
name VARCHAR(30),
specyears TINYINT(2)
);

CREATE TABLE OFFICE(
id CHAR(7) NOT NULL PRIMARY KEY,
phonenum CHAR(10),
floor TINYINT(2)
);

CREATE TABLE PATIENT(
id CHAR(7) NOT NULL PRIMARY KEY,
surname VARCHAR(30),
name VARCHAR(20),
birthday DATE NOT NULL,
patient_cli VARCHAR(30) NOT NULL,
num_room INT(3) NOT NULL,
FOREIGN KEY (patient_cli) REFERENCES CLINIC(name),
FOREIGN KEY (num_room) REFERENCES ROOM(roomnum)
);

CREATE TABLE DOCTOR(
id INT(5) NOT NULL PRIMARY KEY,
name VARCHAR(20),
surname VARCHAR(30),
workyears TINYINT(2),
off_id CHAR(7) NOT NULL,
workcli VARCHAR(30) NOT NULL,
spec_id CHAR(7) NOT NULL,
UNIQUE (off_id),
FOREIGN KEY (spec_id) REFERENCES MEDSPEC(id),
FOREIGN KEY (workcli) REFERENCES CLINIC(name),
FOREIGN KEY (off_id) REFERENCES OFFICE(id)
);

CREATE TABLE ILLNESS(
icd VARCHAR(7) NOT NULL PRIMARY KEY,
name VARCHAR(30),
symptoms VARCHAR(80)
);

CREATE TABLE MEDICINE(
id CHAR(7) NOT NULL PRIMARY KEY,
name VARCHAR(30),
dosage VARCHAR(50)
);

CREATE TABLE MEDTEST(
id CHAR(7) NOT NULL PRIMARY KEY,
name VARCHAR(30),
method VARCHAR(60)
);

CREATE TABLE PRESCRIBED(
pr_pat CHAR(7) NOT NULL,
pr_med CHAR(7) NOT NULL,
start_date DATE,
end_date DATE,
PRIMARY KEY (pr_pat, pr_med),
FOREIGN KEY (pr_pat) REFERENCES PATIENT(id),
FOREIGN KEY (pr_med) REFERENCES MEDICINE(id)
);

CREATE TABLE PERFORMS(
p_pat CHAR(7) NOT NULL,
p_met CHAR(7) NOT NULL,
medt_date DATE,
PRIMARY KEY (p_pat, p_met),
FOREIGN KEY (p_pat) REFERENCES PATIENT(id),
FOREIGN KEY (p_met) REFERENCES MEDTEST(id)
);

CREATE TABLE SUFFERS(
s_pat CHAR(7) NOT NULL,
s_ill CHAR(7) NOT NULL,
start_date DATE,
end_date DATE,
PRIMARY KEY (s_pat, s_ill),
FOREIGN KEY (s_pat) REFERENCES PATIENT(id),
FOREIGN KEY (s_ill) REFERENCES ILLNESS(icd)
);

INSERT INTO CLINIC VALUES ('Pathology', 500.15, 2510123456, 'Panagiotis Georgiadis');
INSERT INTO CLINIC VALUES ('Cardiology', 270.85, 2510234567, 'Apostolis Mpletsas');
INSERT INTO CLINIC VALUES ('Neurosurgery', 320.00, 2510345687, 'Ioannis Tzimperidis');
INSERT INTO CLINIC VALUES ('Orthopedics', 318.00, 2510456789, 'Sotiris Papachristos');
INSERT INTO CLINIC VALUES ('Otolaryngology', 212.00, 2510567890, 'Ioannis Theofanidis');
INSERT INTO CLINIC VALUES ('Urology', 421.00, 2510678901, 'Leuteris Malgarinos');

INSERT INTO ROOM VALUES (132, 2, 1);
INSERT INTO ROOM VALUES (243, 4, 2);
INSERT INTO ROOM VALUES (321, 3, 3);
INSERT INTO ROOM VALUES (432, 2, 4);
INSERT INTO ROOM VALUES (543, 4, 5);
INSERT INTO ROOM VALUES (654, 2, 6);

INSERT INTO MEDSPEC VALUES ('MED1234', 'Pathology', 2);
INSERT INTO MEDSPEC VALUES ('MED2345', 'Gynecology', 5);
INSERT INTO MEDSPEC VALUES ('MED3456', 'Cardiology', 3);
INSERT INTO MEDSPEC VALUES ('MED4567', 'Pediatrics', 4);
INSERT INTO MEDSPEC VALUES ('MED5678', 'Neurology', 3);

INSERT INTO OFFICE VALUES (1234567, 6969696969, 2);
INSERT INTO OFFICE VALUES (2345678, 6996699669, 5);
INSERT INTO OFFICE VALUES (3456789, 6912345678, 3);
INSERT INTO OFFICE VALUES (4567891, 6923456789, 1);
INSERT INTO OFFICE VALUES (5678910, 6934567890, 2);
INSERT INTO OFFICE VALUES (5678764, 6984188719, 3);
INSERT INTO OFFICE VALUES (9864976, 6921987654, 5);
INSERT INTO OFFICE VALUES (9978646, 6998721654, 3);
INSERT INTO OFFICE VALUES (9354555, 6965448855, 4);
INSERT INTO OFFICE VALUES (8542366, 6978995556, 2);

INSERT INTO PATIENT VALUES (1234567, 'Theofanidis', 'Marios', '2002-09-21', 'Pathology', 321);
INSERT INTO PATIENT VALUES (2345678, 'Papaxristos', 'Kostantinos', '2001-01-9', 'Cardiology', 432);
INSERT INTO PATIENT VALUES (3456789, 'Malgarinos', 'Giorgos', '2001-03-07', 'Pathology', 543);
INSERT INTO PATIENT VALUES (8374671, 'Xristidis', 'Xristos', '1999-09-29', 'Otolaryngology', 654);
INSERT INTO PATIENT VALUES (8364769, 'Karras', 'Vasilis', '1998-10-02', 'Urology', 243);
INSERT INTO PATIENT VALUES (7614152, 'Papagiannis', 'Giorgos', '1993-07-09', 'Pathology', 543);

INSERT INTO DOCTOR VALUES (12345, 'Pantelis', 'Pantelidis', 7, 1234567, 'Pathology', 'MED1234');
INSERT INTO DOCTOR VALUES (23456, 'Sakis', 'Roubas', 15, 2345678, 'Cardiology', 'MED2345');
INSERT INTO DOCTOR VALUES (34567, 'Andreas', 'Mikroutsikos', 12, 3456789, 'Neurosurgery', 'MED3456');
INSERT INTO DOCTOR VALUES (36294, 'Mixalis', 'Xatzigiannis', 9, 4567891, 'Orthopedics', 'MED4567');
INSERT INTO DOCTOR VALUES (83717, 'Ioannis', 'Ploutarxos', 10, 5678910, 'Urology', 'MED5678');
INSERT INTO DOCTOR VALUES (48159, 'Petros', 'Iakovidis', 8, 5678764, 'Cardiology', 'MED2345');
INSERT INTO DOCTOR VALUES (14895, 'Paulos', 'Gkordis', 16, 9864976, 'Cardiology', 'MED5678');

INSERT INTO ILLNESS VALUES('E11','Diabetes (Type 2)','Polydipsia and increased hunger.');
INSERT INTO ILLNESS VALUES('I50','Heart Failure','Difficultyin breathing, fatigue, swelling in the legs');
INSERT INTO ILLNESS VALUES('F32-F34','Depression','Loss of interest');
INSERT INTO ILLNESS VALUES('G20','Parkinson','Motor difficulty, tremor, hypoactivity');
INSERT INTO ILLNESS VALUES('T78.0','Food Allergy','Itching');

INSERT INTO MEDICINE VALUES('N04CA11', 'Insulin', '1 injection each noon');
INSERT INTO MEDICINE VALUES('N14BA31', 'Carvedilol', '3.125mg twice a day');
INSERT INTO MEDICINE VALUES('N02BC04', 'Sertaline', '60mg twice a day');
INSERT INTO MEDICINE VALUES('N04BA01', 'Levodopa', '12.5mg once a day');
INSERT INTO MEDICINE VALUES('N07BA83', 'Adrenaline', '1 injection per day');

INSERT INTO MEDTEST VALUES(3648724, 'Whole Blood', 'Counting red blood cells, white blode cells and patelets');
INSERT INTO MEDTEST VALUES(8273453, 'Hemostatic Profil', 'Blood clotting ability');
INSERT INTO MEDTEST VALUES(2634281, 'Blood Glucose Measure', 'Blood glucose monitoring');
INSERT INTO MEDTEST VALUES(9123874, 'Axonic', 'X-ray usage');
INSERT INTO MEDTEST VALUES(1287434, 'Electrocardiogram', 'Measurement of electronic cardiac activity');

INSERT INTO PRESCRIBED VALUES(1234567, 'N04CA11', '2019-06-11', '2023-06-18');
INSERT INTO PRESCRIBED VALUES(2345678, 'N02BC04', '2023-08-23', '2023-08-25');
INSERT INTO PRESCRIBED VALUES(3456789, 'N14BA31', '2023-09-02', '2023-09-12');
INSERT INTO PRESCRIBED VALUES(8374671, 'N04CA11', '2021-03-22', '2023-12-18');
INSERT INTO PRESCRIBED VALUES(8364769, 'N07BA83', '2022-07-12', '2023-01-14');

INSERT INTO PERFORMS VALUES(1234567, 3648724, '2023-01-22');
INSERT INTO PERFORMS VALUES(2345678, 8273453, '2022-09-12');
INSERT INTO PERFORMS VALUES(3456789, 2634281, '2022-06-28');
INSERT INTO PERFORMS VALUES(8374671, 9123874, '2022-01-06');
INSERT INTO PERFORMS VALUES(8364769, 1287434, '2021-12-14');

INSERT INTO SUFFERS VALUES(1234567, 'E11', '2010-01-11', '2023-12-18');
INSERT INTO SUFFERS VALUES(2345678, 'I50', '2019-04-18', '2023-11-16');
INSERT INTO SUFFERS VALUES(3456789, 'F32-F34', '2022-01-22', '2023-09-22');
INSERT INTO SUFFERS VALUES(8374671, 'G20', '2021-08-09', '2023-06-19');
INSERT INTO SUFFERS VALUES(8364769, 'T78.0', '2008-05-22', '2019-09-04');


-- erwthma 4a
SELECT name, phonenum
FROM CLINIC
WHERE managername LIKE 'Panagiotis%';

-- erwthma 4b
SET @@sql_mode = SYS.LIST_DROP(@@sql_mode, 'ONLY_FULL_GROUP_BY');
SELECT name, surname, spec_id, workcli
FROM DOCTOR
WHERE workcli = 'Cardiology'
GROUP BY spec_id
ORDER BY workyears;

-- erwthma 4c
SELECT *
FROM PATIENT
WHERE id IN (
    SELECT s_pat
    FROM SUFFERS
    WHERE s_ill = 'I50' OR s_ill = 'T78.0'
);

-- erwthma 5
SELECT MAX(workyears) AS MaxYears
FROM DOCTOR
GROUP BY spec_id;


SELECT MIN(workyears) AS MinYears
FROM DOCTOR
GROUP BY spec_id;

-- erwthma 6
SELECT PATIENT.name, DOCTOR.name 
FROM PATIENT
INNER JOIN DOCTOR ON PATIENT.patient_cli = DOCTOR.workcli;


SELECT PATIENT.name, DOCTOR.name
FROM PATIENT
LEFT JOIN DOCTOR ON PATIENT.patient_cli = DOCTOR.workcli;

-- erwthma 7
CREATE VIEW HospitalView AS
SELECT
    PATIENT.id AS PatID,
    PATIENT.name AS PatName,
    PATIENT.birthday AS PatBirthday,
    CLINIC.name AS CliName,
    DOCTOR.name AS DocName,
    DOCTOR.surname AS DocSurname
FROM PATIENT
JOIN CLINIC ON PATIENT.patient_cli = CLINIC.name
JOIN DOCTOR ON CLINIC.name = DOCTOR.workcli;

SELECT * FROM HospitalView;

-- erwthma 8
DELIMITER //

CREATE PROCEDURE CountPatientsInClinic(IN clinicName VARCHAR(30), OUT patientCount INT)
BEGIN
    SELECT COUNT(*) INTO patientCount
    FROM PATIENT
    WHERE patient_cli = 'Pathology';
END;

DELIMITER ;

-- Dilosi metablitis gia to apotelesma
SET @resultCount = 0;

-- Kalesma tis diadikasias
CALL CountPatientsInClinic('Pathology', @resultCount);

-- Emfanisi tou apotelesmatos
SELECT @resultCount AS PatientCount;


-- erwthma 9      
CREATE TRIGGER CheckPatientLimit
BEFORE INSERT ON PATIENT
FOR EACH ROW
BEGIN
    DECLARE patientCount INT;

    -- upologismos ari8mou as8enon gia th sugkekrimenh klinikh  
    SELECT COUNT(*) INTO patientCount
    FROM PATIENT
    WHERE patient_cli = NEW.patient_cli;

    
    IF patientCount >= 10 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'The admission of additional patients to this clinic is not allowed';
    END IF;
END;


-- eisagwgh as8enous sthn kardiologikh
INSERT INTO PATIENT (id, name, surname, birthday, patient_cli, num_room)
VALUES (9878642, 'Giannis', 'Papaharalabous', '2000-01-01', 'Cardiology', 132);

-- diagrafi tou as8eni me id 9878642
DELETE FROM PATIENT WHERE ID = 9878642;





DROP DATABASE IF EXISTS student_2322;
SELECT * FROM patient;
DROP TABLE ;
DROP TRIGGER IF EXISTS CheckPatientLimit;
DROP VIEW HospitalView;





 