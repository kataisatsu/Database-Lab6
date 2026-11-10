
USE LAB;
 
-- Persons
 
INSERT INTO Person VALUES
(101, 'Mohamed', 'Karam', 'mohamed.karam@um6p.ma',
 'UM6P', '2024-09-01', NULL),
 
(102, 'Amine', 'Imakor', 'amine.Imakor@um6p.ma',
 'UM6P', '2024-09-01', NULL),
 
(103, 'Aymane', 'jawadi', 'aymane.jawadi@um6p.ma',
 'UM6P', '2025-09-01', NULL),
 
(104, 'Yassine', 'Alaoui', 'yassine.alaoui@um6p.ma',
 'UM6P', '2025-09-01', NULL),
 
(201, 'Karima', 'Echihabi', 'karima.echihabi@um6p.ma',
 'UM6P', '2020-09-01', NULL),
 
(202, 'Youness', 'Mortaki', 'youness.mortaki@um6p.ma',
 'UM6P', '2019-09-01', NULL),
 
(203, 'Salma', 'Idrissi', 'salma.idrissi@um6p.ma',
 'UM6P', '2022-02-01', NULL),
 
(204, 'Basma', 'Bennani', 'basma.bennani@um6p.ma',
 'UM6P', '2021-03-01', NULL),
 
(205, 'Imane', 'Tazi', 'imane.tazi@um6p.ma',
 'UM6P', '2023-01-15', NULL);
 
 
 -- Students
 
INSERT INTO Student VALUES
(101, 'Computer Science'),
(102, 'Computer Science'),
(103, 'Physics'),
(104, 'Chemistry');
 
 
-- Employees
 
INSERT INTO Employee VALUES
(201, '0661000001', 'Office A12', 'Professor', NULL),
(202, '0661000002', 'Office B15', 'Professor', 201),
(203, '0661000003', 'Administration Office', 'Administrator', 201),
(204, '0661000004', 'Technical Office A', 'Lab Technician', 201),
(205, '0661000005', 'Technical Office B', 'Lab Technician', 204);
 
 
-- Academic employees
 
INSERT INTO Academic VALUES
(201),
(202);
 
 
-- Faculty
 
INSERT INTO Faculty VALUES
(201, 'Professor of Computer Science'),
(202, 'Professor of Physics');
 
 
-- Administrative employees
 
INSERT INTO Administrative VALUES
(203, 'Administrative Manager');
 
 
-- Technical employees
 
INSERT INTO Technical VALUES
(204, 'Laboratory Technician'),
(205, 'Equipment Technician');
 
-- Advises
 
INSERT INTO Advises VALUES
(201, 101),
(201, 102),
(202, 103);
 
 
-- Laboratories
 
INSERT INTO Laboratory VALUES
(1, 'Physics Laboratory', 'Riad5','Room 101', 'Physics', 202),
 
(2, 'Computer Science Laboratory', 'Green City','Room 205', 'Computer Science', 201),
 
(3, 'Chemistry Laboratory', 'Experimental Center','Room 12', 'Chemistry', 202);
 
-- Attached
 
INSERT INTO Attached VALUES
(101, 2),
(102, 2),
(103, 1),
(201, 2),
(202, 1),
(204, 1),
(205, 3);
 
-- Research Projects
 
INSERT INTO ResearchProject VALUES
('PRJ-01', 'Smart Energy Monitoring','2025-01-01', '2027-12-31', 'Ongoing'),
 
('PRJ-02', 'Advanced Optical Research','2025-06-01', '2027-06-30', 'Ongoing'),
 
('PRJ-03', 'Water Quality Analysis','2026-01-01', '2028-12-31', 'Planned');
 
-- Participates
 
INSERT INTO Participates VALUES
(101, 'PRJ-01', 'Student'),
(102, 'PRJ-01', 'Research Assistant'),
(201, 'PRJ-01', 'Principal Investigator'),
 
(103, 'PRJ-02', 'Student'),
(202, 'PRJ-02', 'Project Leader');
 
-- Budget
 
INSERT INTO Budget VALUES
('BUD-01', 50000.00, 15000.00,'2025-01-01', '2027-12-31', 201),
 
('BUD-02', 75000.00, 30000.00,'2025-06-01', '2027-06-30', 202),
 
('BUD-03', 30000.00, 5000.00,'2026-01-01', '2028-12-31', 201);
 
-- FundsPrj
 
INSERT INTO FundsPrj VALUES
('BUD-01', 'PRJ-01'),
('BUD-02', 'PRJ-02'),
('BUD-03', 'PRJ-03');
 
-- FundsLab
 
INSERT INTO FundsLab VALUES
('BUD-01', 2),
('BUD-02', 1),
('BUD-03', 3);
 
-- Equipment Models
 
INSERT INTO EquipmentModel VALUES
(1, 'Olympus CX23', 'Olympus','Optical Microscope', 'Clean laboratory environment', TRUE),
 
(2, 'Digital Thermometer DT-100', 'Testo','Thermometer', 'Normal laboratory environment', FALSE),
 
(3, 'Digital Oscilloscope', 'Rigol','Electronic Equipment', 'Dry environment', TRUE),
 
(4, 'Advanced Laboratory Microscope', 'Nikon','Optical Microscope', 'Controlled environment', TRUE);
 
-- Physical Equipment Units
 
INSERT INTO EquipmentUnit VALUES
('OM-001', '2024-03-15', 8500.00,'Available', FALSE, 1, 1),
 
('OM-002', '2024-05-20', 8700.00,'Available', FALSE, 1, 2),
 
('TH-001', '2025-01-10', 450.00,'Available', TRUE, 2, 1),
 
('TH-002', '2025-02-15', 500.00,'Available', TRUE, 2, 3),
 
('OS-001', '2024-11-01', 12000.00,'Available', FALSE, 3, 2);
 
-- Certifications
 
INSERT INTO Certification VALUES
('CERT-01', 'Laboratory Safety Training','UM6P Safety Department', 24, 'Basic'),
 
('CERT-02', 'Optical Microscope Training','UM6P Research Center', 36, 'Intermediate'),
 
('CERT-03', 'Electrical Equipment Safety','UM6P Technical Department', 24, 'Advanced');
 
-- Requires
 
INSERT INTO Requires VALUES
(1, 'CERT-01'),
(1, 'CERT-02'),
(3, 'CERT-03'),
(4, 'CERT-01');
 
-- Holds
 
INSERT INTO Holds VALUES
(201, 'CERT-01', '2025-01-10', '2027-01-10', 'Excellent'),
 
(101, 'CERT-01', '2025-03-15', '2027-03-15', 'Good'),
 
(101, 'CERT-02', '2025-04-01', '2028-04-01', 'Very Good'),
 
(102, 'CERT-01', '2025-06-10', '2027-06-10', 'Good'),
 
(204, 'CERT-03', '2025-02-01', '2027-02-01', 'Excellent');
 
 
-- Reservations
 
INSERT INTO Reservation VALUES
 
-- Approved reservation
(1, '2026-11-08 10:00:00','2026-11-15 09:00:00','2026-11-15 11:00:00','Optical research experiment','Approved', 101, 'PRJ-02', 202),
 
-- Pending reservation
(2, '2026-11-09 14:00:00','2026-11-20 10:00:00','2026-11-20 12:00:00','Energy monitoring experiment','Pending', 102, 'PRJ-01', NULL),
 
-- Rejected reservation
(3, '2026-10-20 09:00:00','2026-10-25 10:00:00','2026-10-25 12:00:00','Microscope experiment','Rejected', 103, 'PRJ-02', NULL),
 
-- Cancelled reservation
(4, '2026-10-22 11:00:00','2026-10-28 14:00:00','2026-10-28 16:00:00','Laboratory measurements','Cancelled', 101, 'PRJ-01', NULL),
 
-- Completed reservation
(5, '2026-10-01 09:00:00','2026-10-05 09:00:00','2026-10-05 12:00:00','Physics laboratory experiment','Completed', 103, 'PRJ-02', NULL);
 
-- Reserves
 
INSERT INTO Reserves VALUES
(1, 'OM-001'),
(1, 'TH-001'),
 
(2, 'OS-001'),
 
(3, 'OM-002'),
 
(4, 'TH-002'),
 
(5, 'OM-001');
 
-- Maintenance
 
INSERT INTO Maintenance VALUES
 
('OM-001','2026-09-10 09:00:00','2026-09-10 11:00:00','Cleaning','Cleaning of microscope lenses',300.00, 'Successful', 204),
 
('TH-001','2026-10-05 10:00:00','2026-10-05 11:00:00','Repair','Replacement of battery',150.00, 'Successful', 205),
 
('OS-001','2026-10-15 14:00:00','2026-10-15 16:00:00','Inspection','General equipment inspection', 250.00, 'Successful', 204);
 
-- Calibration Records
 
INSERT INTO CalibrationRecord VALUES
 
('OM-001', '2026-09-15','Optical Calibration', 'Passed','2027-09-15', 'Calibration completed successfully'),
 
('TH-001', '2026-10-10','Temperature Calibration', 'Passed','2027-10-10', 'Temperature readings are accurate'),
 
('OS-001', '2026-10-20','Electrical Calibration', 'Passed','2027-10-20', 'Device is working correctly');
 
-- Consumables
 
INSERT INTO Consumable VALUES
(1, 'Laboratory Gloves', 'Boxes','Low', 10),
 
(2, 'Distilled Water', 'Liters','Low', 20),
 
(3, 'Ethanol 70%', 'Liters','Medium', 15),
 
(4, 'Microscope Slides', 'Boxes','Low', 8);
 
-- Suppliers
 
INSERT INTO Supplier VALUES
(1, 'LabEquip Morocco','contact@labequip.ma', '0522000001'),
 
(2, 'Scientific Materials Maroc','sales@scientificmaroc.ma', '0522000002'),
 
(3, 'Atlas Laboratory Supply','info@atlaslab.ma', '0522000003');
 
-- Stocks
 
INSERT INTO Stocks VALUES
 
(1, 1, 25, '2026-10-01','Dry storage', 204, '2025-09-01'),
 
(1, 2, 8, '2026-10-15','Room temperature', 204, '2025-09-01'),
 
(2, 3, 30, '2026-09-20','Flammable materials cabinet', 205, '2025-10-01'),
 
(3, 4, 5, '2026-10-10','Clean and dry storage', 205, '2026-01-15');
 
-- Supplies
 
INSERT INTO Supplies VALUES
 
(1, 1, 1, 45.00),
 
(2, 2, 1, 12.00),
 
(2, 3, 2, 85.00),
 
(3, 3, 1, 80.00),
 
(1, 4, 3, 35.00);
 
-- Consumes
 
INSERT INTO Consumes VALUES
 
(1, 1, 1, 2),
 
(1, 1, 2, 3),
 
(2, 2, 3, 1),
 
(5, 1, 2, 2);
 
ALTER TABLE Faculty DROP COLUMN position;
ALTER TABLE Administrative DROP COLUMN position;
ALTER TABLE Technical DROP COLUMN position;
 
INSERT INTO Advises VALUES
(202, 102),
(202, 104);
 
INSERT INTO ResearchProject VALUES
('PRJ-04', 'Solar Panel Testing','2025-03-01', '2026-06-30', 'Cancelled'),
 
('PRJ-05', 'Soil Sensor Network','2027-01-01', '2028-12-31', 'Planned');
 
INSERT INTO Reservation VALUES
(7, '2026-11-01 10:00:00','2026-11-18 09:00:00','2026-11-18 11:00:00','Solar panel measurements','Pending', 103, 'PRJ-04', NULL);
 
INSERT INTO Reserves VALUES
(7, 'TH-002');
 
INSERT INTO EquipmentUnit VALUES
('OM-003', '2025-04-10', 9000.00,'Available', FALSE, 1, 1);
 
SELECT * FROM Person;
 
 
-- Insert a new person
 
INSERT INTO Person VALUES
(105, 'Omar', 'Chraibi', 'omar.chraibi@um6p.ma','UM6P', '2026-09-01', NULL);
 
-- Insert the corresponding student record
 
INSERT INTO Student VALUES
(105, 'Computer Science');
 
INSERT INTO Advises VALUES
(202, 105);
 
INSERT INTO EquipmentUnit VALUES
('TH-003', '2026-10-15', 550.00,'Available', TRUE, 2, 1);
 
-- Insert a new reservation
 
INSERT INTO Reservation VALUES
(6, '2026-11-10 15:00:00','2026-11-25 09:00:00','2026-11-25 11:00:00','Water quality experiment','Pending', 105, 'PRJ-03', NULL);
 
-- Reserve an equipment unit
 
INSERT INTO Reserves VALUES
(6, 'TH-003');
 
UPDATE Reservation
SET status = 'Approved', approverPid = 202
WHERE resId = 2
AND status = 'Pending';
 
UPDATE Stocks
SET quantityOnHand = 20
WHERE labId = 1
AND consId = 1;
 
INSERT INTO Stocks VALUES
(2, 1, 30, '2026-11-01','Dry storage', 205, '2026-10-01');
INSERT INTO Consumes VALUES
(2, 2, 1, 3);
 
UPDATE Reservation
SET status = 'Cancelled'
WHERE status = 'Pending'
AND projectCode IN (
    SELECT code
    FROM ResearchProject
    WHERE status = 'Cancelled'
);
 
DELETE FROM Advises
WHERE academicPid = 201
AND studentPid = 102;
 
SELECT * 
FROM Person;
 
SELECT pid, firstName, lastName, email
FROM Person
ORDER BY lastName, firstName;
 
 
SELECT DISTINCT discipline
FROM Laboratory;
 
SELECT *
FROM Person
WHERE email LIKE '%@um6p.ma';
 
SELECT *
FROM Person
WHERE endDate IS NULL;
 
SELECT *
FROM Reservation
WHERE plannedStart >= '2026-11-01 00:00:00'
AND plannedStart < '2026-12-01 00:00:00';
 
SELECT P.firstName,P.lastName,R.title,PA.role
FROM Person P
JOIN Participates PA 
ON P.pid = PA.pid
JOIN ResearchProject R 
ON PA.projectCode = R.code;
 
SELECT B.budgetLine, B.amountGranted, P.firstName,  P.lastName
FROM Budget B
JOIN Person P 
ON B.managerPid = P.pid;
 
SELECT R.resId,P.firstName,P.lastName,RP.title
FROM Reservation R
JOIN Person P 
ON R.madeByPid = P.pid
JOIN ResearchProject RP 
ON R.projectCode = RP.code;
 
 
SELECT R.resId,E.serialNo,M.commercialName,L.name AS laboratoryName
FROM Reservation R
JOIN Reserves RE 
ON R.resId = RE.resId
JOIN EquipmentUnit E 
ON RE.serialNo = E.serialNo
JOIN EquipmentModel M 
ON E.modelId = M.modelId
JOIN Laboratory L 
ON E.labId = L.labId;
 
SELECT R.resId, R.status, P.firstName, P.lastName
FROM Reservation R
JOIN Person P ON R.approverPid = P.pid
WHERE R.status = 'Approved';
 
SELECT L.name AS laboratoryName, C.name AS consumableName, S.quantityOnHand, P.firstName, P.lastName
FROM Stocks S
JOIN Laboratory L ON S.labId = L.labId
JOIN Consumable C ON S.consId = C.consId
JOIN Person P ON S.technicalPid = P.pid;
 
SELECT L.name, COUNT(E.serialNo) AS numberOfUnits
FROM Laboratory L
JOIN EquipmentUnit E ON L.labId = E.labId
GROUP BY L.labId, L.name;
 
SELECT C.name, SUM(CO.quantityUsed) AS totalQuantityUsed
FROM Consumable C
JOIN Consumes CO ON C.consId = CO.consId
GROUP BY C.consId, C.name;
 
SELECT L.name, COUNT(E.serialNo) AS numberOfUnits
FROM Laboratory L
JOIN EquipmentUnit E ON L.labId = E.labId
GROUP BY L.labId, L.name
HAVING COUNT(E.serialNo) > 3;
 
SELECT R.title, SUM(B.amountGranted) AS totalBudget
FROM ResearchProject R
JOIN FundsPrj F ON R.code = F.projectCode
JOIN Budget B ON F.budgetLine = B.budgetLine
GROUP BY R.code, R.title;
 
 
 
SELECT L.name, M.category, COUNT(E.serialNo) AS numberOfUnits, AVG(E.purchaseCost) AS averageCost
FROM Laboratory L
JOIN EquipmentUnit E ON L.labId = E.labId
JOIN EquipmentModel M ON E.modelId = M.modelId
GROUP BY L.labId, L.name, M.category;
 
 
SELECT S.name, COUNT(DISTINCT SP.consId) AS numberOfConsumables
FROM Supplier S
JOIN Supplies SP ON S.suppId = SP.suppId
GROUP BY S.suppId, S.name;
 
 
SELECT L.name, C.name, MIN(SP.unitPrice) AS lowestPrice
FROM Supplies SP
JOIN Laboratory L ON SP.labId = L.labId
JOIN Consumable C ON SP.consId = C.consId
GROUP BY L.labId, L.name, C.consId, C.name;
 
 
SELECT R.resId, P.firstName, P.lastName, SUM(C.quantityUsed) AS totalQuantityUsed
FROM Reservation R
JOIN Person P ON R.madeByPid = P.pid
JOIN Consumes C ON R.resId = C.resId
GROUP BY R.resId, P.pid, P.firstName, P.lastName;
 
 
SELECT pid, firstName, lastName
FROM Person
WHERE pid IN (SELECT supervisorPid FROM Laboratory) AND pid IN (SELECT managerPid FROM Budget);
  
SELECT pid, firstName, lastName
FROM Person
WHERE pid NOT IN (
    SELECT madeByPid
    FROM Reservation
);

SELECT EquipmentUnit.serialNo, EquipmentUnit.modelId, EquipmentUnit.status
FROM EquipmentUnit
WHERE NOT EXISTS (
    SELECT *
    FROM Reserves 
    WHERE Reserves.serialNo = EquipmentUnit.serialNo
);

SELECT serialNo, modelId, purchaseCost 
FROM EquipmentUnit
WHERE purchaseCost >= ALL (
    SELECT purchaseCost
    FROM EquipmentUnit
);

SELECT EM.modelId, EM.commercialName, P.pid, P.firstName, P.lastName
FROM Person P
JOIN Holds H ON P.pid = H.pid
JOIN Requires R ON H.certCode = R.certCode
JOIN EquipmentModel EM ON R.modelId = EM.modelId
GROUP BY EM.modelId, EM.commercialName, P.pid, P.firstName, P.lastName
HAVING COUNT(DISTINCT H.certCode) = (
    SELECT COUNT(DISTINCT R2.certCode)
    FROM Requires R2
    WHERE R2.modelId = EM.modelId
);