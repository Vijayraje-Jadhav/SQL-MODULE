# DATE OF STUDING IS 10/09/2024


create database hr;
use hr; 
-- Table structure for table `countries`
--


CREATE TABLE employee_1 (
    employee_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(20),
    hire_date DATE,
    job_id VARCHAR(20),
    salary DECIMAL(10,2),
    department_id INT
);


CREATE TABLE department (
    department_id INT,
    department_name VARCHAR(100),
    location VARCHAR(100)
);
INSERT INTO department (department_id, department_name, location) VALUES
(1, 'HR', 'New York'),
(2, 'IT', 'San Francisco'),
(3, 'Finance', 'Los Angeles'),
(4, 'Marketing', 'Chicago'),
(5, 'Sales', 'Miami'),
(6, 'Operations', 'Houston'),
(7, 'Support', 'Phoenix'),
(8, 'Logistics', 'Denver'),
(9, 'Procurement', 'Boston'),
(10, 'Legal', 'Seattle'),
(11, 'Research', 'Atlanta'),
(12, 'Customer Service', 'Las Vegas'),
(13, 'Public Relations', 'Orlando'),
(14, 'Engineering', 'Detroit'),
(15, 'Manufacturing', 'Portland'),
(16, 'Quality Assurance', 'Salt Lake City'),
(17, 'Supply Chain', 'Dallas'),
(18, 'Administration', 'Austin'),
(19, 'Security', 'San Diego'),
(20, 'Compliance', 'Philadelphia');

INSERT INTO employee_1 (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, department_id) VALUES
(1, 'John', 'Doe', 'johndoe@example.com', '555-1234', '2010-06-01', 'IT_PROG', 6000.00, 2),
(2, 'Jane', 'Smith', 'janesmith@example.com', '555-5678', '2011-07-15', 'HR_MGR', 7500.00, 1),
(3, 'David', 'Johnson', 'davidjohnson@example.com', '555-8765', '2012-03-22', 'FIN_ANALYST', 5200.00, 3),
(4, 'Emma', 'Williams', 'emmawilliams@example.com', '555-1122', '2013-01-30', 'MARK_EXEC', 4800.00, 4),
(5, 'Chris', 'Brown', 'chrisbrown@example.com', '555-3344', '2014-09-12', 'SALES_REP', 6200.00, 5),
(6, 'Sarah', 'Miller', 'sarahmiller@example.com', '555-5566', '2015-11-23', 'OPR_SUP', 6700.00, 6),
(7, 'Robert', 'Davis', 'robertdavis@example.com', '555-7788', '2016-04-05', 'SUP_ANALYST', 5900.00, 7),
(8, 'James', 'Garcia', 'jamesgarcia@example.com', '555-9900', '2017-08-16', 'LOG_MGR', 6300.00, 8),
(9, 'Emily', 'Martinez', 'emilymartinez@example.com', '555-2233', '2018-02-28', 'PROC_EXEC', 5400.00, 9),
(10, 'Daniel', 'Hernandez', 'danielhernandez@example.com', '555-4455', '2019-10-18', 'LEGAL_ASSIST', 7200.00, 10),
(11, 'Sophia', 'Lopez', 'sophialopez@example.com', '555-6677', '2020-03-25', 'RES_DEV', 5800.00, 11),
(12, 'Michael', 'Gonzalez', 'michaelgonzalez@example.com', '555-8899', '2020-07-19', 'CS_REP', 5000.00, 12),
(13, 'Olivia', 'Wilson', 'oliviawilson@example.com', '555-9900', '2021-06-07', 'PR_MGR', 5600.00, 13),
(14, 'William', 'Anderson', 'williamanderson@example.com', '555-1122', '2021-09-10', 'ENG_EXEC', 6400.00, 14),
(15, 'Ava', 'Thomas', 'avathomas@example.com', '555-3344', '2021-12-15', 'MFG_SUP', 6800.00, 15),
(16, 'Liam', 'Taylor', 'liamtaylor@example.com', '555-5566', '2022-01-05', 'QA_ENG', 6100.00, 16),
(17, 'Isabella', 'Moore', 'isabellamoore@example.com', '555-7788', '2022-04-14', 'SC_EXEC', 5900.00, 17),
(18, 'Jacob', 'White', 'jacobwhite@example.com', '555-9900', '2022-08-27', 'ADM_ASSIST', 5100.00, 18),
(19, 'Mia', 'Harris', 'miaharris@example.com', '555-2233', '2022-11-03', 'SEC_OFFICER', 5400.00, 19),
(20, 'Ethan', 'Martin', 'ethanmartin@example.com', '555-4455', '2023-02-12', 'COMPL_MGR', 5600.00, 20);

explain select * from employee_1 where department_id =10;

CREATE TABLE IF NOT EXISTS `employees_B_Multiple` (
  `EMPLOYEE_ID` decimal(6,0) NOT NULL DEFAULT '0',
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LAST_NAME` varchar(25) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `PHONE_NUMBER` varchar(20) DEFAULT NULL,
  `HIRE_DATE` date NOT NULL,
  `JOB_ID` varchar(10) NOT NULL,
  `SALARY` decimal(8,2) DEFAULT NULL,
  `COMMISSION_PCT` decimal(2,2) DEFAULT NULL,
  `MANAGER_ID` decimal(6,0) DEFAULT NULL,
  `DEPARTMENT_ID` decimal(4,0) DEFAULT NULL,
  PRIMARY KEY (`EMPLOYEE_ID`),
  INDEX idx_salary_dept (salary,department_id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees_B_Multiple` (`EMPLOYEE_ID`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE_NUMBER`, `HIRE_DATE`, `JOB_ID`, `SALARY`, `COMMISSION_PCT`, `MANAGER_ID`, `DEPARTMENT_ID`) VALUES
('100', 'Steven', 'King', 'SKING', '515.123.4567', '1987-06-17', 'AD_PRES', '24000.00', '0.00', '0', '90'),
('101', 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '1987-06-18', 'AD_VP', '17000.00', '0.00', '100', '90'),
('102', 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', '1987-06-19', 'AD_VP', '17000.00', '0.00', '100', '90'),
('103', 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '1987-06-20', 'IT_PROG', '9000.00', '0.00', '102', '60'),
('104', 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '1987-06-21', 'IT_PROG', '6000.00', '0.00', '103', '60'),
('105', 'David', 'Austin', 'DAUSTIN', '590.423.4569', '1987-06-22', 'IT_PROG', '4800.00', '0.00', '103', '60'),
('106', 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', '1987-06-23', 'IT_PROG', '4800.00', '0.00', '103', '60'),
('107', 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', '1987-06-24', 'IT_PROG', '4200.00', '0.00', '103', '60'),
('108', 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', '1987-06-25', 'FI_MGR', '12000.00', '0.00', '101', '100'),
('109', 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', '1987-06-26', 'FI_ACCOUNT', '9000.00', '0.00', '108', '100'),
('110', 'John', 'Chen', 'JCHEN', '515.124.4269', '1987-06-27', 'FI_ACCOUNT', '8200.00', '0.00', '108', '100'),
('111', 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', '1987-06-28', 'FI_ACCOUNT', '7700.00', '0.00', '108', '100'),
('112', 'Jose Manuel', 'Urman', 'JMURMAN', '515.124.4469', '1987-06-29', 'FI_ACCOUNT', '7800.00', '0.00', '108', '100'),
('113', 'Luis', 'Popp', 'LPOPP', '515.124.4567', '1987-06-30', 'FI_ACCOUNT', '6900.00', '0.00', '108', '100'),
('114', 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', '1987-07-01', 'PU_MAN', '11000.00', '0.00', '100', '30'),
('115', 'Alexander', 'Khoo', 'AKHOO', '515.127.4562', '1987-07-02', 'PU_CLERK', '3100.00', '0.00', '114', '30'),
('116', 'Shelli', 'Baida', 'SBAIDA', '515.127.4563', '1987-07-03', 'PU_CLERK', '2900.00', '0.00', '114', '30'),
('117', 'Sigal', 'Tobias', 'STOBIAS', '515.127.4564', '1987-07-04', 'PU_CLERK', '2800.00', '0.00', '114', '30'),
('118', 'Guy', 'Himuro', 'GHIMURO', '515.127.4565', '1987-07-05', 'PU_CLERK', '2600.00', '0.00', '114', '30'),
('119', 'Karen', 'Colmenares', 'KCOLMENA', '515.127.4566', '1987-07-06', 'PU_CLERK', '2500.00', '0.00', '114', '30'),
('120', 'Matthew', 'Weiss', 'MWEISS', '650.123.1234', '1987-07-07', 'ST_MAN', '8000.00', '0.00', '100', '50'),
('121', 'Adam', 'Fripp', 'AFRIPP', '650.123.2234', '1987-07-08', 'ST_MAN', '8200.00', '0.00', '100', '50'),
('122', 'Payam', 'Kaufling', 'PKAUFLIN', '650.123.3234', '1987-07-09', 'ST_MAN', '7900.00', '0.00', '100', '50'),
('123', 'Shanta', 'Vollman', 'SVOLLMAN', '650.123.4234', '1987-07-10', 'ST_MAN', '6500.00', '0.00', '100', '50'),
('124', 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', '1987-07-11', 'ST_MAN', '5800.00', '0.00', '100', '50'),
('125', 'Julia', 'Nayer', 'JNAYER', '650.124.1214', '1987-07-12', 'ST_CLERK', '3200.00', '0.00', '120', '50'),
('126', 'Irene', 'Mikkilineni', 'IMIKKILI', '650.124.1224', '1987-07-13', 'ST_CLERK', '2700.00', '0.00', '120', '50'),
('127', 'James', 'Landry', 'JLANDRY', '650.124.1334', '1987-07-14', 'ST_CLERK', '2400.00', '0.00', '120', '50'),
('128', 'Steven', 'Markle', 'SMARKLE', '650.124.1434', '1987-07-15', 'ST_CLERK', '2200.00', '0.00', '120', '50'),
('129', 'Laura', 'Bissot', 'LBISSOT', '650.124.5234', '1987-07-16', 'ST_CLERK', '3300.00', '0.00', '121', '50'),
('130', 'Mozhe', 'Atkinson', 'MATKINSO', '650.124.6234', '1987-07-17', 'ST_CLERK', '2800.00', '0.00', '121', '50'),
('131', 'James', 'Marlow', 'JAMRLOW', '650.124.7234', '1987-07-18', 'ST_CLERK', '2500.00', '0.00', '121', '50'),
('132', 'TJ', 'Olson', 'TJOLSON', '650.124.8234', '1987-07-19', 'ST_CLERK', '2100.00', '0.00', '121', '50'),
('133', 'Jason', 'Mallin', 'JMALLIN', '650.127.1934', '1987-07-20', 'ST_CLERK', '3300.00', '0.00', '122', '50'),
('134', 'Michael', 'Rogers', 'MROGERS', '650.127.1834', '1987-07-21', 'ST_CLERK', '2900.00', '0.00', '122', '50'),
('135', 'Ki', 'Gee', 'KGEE', '650.127.1734', '1987-07-22', 'ST_CLERK', '2400.00', '0.00', '122', '50'),
('136', 'Hazel', 'Philtanker', 'HPHILTAN', '650.127.1634', '1987-07-23', 'ST_CLERK', '2200.00', '0.00', '122', '50'),
('137', 'Renske', 'Ladwig', 'RLADWIG', '650.121.1234', '1987-07-24', 'ST_CLERK', '3600.00', '0.00', '123', '50'),
('138', 'Stephen', 'Stiles', 'SSTILES', '650.121.2034', '1987-07-25', 'ST_CLERK', '3200.00', '0.00', '123', '50'),
('139', 'John', 'Seo', 'JSEO', '650.121.2019', '1987-07-26', 'ST_CLERK', '2700.00', '0.00', '123', '50'),
('140', 'Joshua', 'Patel', 'JPATEL', '650.121.1834', '1987-07-27', 'ST_CLERK', '2500.00', '0.00', '123', '50'),
('141', 'Trenna', 'Rajs', 'TRAJS', '650.121.8009', '1987-07-28', 'ST_CLERK', '3500.00', '0.00', '124', '50'),
('142', 'Curtis', 'Davies', 'CDAVIES', '650.121.2994', '1987-07-29', 'ST_CLERK', '3100.00', '0.00', '124', '50'),
('143', 'Randall', 'Matos', 'RMATOS', '650.121.2874', '1987-07-30', 'ST_CLERK', '2600.00', '0.00', '124', '50'),
('144', 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', '1987-07-31', 'ST_CLERK', '2500.00', '0.00', '124', '50'),
('145', 'John', 'Russell', 'JRUSSEL', '011.44.1344.429268', '1987-08-01', 'SA_MAN', '14000.00', '0.40', '100', '80'),
('146', 'Karen', 'Partners', 'KPARTNER', '011.44.1344.467268', '1987-08-02', 'SA_MAN', '13500.00', '0.30', '100', '80'),
('147', 'Alberto', 'Errazuriz', 'AERRAZUR', '011.44.1344.429278', '1987-08-03', 'SA_MAN', '12000.00', '0.30', '100', '80'),
('148', 'Gerald', 'Cambrault', 'GCAMBRAU', '011.44.1344.619268', '1987-08-04', 'SA_MAN', '11000.00', '0.30', '100', '80'),
('149', 'Eleni', 'Zlotkey', 'EZLOTKEY', '011.44.1344.429018', '1987-08-05', 'SA_MAN', '10500.00', '0.20', '100', '80'),
('150', 'Peter', 'Tucker', 'PTUCKER', '011.44.1344.129268', '1987-08-06', 'SA_REP', '10000.00', '0.30', '145', '80'),
('151', 'David', 'Bernstein', 'DBERNSTE', '011.44.1344.345268', '1987-08-07', 'SA_REP', '9500.00', '0.25', '145', '80'),
('152', 'Peter', 'Hall', 'PHALL', '011.44.1344.478968', '1987-08-08', 'SA_REP', '9000.00', '0.25', '145', '80'),
('153', 'Christopher', 'Olsen', 'COLSEN', '011.44.1344.498718', '1987-08-09', 'SA_REP', '8000.00', '0.20', '145', '80'),
('154', 'Nanette', 'Cambrault', 'NCAMBRAU', '011.44.1344.987668', '1987-08-10', 'SA_REP', '7500.00', '0.20', '145', '80'),
('155', 'Oliver', 'Tuvault', 'OTUVAULT', '011.44.1344.486508', '1987-08-11', 'SA_REP', '7000.00', '0.15', '145', '80'),
('156', 'Janette', 'King', 'JKING', '011.44.1345.429268', '1987-08-12', 'SA_REP', '10000.00', '0.35', '146', '80'),
('157', 'Patrick', 'Sully', 'PSULLY', '011.44.1345.929268', '1987-08-13', 'SA_REP', '9500.00', '0.35', '146', '80'),
('158', 'Allan', 'McEwen', 'AMCEWEN', '011.44.1345.829268', '1987-08-14', 'SA_REP', '9000.00', '0.35', '146', '80'),
('159', 'Lindsey', 'Smith', 'LSMITH', '011.44.1345.729268', '1987-08-15', 'SA_REP', '8000.00', '0.30', '146', '80'),
('160', 'Louise', 'Doran', 'LDORAN', '011.44.1345.629268', '1987-08-16', 'SA_REP', '7500.00', '0.30', '146', '80'),
('161', 'Sarath', 'Sewall', 'SSEWALL', '011.44.1345.529268', '1987-08-17', 'SA_REP', '7000.00', '0.25', '146', '80'),
('162', 'Clara', 'Vishney', 'CVISHNEY', '011.44.1346.129268', '1987-08-18', 'SA_REP', '10500.00', '0.25', '147', '80'),
('163', 'Danielle', 'Greene', 'DGREENE', '011.44.1346.229268', '1987-08-19', 'SA_REP', '9500.00', '0.15', '147', '80'),
('164', 'Mattea', 'Marvins', 'MMARVINS', '011.44.1346.329268', '1987-08-20', 'SA_REP', '7200.00', '0.10', '147', '80'),
('165', 'David', 'Lee', 'DLEE', '011.44.1346.529268', '1987-08-21', 'SA_REP', '6800.00', '0.10', '147', '80'),
('166', 'Sundar', 'Ande', 'SANDE', '011.44.1346.629268', '1987-08-22', 'SA_REP', '6400.00', '0.10', '147', '80'),
('167', 'Amit', 'Banda', 'ABANDA', '011.44.1346.729268', '1987-08-23', 'SA_REP', '6200.00', '0.10', '147', '80'),
('168', 'Lisa', 'Ozer', 'LOZER', '011.44.1343.929268', '1987-08-24', 'SA_REP', '11500.00', '0.25', '148', '80'),
('169', 'Harrison', 'Bloom', 'HBLOOM', '011.44.1343.829268', '1987-08-25', 'SA_REP', '10000.00', '0.20', '148', '80'),
('170', 'Tayler', 'Fox', 'TFOX', '011.44.1343.729268', '1987-08-26', 'SA_REP', '9600.00', '0.20', '148', '80'),
('171', 'William', 'Smith', 'WSMITH', '011.44.1343.629268', '1987-08-27', 'SA_REP', '7400.00', '0.15', '148', '80'),
('172', 'Elizabeth', 'Bates', 'EBATES', '011.44.1343.529268', '1987-08-28', 'SA_REP', '7300.00', '0.15', '148', '80'),
('173', 'Sundita', 'Kumar', 'SKUMAR', '011.44.1343.329268', '1987-08-29', 'SA_REP', '6100.00', '0.10', '148', '80'),
('174', 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', '1987-08-30', 'SA_REP', '11000.00', '0.30', '149', '80'),
('175', 'Alyssa', 'Hutton', 'AHUTTON', '011.44.1644.429266', '1987-08-31', 'SA_REP', '8800.00', '0.25', '149', '80'),
('176', 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265', '1987-09-01', 'SA_REP', '8600.00', '0.20', '149', '80'),
('177', 'Jack', 'Livingston', 'JLIVINGS', '011.44.1644.429264', '1987-09-02', 'SA_REP', '8400.00', '0.20', '149', '80'),
('178', 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263', '1987-09-03', 'SA_REP', '7000.00', '0.15', '149', '0'),
('179', 'Charles', 'Johnson', 'CJOHNSON', '011.44.1644.429262', '1987-09-04', 'SA_REP', '6200.00', '0.10', '149', '80'),
('180', 'Winston', 'Taylor', 'WTAYLOR', '650.507.9876', '1987-09-05', 'SH_CLERK', '3200.00', '0.00', '120', '50'),
('181', 'Jean', 'Fleaur', 'JFLEAUR', '650.507.9877', '1987-09-06', 'SH_CLERK', '3100.00', '0.00', '120', '50'),
('182', 'Martha', 'Sullivan', 'MSULLIVA', '650.507.9878', '1987-09-07', 'SH_CLERK', '2500.00', '0.00', '120', '50'),
('183', 'Girard', 'Geoni', 'GGEONI', '650.507.9879', '1987-09-08', 'SH_CLERK', '2800.00', '0.00', '120', '50'),
('184', 'Nandita', 'Sarchand', 'NSARCHAN', '650.509.1876', '1987-09-09', 'SH_CLERK', '4200.00', '0.00', '121', '50'),
('185', 'Alexis', 'Bull', 'ABULL', '650.509.2876', '1987-09-10', 'SH_CLERK', '4100.00', '0.00', '121', '50'),
('186', 'Julia', 'Dellinger', 'JDELLING', '650.509.3876', '1987-09-11', 'SH_CLERK', '3400.00', '0.00', '121', '50'),
('187', 'Anthony', 'Cabrio', 'ACABRIO', '650.509.4876', '1987-09-12', 'SH_CLERK', '3000.00', '0.00', '121', '50'),
('188', 'Kelly', 'Chung', 'KCHUNG', '650.505.1876', '1987-09-13', 'SH_CLERK', '3800.00', '0.00', '122', '50'),
('189', 'Jennifer', 'Dilly', 'JDILLY', '650.505.2876', '1987-09-14', 'SH_CLERK', '3600.00', '0.00', '122', '50'),
('190', 'Timothy', 'Gates', 'TGATES', '650.505.3876', '1987-09-15', 'SH_CLERK', '2900.00', '0.00', '122', '50'),
('191', 'Randall', 'Perkins', 'RPERKINS', '650.505.4876', '1987-09-16', 'SH_CLERK', '2500.00', '0.00', '122', '50'),
('192', 'Sarah', 'Bell', 'SBELL', '650.501.1876', '1987-09-17', 'SH_CLERK', '4000.00', '0.00', '123', '50'),
('193', 'Britney', 'Everett', 'BEVERETT', '650.501.2876', '1987-09-18', 'SH_CLERK', '3900.00', '0.00', '123', '50'),
('194', 'Samuel', 'McCain', 'SMCCAIN', '650.501.3876', '1987-09-19', 'SH_CLERK', '3200.00', '0.00', '123', '50'),
('195', 'Vance', 'Jones', 'VJONES', '650.501.4876', '1987-09-20', 'SH_CLERK', '2800.00', '0.00', '123', '50'),
('196', 'Alana', 'Walsh', 'AWALSH', '650.507.9811', '1987-09-21', 'SH_CLERK', '3100.00', '0.00', '124', '50'),
('197', 'Kevin', 'Feeney', 'KFEENEY', '650.507.9822', '1987-09-22', 'SH_CLERK', '3000.00', '0.00', '124', '50'),
('198', 'Donald', 'OConnell', 'DOCONNEL', '650.507.9833', '1987-09-23', 'SH_CLERK', '2600.00', '0.00', '124', '50'),
('199', 'Douglas', 'Grant', 'DGRANT', '650.507.9844', '1987-09-24', 'SH_CLERK', '2600.00', '0.00', '124', '50'),
('200', 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', '1987-09-25', 'AD_ASST', '4400.00', '0.00', '101', '10'),
('201', 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', '1987-09-26', 'MK_MAN', '13000.00', '0.00', '100', '20'),
('202', 'Pat', 'Fay', 'PFAY', '603.123.6666', '1987-09-27', 'MK_REP', '6000.00', '0.00', '201', '20'),
('203', 'Susan', 'Mavris', 'SMAVRIS', '515.123.7777', '1987-09-28', 'HR_REP', '6500.00', '0.00', '101', '40'),
('204', 'Hermann', 'Baer', 'HBAER', '515.123.8888', '1987-09-29', 'PR_REP', '10000.00', '0.00', '101', '70'),
('205', 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', '1987-09-30', 'AC_MGR', '12000.00', '0.00', '101', '110'),
('206', 'William', 'Gietz', 'WGIETZ', '515.123.8181', '1987-10-01', 'AC_ACCOUNT', '8300.00', '0.00', '205', '110');

CREATE TABLE IF NOT EXISTS `countries` (
  `COUNTRY_ID` varchar(2) NOT NULL,
  `COUNTRY_NAME` varchar(40) DEFAULT NULL,
  `REGION_ID` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`COUNTRY_ID`),
  KEY `COUNTR_REG_FK` (`REGION_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`COUNTRY_ID`, `COUNTRY_NAME`, `REGION_ID`) VALUES
('AR', 'Argentina', '2'),
('AU', 'Australia', '3'),
('BE', 'Belgium', '1'),
('BR', 'Brazil', '2'),
('CA', 'Canada', '2'),
('CH', 'Switzerland', '1'),
('CN', 'China', '3'),
('DE', 'Germany', '1'),
('DK', 'Denmark', '1'),
('EG', 'Egypt', '4'),
('FR', 'France', '1'),
('HK', 'HongKong', '3'),
('IL', 'Israel', '4'),
('IN', 'India', '3'),
('IT', 'Italy', '1'),
('JP', 'Japan', '3'),
('KW', 'Kuwait', '4'),
('MX', 'Mexico', '2'),
('NG', 'Nigeria', '4'),
('NL', 'Netherlands', '1'),
('SG', 'Singapore', '3'),
('UK', 'United Kingdom', '1'),
('US', 'United States of America', '2'),
('ZM', 'Zambia', '4'),
('ZW', 'Zimbabwe', '4');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `DEPARTMENT_ID` decimal(4,0) NOT NULL DEFAULT '0',
  `DEPARTMENT_NAME` varchar(30) NOT NULL,
  `MANAGER_ID` decimal(6,0) DEFAULT NULL,
  `LOCATION_ID` decimal(4,0) DEFAULT NULL,
  PRIMARY KEY (`DEPARTMENT_ID`),
  KEY `DEPT_MGR_FK` (`MANAGER_ID`),
  KEY `DEPT_LOCATION_IX` (`LOCATION_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `departments`
--
INSERT INTO `departments` (`DEPARTMENT_ID`, `DEPARTMENT_NAME`, `MANAGER_ID`, `LOCATION_ID`) VALUES
('10', 'Administration', '200', '1700'),
('20', 'Marketing', '201', '1800'),
('30', 'Purchasing', '114', '1700'),
('40', 'Human Resources', '203', '2400'),
('50', 'Shipping', '121', '1500'),
('60', 'IT', '103', '1400'),
('70', 'Public Relations', '204', '2700'),
('80', 'Sales', '145', '2500'),
('90', 'Executive', '100', '1700'),
('100', 'Finance', '108', '1700'),
('110', 'Accounting', '205', '1700'),
('120', 'Treasury', '0', '1700'),
('130', 'Corporate Tax', '0', '1700'),
('140', 'Control And Credit', '0', '1700'),
('150', 'Shareholder Services', '0', '1700'),
('160', 'Benefits', '0', '1700'),
('170', 'Manufacturing', '0', '1700'),
('180', 'Construction', '0', '1700'),
('190', 'Contracting', '0', '1700'),
('200', 'Operations', '0', '1700'),
('210', 'IT Support', '0', '1700'),
('220', 'NOC', '0', '1700'),
('230', 'IT Helpdesk', '0', '1700'),
('240', 'Government Sales', '0', '1700'),
('250', 'Retail Sales', '0', '1700'),
('260', 'Recruiting', '0', '1700'),
('270', 'Payroll', '0', '1700');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `EMPLOYEE_ID` decimal(6,0) NOT NULL DEFAULT '0',
  `FIRST_NAME` varchar(20) DEFAULT NULL,
  `LAST_NAME` varchar(25) NOT NULL,
  `EMAIL` varchar(25) NOT NULL,
  `PHONE_NUMBER` varchar(20) DEFAULT NULL,
  `HIRE_DATE` date NOT NULL,
  `JOB_ID` varchar(10) NOT NULL,
  `SALARY` decimal(8,2) DEFAULT NULL,
  `COMMISSION_PCT` decimal(2,2) DEFAULT NULL,
  `MANAGER_ID` decimal(6,0) DEFAULT NULL,
  `DEPARTMENT_ID` decimal(4,0) DEFAULT NULL,
  PRIMARY KEY (`EMPLOYEE_ID`),
  UNIQUE KEY `EMP_EMAIL_UK` (`EMAIL`),
  KEY `EMP_DEPARTMENT_IX` (`DEPARTMENT_ID`),
  KEY `EMP_JOB_IX` (`JOB_ID`),
  KEY `EMP_MANAGER_IX` (`MANAGER_ID`),
  KEY `EMP_NAME_IX` (`LAST_NAME`,`FIRST_NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`EMPLOYEE_ID`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE_NUMBER`, `HIRE_DATE`, `JOB_ID`, `SALARY`, `COMMISSION_PCT`, `MANAGER_ID`, `DEPARTMENT_ID`) VALUES
('100', 'Steven', 'King', 'SKING', '515.123.4567', '1987-06-17', 'AD_PRES', '24000.00', '0.00', '0', '90'),
('101', 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', '1987-06-18', 'AD_VP', '17000.00', '0.00', '100', '90'),
('102', 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', '1987-06-19', 'AD_VP', '17000.00', '0.00', '100', '90'),
('103', 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', '1987-06-20', 'IT_PROG', '9000.00', '0.00', '102', '60'),
('104', 'Bruce', 'Ernst', 'BERNST', '590.423.4568', '1987-06-21', 'IT_PROG', '6000.00', '0.00', '103', '60'),
('105', 'David', 'Austin', 'DAUSTIN', '590.423.4569', '1987-06-22', 'IT_PROG', '4800.00', '0.00', '103', '60'),
('106', 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', '1987-06-23', 'IT_PROG', '4800.00', '0.00', '103', '60'),
('107', 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', '1987-06-24', 'IT_PROG', '4200.00', '0.00', '103', '60'),
('108', 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', '1987-06-25', 'FI_MGR', '12000.00', '0.00', '101', '100'),
('109', 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', '1987-06-26', 'FI_ACCOUNT', '9000.00', '0.00', '108', '100'),
('110', 'John', 'Chen', 'JCHEN', '515.124.4269', '1987-06-27', 'FI_ACCOUNT', '8200.00', '0.00', '108', '100'),
('111', 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', '1987-06-28', 'FI_ACCOUNT', '7700.00', '0.00', '108', '100'),
('112', 'Jose Manuel', 'Urman', 'JMURMAN', '515.124.4469', '1987-06-29', 'FI_ACCOUNT', '7800.00', '0.00', '108', '100'),
('113', 'Luis', 'Popp', 'LPOPP', '515.124.4567', '1987-06-30', 'FI_ACCOUNT', '6900.00', '0.00', '108', '100'),
('114', 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', '1987-07-01', 'PU_MAN', '11000.00', '0.00', '100', '30'),
('115', 'Alexander', 'Khoo', 'AKHOO', '515.127.4562', '1987-07-02', 'PU_CLERK', '3100.00', '0.00', '114', '30'),
('116', 'Shelli', 'Baida', 'SBAIDA', '515.127.4563', '1987-07-03', 'PU_CLERK', '2900.00', '0.00', '114', '30'),
('117', 'Sigal', 'Tobias', 'STOBIAS', '515.127.4564', '1987-07-04', 'PU_CLERK', '2800.00', '0.00', '114', '30'),
('118', 'Guy', 'Himuro', 'GHIMURO', '515.127.4565', '1987-07-05', 'PU_CLERK', '2600.00', '0.00', '114', '30'),
('119', 'Karen', 'Colmenares', 'KCOLMENA', '515.127.4566', '1987-07-06', 'PU_CLERK', '2500.00', '0.00', '114', '30'),
('120', 'Matthew', 'Weiss', 'MWEISS', '650.123.1234', '1987-07-07', 'ST_MAN', '8000.00', '0.00', '100', '50'),
('121', 'Adam', 'Fripp', 'AFRIPP', '650.123.2234', '1987-07-08', 'ST_MAN', '8200.00', '0.00', '100', '50'),
('122', 'Payam', 'Kaufling', 'PKAUFLIN', '650.123.3234', '1987-07-09', 'ST_MAN', '7900.00', '0.00', '100', '50'),
('123', 'Shanta', 'Vollman', 'SVOLLMAN', '650.123.4234', '1987-07-10', 'ST_MAN', '6500.00', '0.00', '100', '50'),
('124', 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', '1987-07-11', 'ST_MAN', '5800.00', '0.00', '100', '50'),
('125', 'Julia', 'Nayer', 'JNAYER', '650.124.1214', '1987-07-12', 'ST_CLERK', '3200.00', '0.00', '120', '50'),
('126', 'Irene', 'Mikkilineni', 'IMIKKILI', '650.124.1224', '1987-07-13', 'ST_CLERK', '2700.00', '0.00', '120', '50'),
('127', 'James', 'Landry', 'JLANDRY', '650.124.1334', '1987-07-14', 'ST_CLERK', '2400.00', '0.00', '120', '50'),
('128', 'Steven', 'Markle', 'SMARKLE', '650.124.1434', '1987-07-15', 'ST_CLERK', '2200.00', '0.00', '120', '50'),
('129', 'Laura', 'Bissot', 'LBISSOT', '650.124.5234', '1987-07-16', 'ST_CLERK', '3300.00', '0.00', '121', '50'),
('130', 'Mozhe', 'Atkinson', 'MATKINSO', '650.124.6234', '1987-07-17', 'ST_CLERK', '2800.00', '0.00', '121', '50'),
('131', 'James', 'Marlow', 'JAMRLOW', '650.124.7234', '1987-07-18', 'ST_CLERK', '2500.00', '0.00', '121', '50'),
('132', 'TJ', 'Olson', 'TJOLSON', '650.124.8234', '1987-07-19', 'ST_CLERK', '2100.00', '0.00', '121', '50'),
('133', 'Jason', 'Mallin', 'JMALLIN', '650.127.1934', '1987-07-20', 'ST_CLERK', '3300.00', '0.00', '122', '50'),
('134', 'Michael', 'Rogers', 'MROGERS', '650.127.1834', '1987-07-21', 'ST_CLERK', '2900.00', '0.00', '122', '50'),
('135', 'Ki', 'Gee', 'KGEE', '650.127.1734', '1987-07-22', 'ST_CLERK', '2400.00', '0.00', '122', '50'),
('136', 'Hazel', 'Philtanker', 'HPHILTAN', '650.127.1634', '1987-07-23', 'ST_CLERK', '2200.00', '0.00', '122', '50'),
('137', 'Renske', 'Ladwig', 'RLADWIG', '650.121.1234', '1987-07-24', 'ST_CLERK', '3600.00', '0.00', '123', '50'),
('138', 'Stephen', 'Stiles', 'SSTILES', '650.121.2034', '1987-07-25', 'ST_CLERK', '3200.00', '0.00', '123', '50'),
('139', 'John', 'Seo', 'JSEO', '650.121.2019', '1987-07-26', 'ST_CLERK', '2700.00', '0.00', '123', '50'),
('140', 'Joshua', 'Patel', 'JPATEL', '650.121.1834', '1987-07-27', 'ST_CLERK', '2500.00', '0.00', '123', '50'),
('141', 'Trenna', 'Rajs', 'TRAJS', '650.121.8009', '1987-07-28', 'ST_CLERK', '3500.00', '0.00', '124', '50'),
('142', 'Curtis', 'Davies', 'CDAVIES', '650.121.2994', '1987-07-29', 'ST_CLERK', '3100.00', '0.00', '124', '50'),
('143', 'Randall', 'Matos', 'RMATOS', '650.121.2874', '1987-07-30', 'ST_CLERK', '2600.00', '0.00', '124', '50'),
('144', 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', '1987-07-31', 'ST_CLERK', '2500.00', '0.00', '124', '50'),
('145', 'John', 'Russell', 'JRUSSEL', '011.44.1344.429268', '1987-08-01', 'SA_MAN', '14000.00', '0.40', '100', '80'),
('146', 'Karen', 'Partners', 'KPARTNER', '011.44.1344.467268', '1987-08-02', 'SA_MAN', '13500.00', '0.30', '100', '80'),
('147', 'Alberto', 'Errazuriz', 'AERRAZUR', '011.44.1344.429278', '1987-08-03', 'SA_MAN', '12000.00', '0.30', '100', '80'),
('148', 'Gerald', 'Cambrault', 'GCAMBRAU', '011.44.1344.619268', '1987-08-04', 'SA_MAN', '11000.00', '0.30', '100', '80'),
('149', 'Eleni', 'Zlotkey', 'EZLOTKEY', '011.44.1344.429018', '1987-08-05', 'SA_MAN', '10500.00', '0.20', '100', '80'),
('150', 'Peter', 'Tucker', 'PTUCKER', '011.44.1344.129268', '1987-08-06', 'SA_REP', '10000.00', '0.30', '145', '80'),
('151', 'David', 'Bernstein', 'DBERNSTE', '011.44.1344.345268', '1987-08-07', 'SA_REP', '9500.00', '0.25', '145', '80'),
('152', 'Peter', 'Hall', 'PHALL', '011.44.1344.478968', '1987-08-08', 'SA_REP', '9000.00', '0.25', '145', '80'),
('153', 'Christopher', 'Olsen', 'COLSEN', '011.44.1344.498718', '1987-08-09', 'SA_REP', '8000.00', '0.20', '145', '80'),
('154', 'Nanette', 'Cambrault', 'NCAMBRAU', '011.44.1344.987668', '1987-08-10', 'SA_REP', '7500.00', '0.20', '145', '80'),
('155', 'Oliver', 'Tuvault', 'OTUVAULT', '011.44.1344.486508', '1987-08-11', 'SA_REP', '7000.00', '0.15', '145', '80'),
('156', 'Janette', 'King', 'JKING', '011.44.1345.429268', '1987-08-12', 'SA_REP', '10000.00', '0.35', '146', '80'),
('157', 'Patrick', 'Sully', 'PSULLY', '011.44.1345.929268', '1987-08-13', 'SA_REP', '9500.00', '0.35', '146', '80'),
('158', 'Allan', 'McEwen', 'AMCEWEN', '011.44.1345.829268', '1987-08-14', 'SA_REP', '9000.00', '0.35', '146', '80'),
('159', 'Lindsey', 'Smith', 'LSMITH', '011.44.1345.729268', '1987-08-15', 'SA_REP', '8000.00', '0.30', '146', '80'),
('160', 'Louise', 'Doran', 'LDORAN', '011.44.1345.629268', '1987-08-16', 'SA_REP', '7500.00', '0.30', '146', '80'),
('161', 'Sarath', 'Sewall', 'SSEWALL', '011.44.1345.529268', '1987-08-17', 'SA_REP', '7000.00', '0.25', '146', '80'),
('162', 'Clara', 'Vishney', 'CVISHNEY', '011.44.1346.129268', '1987-08-18', 'SA_REP', '10500.00', '0.25', '147', '80'),
('163', 'Danielle', 'Greene', 'DGREENE', '011.44.1346.229268', '1987-08-19', 'SA_REP', '9500.00', '0.15', '147', '80'),
('164', 'Mattea', 'Marvins', 'MMARVINS', '011.44.1346.329268', '1987-08-20', 'SA_REP', '7200.00', '0.10', '147', '80'),
('165', 'David', 'Lee', 'DLEE', '011.44.1346.529268', '1987-08-21', 'SA_REP', '6800.00', '0.10', '147', '80'),
('166', 'Sundar', 'Ande', 'SANDE', '011.44.1346.629268', '1987-08-22', 'SA_REP', '6400.00', '0.10', '147', '80'),
('167', 'Amit', 'Banda', 'ABANDA', '011.44.1346.729268', '1987-08-23', 'SA_REP', '6200.00', '0.10', '147', '80'),
('168', 'Lisa', 'Ozer', 'LOZER', '011.44.1343.929268', '1987-08-24', 'SA_REP', '11500.00', '0.25', '148', '80'),
('169', 'Harrison', 'Bloom', 'HBLOOM', '011.44.1343.829268', '1987-08-25', 'SA_REP', '10000.00', '0.20', '148', '80'),
('170', 'Tayler', 'Fox', 'TFOX', '011.44.1343.729268', '1987-08-26', 'SA_REP', '9600.00', '0.20', '148', '80'),
('171', 'William', 'Smith', 'WSMITH', '011.44.1343.629268', '1987-08-27', 'SA_REP', '7400.00', '0.15', '148', '80'),
('172', 'Elizabeth', 'Bates', 'EBATES', '011.44.1343.529268', '1987-08-28', 'SA_REP', '7300.00', '0.15', '148', '80'),
('173', 'Sundita', 'Kumar', 'SKUMAR', '011.44.1343.329268', '1987-08-29', 'SA_REP', '6100.00', '0.10', '148', '80'),
('174', 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', '1987-08-30', 'SA_REP', '11000.00', '0.30', '149', '80'),
('175', 'Alyssa', 'Hutton', 'AHUTTON', '011.44.1644.429266', '1987-08-31', 'SA_REP', '8800.00', '0.25', '149', '80'),
('176', 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265', '1987-09-01', 'SA_REP', '8600.00', '0.20', '149', '80'),
('177', 'Jack', 'Livingston', 'JLIVINGS', '011.44.1644.429264', '1987-09-02', 'SA_REP', '8400.00', '0.20', '149', '80'),
('178', 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263', '1987-09-03', 'SA_REP', '7000.00', '0.15', '149', '0'),
('179', 'Charles', 'Johnson', 'CJOHNSON', '011.44.1644.429262', '1987-09-04', 'SA_REP', '6200.00', '0.10', '149', '80'),
('180', 'Winston', 'Taylor', 'WTAYLOR', '650.507.9876', '1987-09-05', 'SH_CLERK', '3200.00', '0.00', '120', '50'),
('181', 'Jean', 'Fleaur', 'JFLEAUR', '650.507.9877', '1987-09-06', 'SH_CLERK', '3100.00', '0.00', '120', '50'),
('182', 'Martha', 'Sullivan', 'MSULLIVA', '650.507.9878', '1987-09-07', 'SH_CLERK', '2500.00', '0.00', '120', '50'),
('183', 'Girard', 'Geoni', 'GGEONI', '650.507.9879', '1987-09-08', 'SH_CLERK', '2800.00', '0.00', '120', '50'),
('184', 'Nandita', 'Sarchand', 'NSARCHAN', '650.509.1876', '1987-09-09', 'SH_CLERK', '4200.00', '0.00', '121', '50'),
('185', 'Alexis', 'Bull', 'ABULL', '650.509.2876', '1987-09-10', 'SH_CLERK', '4100.00', '0.00', '121', '50'),
('186', 'Julia', 'Dellinger', 'JDELLING', '650.509.3876', '1987-09-11', 'SH_CLERK', '3400.00', '0.00', '121', '50'),
('187', 'Anthony', 'Cabrio', 'ACABRIO', '650.509.4876', '1987-09-12', 'SH_CLERK', '3000.00', '0.00', '121', '50'),
('188', 'Kelly', 'Chung', 'KCHUNG', '650.505.1876', '1987-09-13', 'SH_CLERK', '3800.00', '0.00', '122', '50'),
('189', 'Jennifer', 'Dilly', 'JDILLY', '650.505.2876', '1987-09-14', 'SH_CLERK', '3600.00', '0.00', '122', '50'),
('190', 'Timothy', 'Gates', 'TGATES', '650.505.3876', '1987-09-15', 'SH_CLERK', '2900.00', '0.00', '122', '50'),
('191', 'Randall', 'Perkins', 'RPERKINS', '650.505.4876', '1987-09-16', 'SH_CLERK', '2500.00', '0.00', '122', '50'),
('192', 'Sarah', 'Bell', 'SBELL', '650.501.1876', '1987-09-17', 'SH_CLERK', '4000.00', '0.00', '123', '50'),
('193', 'Britney', 'Everett', 'BEVERETT', '650.501.2876', '1987-09-18', 'SH_CLERK', '3900.00', '0.00', '123', '50'),
('194', 'Samuel', 'McCain', 'SMCCAIN', '650.501.3876', '1987-09-19', 'SH_CLERK', '3200.00', '0.00', '123', '50'),
('195', 'Vance', 'Jones', 'VJONES', '650.501.4876', '1987-09-20', 'SH_CLERK', '2800.00', '0.00', '123', '50'),
('196', 'Alana', 'Walsh', 'AWALSH', '650.507.9811', '1987-09-21', 'SH_CLERK', '3100.00', '0.00', '124', '50'),
('197', 'Kevin', 'Feeney', 'KFEENEY', '650.507.9822', '1987-09-22', 'SH_CLERK', '3000.00', '0.00', '124', '50'),
('198', 'Donald', 'OConnell', 'DOCONNEL', '650.507.9833', '1987-09-23', 'SH_CLERK', '2600.00', '0.00', '124', '50'),
('199', 'Douglas', 'Grant', 'DGRANT', '650.507.9844', '1987-09-24', 'SH_CLERK', '2600.00', '0.00', '124', '50'),
('200', 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', '1987-09-25', 'AD_ASST', '4400.00', '0.00', '101', '10'),
('201', 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', '1987-09-26', 'MK_MAN', '13000.00', '0.00', '100', '20'),
('202', 'Pat', 'Fay', 'PFAY', '603.123.6666', '1987-09-27', 'MK_REP', '6000.00', '0.00', '201', '20'),
('203', 'Susan', 'Mavris', 'SMAVRIS', '515.123.7777', '1987-09-28', 'HR_REP', '6500.00', '0.00', '101', '40'),
('204', 'Hermann', 'Baer', 'HBAER', '515.123.8888', '1987-09-29', 'PR_REP', '10000.00', '0.00', '101', '70'),
('205', 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', '1987-09-30', 'AC_MGR', '12000.00', '0.00', '101', '110'),
('206', 'William', 'Gietz', 'WGIETZ', '515.123.8181', '1987-10-01', 'AC_ACCOUNT', '8300.00', '0.00', '205', '110');

-- --------------------------------------------------------

--
-- Table structure for table `job_history`
--

CREATE TABLE IF NOT EXISTS `job_history` (
  `EMPLOYEE_ID` decimal(6,0) NOT NULL,
  `START_DATE` date NOT NULL,
  `END_DATE` date NOT NULL,
  `JOB_ID` varchar(10) NOT NULL,
  `DEPARTMENT_ID` decimal(4,0) DEFAULT NULL,
  PRIMARY KEY (`EMPLOYEE_ID`,`START_DATE`),
  KEY `JHIST_DEPARTMENT_IX` (`DEPARTMENT_ID`),
  KEY `JHIST_EMPLOYEE_IX` (`EMPLOYEE_ID`),
  KEY `JHIST_JOB_IX` (`JOB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `job_history`
--

INSERT INTO `job_history` (`EMPLOYEE_ID`, `START_DATE`, `END_DATE`, `JOB_ID`, `DEPARTMENT_ID`) VALUES
('102', '1993-01-13', '1998-07-24', 'IT_PROG', '60'),
('101', '1989-09-21', '1993-10-27', 'AC_ACCOUNT', '110'),
('101', '1993-10-28', '1997-03-15', 'AC_MGR', '110'),
('201', '1996-02-17', '1999-12-19', 'MK_REP', '20'),
('114', '1998-03-24', '1999-12-31', 'ST_CLERK', '50'),
('122', '1999-01-01', '1999-12-31', 'ST_CLERK', '50'),
('200', '1987-09-17', '1993-06-17', 'AD_ASST', '90'),
('176', '1998-03-24', '1998-12-31', 'SA_REP', '80'),
('176', '1999-01-01', '1999-12-31', 'SA_MAN', '80'),
('200', '1994-07-01', '1998-12-31', 'AC_ACCOUNT', '90'),
('0', '0000-00-00', '0000-00-00', '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `JOB_ID` varchar(10) NOT NULL DEFAULT '',
  `JOB_TITLE` varchar(35) NOT NULL,
  `MIN_SALARY` decimal(6,0) DEFAULT NULL,
  `MAX_SALARY` decimal(6,0) DEFAULT NULL,
  PRIMARY KEY (`JOB_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`JOB_ID`, `JOB_TITLE`, `MIN_SALARY`, `MAX_SALARY`) VALUES
('AD_PRES', 'President', '20000', '40000'),
('AD_VP', 'Administration Vice President', '15000', '30000'),
('AD_ASST', 'Administration Assistant', '3000', '6000'),
('FI_MGR', 'Finance Manager', '8200', '16000'),
('FI_ACCOUNT', 'Accountant', '4200', '9000'),
('AC_MGR', 'Accounting Manager', '8200', '16000'),
('AC_ACCOUNT', 'Public Accountant', '4200', '9000'),
('SA_MAN', 'Sales Manager', '10000', '20000'),
('SA_REP', 'Sales Representative', '6000', '12000'),
('PU_MAN', 'Purchasing Manager', '8000', '15000'),
('PU_CLERK', 'Purchasing Clerk', '2500', '5500'),
('ST_MAN', 'Stock Manager', '5500', '8500'),
('ST_CLERK', 'Stock Clerk', '2000', '5000'),
('SH_CLERK', 'Shipping Clerk', '2500', '5500'),
('IT_PROG', 'Programmer', '4000', '10000'),
('MK_MAN', 'Marketing Manager', '9000', '15000'),
('MK_REP', 'Marketing Representative', '4000', '9000'),
('HR_REP', 'Human Resources Representative', '4000', '9000'),
('PR_REP', 'Public Relations Representative', '4500', '10500');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `LOCATION_ID` decimal(4,0) NOT NULL DEFAULT '0',
  `STREET_ADDRESS` varchar(40) DEFAULT NULL,
  `POSTAL_CODE` varchar(12) DEFAULT NULL,
  `CITY` varchar(30) NOT NULL,
  `STATE_PROVINCE` varchar(25) DEFAULT NULL,
  `COUNTRY_ID` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`LOCATION_ID`),
  KEY `LOC_CITY_IX` (`CITY`),
  KEY `LOC_COUNTRY_IX` (`COUNTRY_ID`),
  KEY `LOC_STATE_PROVINCE_IX` (`STATE_PROVINCE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`LOCATION_ID`, `STREET_ADDRESS`, `POSTAL_CODE`, `CITY`, `STATE_PROVINCE`, `COUNTRY_ID`) VALUES
('1000', '1297 Via Cola di Rie', '989', 'Roma', '', 'IT'),
('1100', '93091 Calle della Testa', '10934', 'Venice', '', 'IT'),
('1200', '2017 Shinjuku-ku', '1689', 'Tokyo', 'Tokyo Prefecture', 'JP'),
('1300', '9450 Kamiya-cho', '6823', 'Hiroshima', '', 'JP'),
('1400', '2014 Jabberwocky Rd', '26192', 'Southlake', 'Texas', 'US'),
('1500', '2011 Interiors Blvd', '99236', 'South San Francisco', 'California', 'US'),
('1600', '2007 Zagora St', '50090', 'South Brunswick', 'New Jersey', 'US'),
('1700', '2004 Charade Rd', '98199', 'Seattle', 'Washington', 'US'),
('1800', '147 Spadina Ave', 'M5V 2L7', 'Toronto', 'Ontario', 'CA'),
('1900', '6092 Boxwood St', 'YSW 9T2', 'Whitehorse', 'Yukon', 'CA'),
('2000', '40-5-12 Laogianggen', '190518', 'Beijing', '', 'CN'),
('2100', '1298 Vileparle (E)', '490231', 'Bombay', 'Maharashtra', 'IN'),
('2200', '12-98 Victoria Street', '2901', 'Sydney', 'New South Wales', 'AU'),
('2300', '198 Clementi North', '540198', 'Singapore', '', 'SG'),
('2400', '8204 Arthur St', '', 'London', '', 'UK'),
('2500', '"Magdalen Centre', ' The Oxford ', 'OX9 9ZB', 'Oxford', 'Ox'),
('2600', '9702 Chester Road', '9629850293', 'Stretford', 'Manchester', 'UK'),
('2700', 'Schwanthalerstr. 7031', '80925', 'Munich', 'Bavaria', 'DE'),
('2800', 'Rua Frei Caneca 1360', '01307-002', 'Sao Paulo', 'Sao Paulo', 'BR'),
('2900', '20 Rue des Corps-Saints', '1730', 'Geneva', 'Geneve', 'CH'),
('3000', 'Murtenstrasse 921', '3095', 'Bern', 'BE', 'CH'),
('3100', 'Pieter Breughelstraat 837', '3029SK', 'Utrecht', 'Utrecht', 'NL'),
('3200', 'Mariano Escobedo 9991', '11932', 'Mexico City', '"Distrito Federal', '"');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE IF NOT EXISTS `regions` (
  `REGION_ID` decimal(5,0) NOT NULL,
  `REGION_NAME` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`REGION_ID`),
  UNIQUE KEY `sss` (`REGION_NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`REGION_ID`, `REGION_NAME`) VALUES
('1', 'Europe\r'),
('2', 'Americas\r'),
('3', 'Asia\r'),
('4', 'Middle East and Africa\r');

desc employees;

select* from departments;
select* from employees;
select* from countries;
select * from job_history;
select* from jobs;
select* from locations;
select* from regions;

#################################### Update Command DML ###############################
# Update changes the specific value of specific row of a table which already exists.
# Alter changes the attributes from the existing table.
update employees set email= 'cdac@gmail.com' where employee_id = 100;
select * from employees;

# increasing the salary by 10 percent in table employees
update employees set salary = salary+(salary * .10 );

#################################### Delete Command DML ###############################

delete from employees where employee_id = 112;
select * from employees;

# 'delete' command  will work like truncate , where it will delete all the values in the table. But here the "where" is not used to specify the row of deletion.
create table student7(rollno int primary key, sname varchar(10), address varchar(20),mobno varchar(20),
branch varchar(10),emailadd varchar(50),marks int check( marks < 100));

insert into student7 values(2,'vijay','hingoli','8987654677','ai','vijayraje.2002@gmail.com',96);
insert into student7 values(3,'amita','parbhani','6576887665','entc','amitasurya567@gmail.com',78);
insert into student7 values(5,'aniket','pune','7687564590','mech','aniketmpatil@gmail.com',89);
select * from student7;

delete from student7;

#################################### Rename ###############################
rename table student7 to students;
select * from students;


#################################### Insert ###############################
insert into students values(2,'vijay','hingoli','8987654677','ai','vijayraje.2002@gmail.com',96);
insert into students values(3,'amita','parbhani','6576887665','entc','amitasurya567@gmail.com',78);
insert into students values(5,'aniket','pune','7687564590','mech','aniketmpatil@gmail.com',89);

select * from students;

# value for one attribule
insert into students (rollno) values (7);

# Insert multiple values 
insert into students (rollno,sname, address) values (8,"Vishwraj", "Nainital");
select * from students;

# Insert using select if columns do match it will work

create table stu (rollno int , sname varchar(10));

insert into stu values (15, 'kashi');

insert into students (rollno, sname) select * from stu;

select * from students;

#################################### Describe ###############################
desc employees;
describe employees;

# To Check Index
show index from employees;

#################################### Informatio Schema ###############################
# It is used to retrive infrmation from the table so that we can easily identify the error
select * from information_schema.columns 
where table_schema = 'hr' and table_name = 'employees'; 

#################################### Explain ###############################
explain employees;

explain select * from employees;

#################################### Check ###############################
check table employees;
check table stu;
#################################### Table Status ###############################
# It will apply for each table present in the database.
show table status;
show databases;
show tables;
# The below command is same as desc command
show columns from employees;

#IMP :- #################################### select  ###############################

# Alias ( It adds the column  with the other given column temporaryly.
select first_name , salary+salary*.15 as incremental_salary from employees;
desc employees;
select * from employees;

# It will take the given column fro temporary person out of the table as Alias without using 'as'.
select email email_address from employees;

# temporary Table
create temporary table emp_temp as select * from employees;
desc emp_temp;
select * from emp_temp;
show tables;

# To see the table on the database
select * from information_schema.tables
where table_schema='hr' and table_type= 'Temporary';# error it dos not shows any data.

# Where 
select * from employees where employee_id =110;

#Order by
select * from employees order by first_name; # It shows data in ascending order.

select * from employees order by first_name desc;# It shows data in descending order.

#################################### Relational Operators ###############################
# 1) Using comparison operators less than or greater than.
select employee_id, first_name, salary, department_id from employees where salary>=10000;

select employee_id, first_name, salary, department_id from employees where department_id >80;

select employee_id, first_name, salary, department_id from employees where salary<10000;

select employee_id, first_name, salary, department_id from employees where department_id<=10;

select * from jobs where min_salary<10000;

#not equal
select * from countries where region_id!=4;
select * from countries where region_id<>4;

############################### Logical Operators (And , or, not) ################################
#And
select first_name, salary, department_id from employees where first_name='Steven' and department_id = 100;# Both condition should follow
select first_name, salary, department_id from employees where first_name='Steven' and department_id = 90;# Both condition should follow
select * from employees where first_name = 'john' and salary=1000;
select * from employees where first_name = 'David' and salary>400;

select * from countries;
select * from countries where  country_name = 'Egypt' and country_id = 'eg';

#OR
select * from employees;
select first_name, salary, department_id from employees where first_name='Steven' or department_id = 100;# any one condition should follow 
select * from employees where first_name = 'john' or salary=1000;
select * from employees where job_id = 'ad_pres' or department_id = 90;
select * from employees where job_id = 'AD_PRES' or (department_id = 90 and department_id = 100 );# First preference goes to the parenthesis then the othes will exicute
select * from employees where (department_id = 90 and department_id = 100 );
select * from employees where (department_id = 90 or department_id = 100 );

# Not 
select * from employees where not (department_id = 90 and department_id = 100 );
select * from employees where not (department_id = 90 or department_id = 100 );
select * from employees where not (department_id = 90 or department_id = 100 ) order by department_id;

select * from employees where not manager_id = 205 order by manager_id desc;

select * from departments;
select * from departments where not (department_name = 'it' or location_id = 1400) and  (department_id = 10 or manager_id = 100) ; # not is used for only one bracket but doesn't apply on the second
select * from departments where (department_name = 'it' or location_id = 1400) and (department_id = 10 or manager_id = 100) ;
select * from departments where not (department_name = 'it' or location_id = 1400) or  (department_id = 10 or manager_id = 100) ; 



# for retreving the the other date format
select* from job_history;
select end_date from job_history where date_format(end_date,'dd/mm/yyyy');
select date_format(end_date, '%d/%m/%y') as dddmmm from job_history;

#################################### In Operators ###############################
# In
select * from employees where department_id in (10,20,30,40,100,90);# In operator works as OR operator where we can check multiple conditions

#In oprator have higher precedence than where clause
select * from employees where JOB_ID in ('AD_VP','MK_MAN','AD_VP');

select * from employees where MANAGER_ID  in (102,103,101,108) order by MANAGER_ID;
# Not in
select * from employees where FIRST_NAME not in ('jennifer','neena','lex','steven');

select * from employees where MANAGER_ID not in (102,103,101,108) order by MANAGER_ID;

################################### Between Operators ###############################
select * from employees where salary between 10000 and 18000;

select * from employees where FIRST_NAME between 'A' and 'J' order by FIRST_NAME;
select * from employees where salary between 20000 and 18000; # It will give null value because first value should be lesser than second value

select * from employees where FIRST_NAME between 'J' and 'A'; #same in alphabets.

################################### like Operators ###############################
select * from employees where FIRST_NAME like 'A%';
select * from employees where FIRST_NAME like 'd%';
select * from employees where SALARY like '5%';

################################### name ends with Operators ###############################
select * from employees where FIRST_NAME like '%ah';
select * from employees where FIRST_NAME like '%at';

################################### check for character at any position Operators ###############################
select * from employees where LAST_NAME like '%aa%';

################################### check for character at second position Operators ###############################
select * from employees where LAST_NAME like '_i%';

################################### check for character at fourth position Operators ###############################
select * from employees where LAST_NAME like '___i%';
select * from employees where LAST_NAME like '___k%';

################################### not like Operators ###############################
select * from employees where LAST_NAME not like '%aa%';
select * from employees where LAST_NAME not like '%at%';

select * from employees where PHONE_NUMBER not like '%7';

################################### is not null Operators ###############################
select * from employees where MANAGER_ID is not null;
select * from employees where JOB_ID is not null;

################################### is not null Operators ###############################
select * from employees where DEPARTMENT_ID is null;
select * from employees where EMAIL is null;



##############################################################################################################

################################### String Function ###############################
select FIRST_NAME, LAST_NAME, concat(FIRST_NAME," ",LAST_NAME) as FULL_NAME from employees;

################################### instr Function ###############################
desc employees;
select FIRST_NAME, instr(FIRST_NAME,'A') as first_occurance_of_A from employees;# It finds the position of given letter and then displays it by making another column
select FIRST_NAME, instr(FIRST_NAME,'en') as first_occurance_of_A from employees;

select LAST_NAME, instr(LAST_NAME, 'a') as full_name from employees ;
select concat(FIRST_NAME," ",LAST_NAME) as FULL_NAME , EMPLOYEE_ID ,instr(LAST_NAME, 'a') position_of_a from employees where last_name like '%a%';# ans of the given question

################################### length Function ###############################
select FIRST_NAME,length (FIRST_NAME) as length_of_FIRST_NAME from employees;#add column

select FIRST_NAME,length (FIRST_NAME)  from employees;# shws both column
use hr;
select length (FIRST_NAME)  from employees; #only length

select FIRST_NAME,LAST_NAME,SALARY from employees where length(FIRST_NAME)<3;#finds FIRST_NAME where it is less than three.
select FIRST_NAME,LAST_NAME,SALARY from employees where length(FIRST_NAME)<4;

################################### char_length Function ###############################
select FIRST_NAME, char_length(FIRST_NAME) as length_of_FIRST_NAME_in_no_of_char from employees;#you can use (as) for creating a temporary table.

################################### right Function ###############################
select FIRST_NAME, right (FIRST_NAME,3) last_3_character from employees;# extract last 3 charecter right character

################################### left Function ###############################
select FIRST_NAME, left (FIRST_NAME,3) first_3_character from employees;# extract first 3 charecter right character


#Q) last 4 digits display empid ,full name, last 4 digits
select * from employees;
select EMPLOYEE_ID,FIRST_NAME,LAST_NAME,PHONE_NUMBER, right (PHONE_NUMBER,4) last_4_character from employees;

select EMPLOYEE_ID,concat(FIRST_NAME," ",LAST_NAME) as FULL_NAME,PHONE_NUMBER, right (PHONE_NUMBER,4) last_4_character from employees;

################################### substrings Function ###############################
select EMPLOYEE_ID,concat(FIRST_NAME," ",LAST_NAME) as FULL_NAME, substr(FIRST_NAME,2) from employees;# It will extract value from 2nd position to the last postion.

select EMPLOYEE_ID,concat(FIRST_NAME," ",LAST_NAME) as FULL_NAME, substr(FIRST_NAME,2,4) from employees;# It will extract value from 2nd position to the 4th postion.

select EMPLOYEE_ID,concat(FIRST_NAME," ",LAST_NAME) as FULL_NAME, substring(FIRST_NAME,2,4) from employees;# substring will give the same as substr

################################### substrings_index Function ###############################
select EMPLOYEE_ID,concat(FIRST_NAME," ",LAST_NAME) as FULL_NAME, substring_index(FIRST_NAME,2,4) from employees;

################################### trim Function ###############################
select trim(' hello  ');# It will remove the blank space from the both sides
select rtrim('          hello       ');# It will remove the blank space from the right sides
select ltrim('          hello     ');# It will remove the blank space from the left sides

################################### upper case and lower case Function ###############################
select lower('ADJSKJHDBJKBA');
select lower (concat(FIRST_NAME," ",LAST_NAME)) as full_name from employees;#converts every letter into lower case
select lcase(concat(FIRST_NAME," ",LAST_NAME)) as full_name from employees;


select upper('adskksjfbj');
select upper(concat(FIRST_NAME," ",LAST_NAME)) as full_name from employees;#converts every letter into upper case
select ucase(concat(FIRST_NAME," ",LAST_NAME)) as full_name from employees;# It also works.

################################### strcmp Function ###############################
select strcmp('cdac','cdac mumbai');#used to compare the two strings
select strcmp('cdac','CDAC');#output 0 means they ar same
select strcmp('cdac munbai','cdac mumbai');#output 1 they are not same
select strcmp('cdac mumbai','cdac mumbai');

################################### locate Function ###############################
select first_name ,locate('Ellen', first_name) from employees order by first_name;# output 1 means equal

################################### find_in_set Function ###############################
select * from employees where find_in_set('ad_vp', job_id);#finds out the given values

################################### reverse Function ###############################
select reverse(first_name) from employees;#revers the characters

################################### replace Function ###############################
select replace (first_name,'ah','XYZ') from employees;#replaces the charecters from the given column

################################### aggregate Function ###############################
select avg(salary) from employees;
select max(salary) from employees;
select min(salary) from employees;
select sum(salary) from employees;
select count(*) from employees;#number of rows
select count(employee_id) from employees;
select count(distinct(department_id)) from employees;
select count(*) from employees where salary>10000;

################################### group_concat() Function ###############################



################################### matthematical Function ###############################
select abs(-10);

select ceiling(4.3);

select floor(4.3);

select round(4.4);

select round(4.674648383,2);

select sqrt(4);

select power(2,3);

select mod(10,2);

select greatest(10,20,3);

select least(33,54,66);

select coalesce(first_name,'na') from employees;#shows NA when there is a null value.

################################### ################################### ################################### ################################### 
################################### ################################### ################################### ################################### 
################################### ################################### ################################### ################################### 

# DATE OF STUDING IS 11/09/2024

################################### Date Function ################################### 
select * from employees;

select now();
select curdate();#gives current date
select current_date();#gives current date
select * from employees where HIRE_DATE=curdate();#no memebers hired on current date so we get the null output

select sysdate();#gives system date on the computer

select curtime();#gives current time

####### month, year and day of extration
select FIRST_NAME, year(HIRE_DATE) as year_of_hiring, month(HIRE_DATE) as month_of_hiring from employees;#gives yesar and month of HIRE_DATE column separately

select FIRST_NAME, day(HIRE_DATE) as day_of_hiring from employees;# date/date of hire_date column is mentioned

select FIRST_NAME, dayname(HIRE_DATE) as dayname_of_hiring from employees;# gives name of the day

select FIRST_NAME, dayofmonth(HIRE_DATE) as day_of_month_of_hiring from employees; #gives date in the month

select FIRST_NAME, dayofyear(HIRE_DATE) as day_of_year_of_hiring from employees;# gives day of the year since hiring

select date_add(curdate(), interval 30 day) as new_added_table; #it adds 30 days in the current date.

select date_sub(curdate(), interval 30 day) as new_added_table ;#it substract 30 days in the current date.
select * from employees;

select FIRST_NAME,LAST_NAME,HIRE_DATE, datediff(curdate(),HIRE_DATE) as diff_date from employees;# gives the difference between current date and HIRE_DATE

######### extract command
select FIRST_NAME,HIRE_DATE, extract(year from HIRE_DATE) as year_of_hiring from employees;#extract the year from the HIRE_DATE, the year command and the extract command is the same.

select FIRST_NAME,HIRE_DATE, date_format(HIRE_DATE,'%D/%M/%Y') as hire_date_in_dmy from employees;# It shows the date in dmy format

select FIRST_NAME,HIRE_DATE, date_format(HIRE_DATE,'%Y-%m-%d') as hire_date_in_dmy from employees;
#str to date format if date in varchar
select FIRST_NAME,HIRE_DATE, str_to_date(HIRE_DATE,'%Y-%M-%D') as hire_date_in_dmy from employees;

##Q) write a query to find the employees who have been hired in last 90 days?
select FIRST_NAME ,HIRE_DATE from employees where HIRE_DATE= date_sub(curdate(), interval 90 day);
select FIRST_NAME ,HIRE_DATE from employees where HIRE_DATE BETWEEN curdate() and date_sub(curdate(), interval 90 day);#not right

##Q) Find the employees who have been hired in the year of 2000

select FIRST_NAME ,HIRE_DATE from employees where year (HIRE_DATE=2000); 
select FIRST_NAME,HIRE_DATE, extract(year from HIRE_DATE ) = 2000 as year_of_hiring from employees;

##Q) Find the tenure of the employees in the organization ?
select FIRST_NAME ,HIRE_DATE  ,datediff(curdate(),HIRE_DATE) as tenure from employees; #gives in days
select FIRST_NAME ,HIRE_DATE  ,floor(datediff(curdate(),HIRE_DATE) / 365)as tenure from employees; # gives in years
select FIRST_NAME ,HIRE_DATE , timestampdiff(year,hire_date,curdate()) from employees;


################################### Case Statement: ###################################
select * from employees;
select employee_id,FIRST_NAME,LAST_NAME,HIRE_DATE,MANAGER_ID,
case
	when MANAGER_ID= 100 then 'admin'
    when MANAGER_ID = 201 then 'Marketing'
    when MANAGER_ID= 108 then 'Finance'
end as manager_details from employees order by manager_details desc; #it start witn case and complete with end.

###################################
select employee_id,FIRST_NAME,LAST_NAME,SALARY,
case
	when SALARY <=5000 then 'salary is low'
    when SALARY between 5000 and 10000 then 'SALARY is of average range'
    when SALARY >=10000 then 'SALARY is good '
end as SALARY_desc from employees order by SALARY desc;

###################################
select * from departments;
select DEPARTMENT_ID,DEPARTMENT_NAME,LOCATION_ID,
case
	when LOCATION_ID =1700 then 'USA'
    WHEN LOCATION_ID = 2400 THEN 'UK'
	WHEN LOCATION_ID = 2500 THEN 'CANADA'
end as dept_loc_desc from departments order by LOCATION_ID;

##Q) Write a query to give bonus to employees who is having job_id as 'ad_vp' , 'it_prog'. givr the employees the bonus of 50 percent of thir salary and other s won't get any bonus
select * from employees;
select FIRST_NAME,LAST_NAME,JOB_ID,
case
	when JOB_ID = 'ad_vp' then salary+(salary*.5)
    when JOB_ID = 'it_prog' then  salary+(salary*.5)
	when JOB_ID!= 'ad_vp' then   'no bonus'
    when JOB_ID!= 'ad_prog' then   'no bonus'
end as bonus_salary from employees order by salary;

##Q) Write a query to select employees who get bonus if they are in departmentid=90 or salary greater than 1000?
select FIRST_NAME,LAST_NAME,SALARY,DEPARTMENT_ID from employees
where
case
	when DEPARTMENT_ID = 90 then 1
    when salary > 10000 then 1
    else 0
end =1 ; #using where command

################################### If condition ###################################
select FIRST_NAME,SALARY,  
if (salary> 10000,'good salary','poor salary') as remarks from employees; #1st statement = if condition ,2nd = if true condition ,3rd=else(,) next statement.

 select location_id ,CITY ,
 if (LOCATION_ID = 1000 or LOCATION_ID=1700, 'Egypt', null) as new_location from locations;
 
select * from locations;
select * from employees;

select FIRST_NAME,SALARY,
avg(if(salary>5000,salary,null)) as sal_details from employees;#error is given here


################################### GROUP BY ###################################
select * from employees;
select DEPARTMENT_ID, count(*) from employees group by DEPARTMENT_ID;
select count(*) from employees group by DEPARTMENT_ID;

select DEPARTMENT_ID,sum(salary) from employees group by department_id order by department_id desc;#we can use those column which we are mentioned in select here we can take only group by
select DEPARTMENT_ID,min(salary) from employees group by department_id;
##Q) Find number of employees hired in each month for any specific year
select month(HIRE_DATE) month_specific, count(*) no_emp from employees where year(HIRE_DATE)=1987  group by month(HIRE_DATE);#study more about it it will or search on gpt

##Q) Find the department with more than 5 employees 
select * from departments;
select DEPARTMENT_ID , count(*) as new_dep from employees where DEPARTMENT_ID>5 group by DEPARTMENT_ID;#we can use where on table data not on grounp by data #(where) is used Before processing of the data

select DEPARTMENT_ID , count(*) as new_dep from employees group by DEPARTMENT_ID having new_dep>5;# we can use having on processed data ##(having) is used after processsing of the data.


################################### ################################### ################################### ################################### 
################################### ################################### ################################### ################################### 
################################### ################################### ################################### ################################### 

# DATE OF STUDING IS 12/09/2024

## Q)Find the job_title with an average salary greater than 5000

select * from employees;
select JOB_ID, avg(salary) as avg_salary from employees group by job_id having (avg_salary>5000 );

## Q) Find the department with total expense between 2000 to 5000
select * from jobs;

select DEPARTMENT_ID , sum(salary) as expense from employees group by DEPARTMENT_ID having expense BETWEEN 2000 and 5000;
 
## Q) find the department where the number of employees is greater then 5 avg slary is>5000;
select DEPARTMENT_ID, count(employee_id) as counting,avg(salary) as avg_salary from employees
 group by DEPARTMENT_ID having (avg_salary>5000) and counting>5;

## Q) find the department where the number of employees is greater than 3 , who joind on 1 jan 1987 and total expense of salary is 5000

select DEPARTMENT_ID,count(employee_id) as counting, sum(salary) as expense from employees 
where HIRE_DATE= '1987-01-01' 
group by DEPARTMENT_ID having expense>5000 and counting>3;

## Q) find the department along with the total number of employees and maximum salary 

select DEPARTMENT_ID, max(salary) as maxsalary , count(EMPLOYEE_ID) as counting from employees group by DEPARTMENT_ID;

## Q) find the department along with the total number of employees and maximum salary for each depart including only those  departments whose maximum salary is more than 10000
select DEPARTMENT_ID, max(salary) as maxsalary , count(EMPLOYEE_ID) as counting from employees group by DEPARTMENT_ID having maxsalary>10000;


################################### SUB QUERIES ################################### important and has to read about it more 

## Q) find emplyees whoes manager_id is 101
select EMPLOYEE_ID from employees where manager_id =101; #simple query gives only the EMPLOYEE_ID table

select * from employees where EMPLOYEE_ID in
(select EMPLOYEE_ID from employees where manager_id =101);#nested sub query gives the all the table related to the EMPLOYEE_ID column

##Q) Write a query to display first name last name and department_id of employees who is working in the same department as steven.
select * from employees;
select department_id from employees where FIRST_NAME = 'steven' ;#first right the subquery

select FIRST_NAME,LAST_NAME,DEPARTMENT_ID from employees where department_id in
(select department_id from employees where FIRST_NAME = 'steven' ) ;#put that subquery in the next nested query

select FIRST_NAME,LAST_NAME,DEPARTMENT_ID from employees where department_id =
(select department_id from employees where FIRST_NAME = 'nandita' ) ; # we can use(=) if there is only one nandita

##Q) Find the employee(full details) who earns the highest salary 
select * from employees where salary = max(salary);

select * from employees where salary =
(select  max(salary) from employees  );

##Q) Find department _id and the number of employees in the department who is having employees greater than 5
select EMPLOYEE_ID from employees where EMPLOYEE_ID>5;

select  * from employees where EMPLOYEE_ID in
(select DEPARTMENT_ID from employees where EMPLOYEE_ID>5);# wrong answer 


# right ans
select DEPARTMENT_ID from employees group by DEPARTMENT_ID having count(*)>5;

select DEPARTMENT_ID , count(*) as counting from employees where DEPARTMENT_ID in
(select DEPARTMENT_ID from employees group by DEPARTMENT_ID having count(*)>5) group by DEPARTMENT_ID; 

##Q) find the employees whose salary is above then average salary of all employees;

select avg(salary) from employees;#written for understanding

select * from employees where salary > 
(select avg(salary) from employees); # here we can use operators such as (=,>,<, in , like) before the nested query

##Q) write a query to display department_id of departments that dont have any employees
select * from employees;
select DEPARTMENT_ID from employees where DEPARTMENT_ID is null;# half of the sub query

select DEPARTMENT_ID from employees where DEPARTMENT_ID IN
(select DEPARTMENT_ID from employees where DEPARTMENT_ID is null);#sub query #wrong question

# Q) find the department with highest number of employees
select DEPARTMENT_ID , count(*) as counting from employees GROUP BY DEPARTMENT_ID order by count(*) desc limit 1; #we did it with using the group by

select department_id from employees where  DEPARTMENT_ID =
(select DEPARTMENT_ID  from employees GROUP BY DEPARTMENT_ID order by count(*) desc limit 1) limit 1;

select department_id from
(select DEPARTMENT_ID  from employees GROUP BY DEPARTMENT_ID order by count(*) desc limit 1) as max_depth;#Here we have used this query on the from place using alia table.

# Q) find the department with least number of employees
select department_id from
(select DEPARTMENT_ID  from employees GROUP BY DEPARTMENT_ID order by count(*) limit 1) as less_depth; #just use ascending order by function

#new question
select * from departments;
select DEPARTMENT_NAME from departments where DEPARTMENT_id IN
(select department_id from
(select DEPARTMENT_ID  from employees GROUP BY DEPARTMENT_ID order by count(*) desc limit 1) as max_depth);


# Q) Find employees with deartment_id from departments that are located in seatle and employees who work in those department
select * from departments;
select * from employees;
select * from locations;
select * from regions;

select FIRST_NAME,LAST_NAME,DEPARTMENT_ID from employees where DEPARTMENT_ID in
(select DEPARTMENT_ID from departments where LOCATION_ID in
(select LOCATION_ID from locations where city='seattle'));#extracting information from other table where we can use 3 tables at a same.


## Q) Write a query to display firstname last name , department id from employees who works in department located in cities whose name starts with 'S'

select FIRST_NAME,LAST_NAME,DEPARTMENT_ID from employees where DEPARTMENT_ID in
(select DEPARTMENT_ID from departments where LOCATION_ID in
(select LOCATION_ID from locations where city like ('S%')));#extracting information from other table where we can use 3 tables at a same.


## Q) Write a query to find department that have more than 5 employees located in seattle

#1. group ---count
#2. location_id ----seattle----- department_id


#select department_id,department_name from departments where location_id in
#(select location_id from locations where city
#(select city ,count(*) from locations  group by city having city='seattle' and count(*)>5));#wrong answer



select department_id, count(*) as num_emp from employees where department_id in
(select department_id from departments where location_id in
(select location_id from locations where city ='seattle')) GROUP BY department_id having count(*)>5;# use group by for the employee table


################################### ################################### ################################### ################################### 
################################### ################################### ################################### ################################### 
################################### ################################### ################################### ################################### 

# DATE OF STUDING IS 13/09/2024

################################### joints ################################### 
CREATE TABLE Department_jn (
    dept_id INT PRIMARY KEY,
    manager_id INT,
    department_name VARCHAR(50)
);

CREATE TABLE Employee_jn (
    emp_id INT PRIMARY KEY,
    e_name VARCHAR(50),
    salary DECIMAL(10, 2),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Department_jn(dept_id)
);


INSERT INTO Department_jn (dept_id, manager_id, department_name) 
VALUES
    (1, 101, 'Engineering'),
    (2, 102, 'Sales'),
    (3, 103, 'Marketing'),
    (4, 104, 'Other');


INSERT INTO Employee_jn (emp_id, e_name, salary, department_id) 
VALUES
    (201, 'John Doe', 60000.00, 1),
    (202, 'Jane Smith', 55000.00, 1),
    (203, 'Michael Johnson', 62000.00, 2),
    (204, 'Emily Davis', 58000.00, 2),
    (205, 'Chris Brown', 63000.00, 3),
    (206, 'Amanda Wilson', 60000.00, 3);

select * from employee_jn;
select * from department_jn;

# Q) Write a query to find name and salary of all employees along with their corresponding department names 
#1. --name ,, salary -- emploee
#2. --deartment_name--- department table
#3. -- common department_id and dep_id on both the tables

select e_name,salary,department_name from employee_jn inner join department_jn on department_id=dept_id;

# Q) write a query to find name and manager_id of all employees along with their corresponding department_names

#1.--name,dept_id,manager_id---employee table
#2. -- comdition dept_id = department_id (employees an department table)

select e_name ,department_id ,manager_id,department_name from employee_jn  join department_jn on department_id = dept_id;


# Q)write a query to find_name manager_id and department_name of all employeees along with their corresponding department_name where the department_name is 'sales'

#1. name , dept_id, manager_id ,department_name, from emp and dept tables
#2. join condition -- department_id on dept_id
#3. where department_name = salaes

select e_name,department_name,manager_id,department_id from employee_jn join department_jn on department_id = dept_id 
where department_name ='sales';

# Q) Write a query to find name, department_id and manager_id of all employees with their corresponding department_names where the salary is in the range of 2000 to 5000;


select e_name,department_id,manager_id from employee_jn join department_jn on department_id=dept_id 
where salary BETWEEN 2000 and 5000; #Remember the 'join' and 'on'



###### Using This queries on old tables having the same attribute names (same column names)#############
select first_name,department_id,manager_id,department_name from employees join departments on department_id=department_id 
where salary BETWEEN 2000 and 5000; # Error Code: 1052. Column 'department_id' in field list is ambiguous

select e.first_name,d.department_id,e.manager_id,d.department_name from employees e join departments d on e.department_id=d.department_id 
where salary BETWEEN 2000 and 5000;


select * from employees ;
select * from departments;
select * from locations;
SELECT * from countries;
select * from regions;
select * from jobs;

/* employees have department_id
departments table has department_id -- location_id
locations table has location_id -- country_id
countries table has country_id -- region_id
regions table has region_id.
jobs table has job_id */

## Q) write a query fname ,lname, job_title.

select e.FIRST_NAME,e.LAST_NAME,j.JOB_TITLE from employees e join jobs j on e.JOB_ID = j.JOB_ID ;##joining two tables 

## Q) Write a query to find fname, lname,city .
select e.FIRST_NAME,e.LAST_NAME,l.city from employees e 
join departments d on e.DEPARTMENT_ID = d.DEPARTMENT_ID 
join locations l on l.LOCATION_ID = d.LOCATION_ID;

## Q) Write a query to display fname, lname and countryname.
select e.FIRST_NAME,e.LAST_NAME,c.COUNTRY_NAME from employees e
join departments d on e.DEPARTMENT_ID=d.DEPARTMENT_ID
join locations l on l.LOCATION_ID = d.LOCATION_ID
join countries c on c.COUNTRY_ID = l.COUNTRY_ID;

## Q) Write a query to display fname, lname, city, country_name,region_name:
select e.FIRST_NAME,e.LAST_NAME,l.city ,c.COUNTRY_NAME , r.REGION_NAME from employees e
join departments d on e.DEPARTMENT_ID=d.DEPARTMENT_ID
join locations l on l.LOCATION_ID = d.LOCATION_ID
join countries c on c.COUNTRY_ID = l.COUNTRY_ID
join regions r on r.REGION_ID = c.REGION_ID;

## Q) Write a query to display fname,lanem, job_id, job _title salary of employees who have the same job and same as other employees in the company;
select distinct(e.EMPLOYEE_ID), e.FIRST_NAME,e.LAST_NAME,e.salary,e.job_id,j.job_title from employees e
join employees e1 on e.job_id = e1.job_id and (e.salary=e1.salary) and e.employee_id<>e1.employee_id
join jobs j on e.job_id = j.job_id;   #wrong ans for this question just remember to create the virtual table 

## Q) Wrtie a query to display depatment_id and the number of distinct location where department has employee

select distinct(l.location_id), d.DEPARTMENT_ID ,count(e.employee_id) as no_emp  from departments d
join locations l on d.LOCATION_ID=l.LOCATION_ID 
join employees e on d.department_id = e.department_id 
group by d.DEPARTMENT_ID having count(distinct d.location_id) and no_emp >0;

## Q) Write a query to find no_of distinct department where employees works
select distinct(d.department_id) , count(*) as no_emp from employees e 
join departments d on d.DEPARTMENT_ID = e.department_id 
group by d.department_id; #Right answer 

select distinct(DEPARTMENT_ID )from departments group by DEPARTMENT_ID ;

select e.DEPARTMENT_ID, count(*) as no_emp from employees e
join employees e1 on e.DEPARTMENT_ID= e1.DEPARTMENT_ID 
group by e.DEPARTMENT_ID;# It is the wrong  answer 

## Write a query to display country_id and no_of employees working in each country that has more than 15 employees
select l.COUNTRY_ID,count(*) as no_emp from employees e
join departments d on e.DEPARTMENT_ID = d.DEPARTMENT_ID
join locations l on d.LOCATION_ID = l.LOCATION_ID 
group by l.COUNTRY_ID having no_emp> 15 ;

CREATE TABLE student (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    age INT,
    course_id INT
);
CREATE TABLE course (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    credits INT
);
INSERT INTO student (student_id, student_name, age, course_id) VALUES
(1, 'John', 21, 101),
(2, 'Sarah', 22, 102),
(3, 'Mike', NULL, NULL),
(4, 'Emma', 24, 103),
(5, NULL, 23, 101);
INSERT INTO course (course_id, course_name, credits) VALUES
(101, 'Mathematics', 4),
(102, 'Science', 3),
(103, 'History', 2),
(104, NULL, NULL);

select * from student;
select * from course;

####################################### LEFT JOIN ########################
select s.student_name , s.age,c.course_name, c.credits from student s 
left join course c on s.course_id=c.course_id;


####################################### RIGHT JOIN ########################
select s.student_name , s.age,c.course_name, c.credits from student
right join course c on s.course_id = c.course_id;

# select EMPLOYEE_ID, sum (EMPLOYEE_ID) over (partition by JOB_ID order by EMPLOYEE_ID as 'new_id' from employees);



#######################################  stored Functions ########################

select concat(FIRST_NAME,' ',LAST_NAME) as full_name from employees ; ## Normal query



#Function query 
delimiter $$
create function emp_detail(emp_id int)
returns varchar(100)
DETERMINISTIC
begin 
declare full_name varchar(100) ;
select concat(FIRST_NAME,' ',LAST_NAME) into full_name
from employees where EMPLOYEE_ID = emp_id;
return full_name;
end;;
$$
delimiter ;

DELIMITER $$

CREATE FUNCTION emp_details(emp_id INT)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    DECLARE full_name VARCHAR(100);
    
    SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) INTO full_name
    FROM employees WHERE EMPLOYEE_ID = emp_id;
    
    RETURN full_name;
END$$

DELIMITER ;


## Q) Find the employee department_id using employee first_name
select department_id from employees where first_name = 'lex';

delimiter $$
create FUNCTION to_find_dpt_using_fname(f_name varchar(20))
returns int
deterministic
begin
		declare dept_id int;
        select department_id into dept_id 
        from employees where first_name = f_name;
        return dept_id;

end ;;
$$
delimiter ;
select to_find_dpt_using_fname('lex');

## Q) Find the salary of the employee using the employee_id
 select salary from employees where employee_id = 101;
 
 delimiter $$
 
 create function salary_using_id(emp_id int)
 returns int
 deterministic
 begin
		DECLARE emp_sal INT;
        select salary into emp_sal
        from employees where employee_id = emp_id;
        return emp_sal;
 end;;
 $$
 delimiter ;

select salary_using_id(102);

## Q) write a function to find the year_of_experience using employee_id

select timestampdiff(year,hire_date,curdate()) as experience from employees where EMPLOYEE_ID=101;

delimiter $$

create function year_of_experience (emp_id int)
returns INT
deterministic 
begin
		declare year_of_experience int;
        select timestampdiff(year,hire_date,curdate()) into year_of_experience 
        from employees where employee_id = emp_id;
        return year_of_experience ;


end;;
$$
delimiter ;

select year_of_experience (200);#HERE WE ARE CHECKING THE RUNNING STATUS OF THE QUERY. it should return the one row VALUES

## Q) Function to write number of employees in a department

select count(EMPLOYEE_ID) ;

delimiter $$
CREATE FUNCTION num_of_emp (dept_id int)
returns int
deterministic 
begin
		declare  num_of_emp int;
        select count(*) into  num_of_emp
        from employees where department_id = dept_id;
        return  num_of_emp;

end;;
$$ delimiter ;
select  num_of_emp (20);

## Q) Find total number of employees who is manager by giving input as manager_id

delimiter $$
CREATE FUNCTION num_of_emp2 (man_id int)
returns int
deterministic 
begin
		declare  num_of_emp int;
        select count(*) into  num_of_emp
        from employees where manager_id = man_id;
        return  num_of_emp;

end;;
$$ delimiter ;
select num_of_emp2(100);

## Q) find the no of employees working in the department with specific job id and earning more than min_salary

delimiter $$
CREATE FUNCTION num_of_emp_in_dept2 (j_id varchar(20), min_salary decimal(10,2)) 
returns varchar(30)
deterministic 
begin
		declare  num_of_emp_in_dept int;
        select count(*) into  num_of_emp_in_dept
        from employees where job_id = j_id and salary>min_salary;
        return   num_of_emp_in_dept;

end;;
$$ delimiter ;

 select num_of_emp_in_dept2('SA_REP',4000);

## Q) write a stored function to return total_salary for employee working in specific department
delimiter $$
CREATE FUNCTION total_salary_for_employee1 (dep_id int) 
returns decimal(10,3)
deterministic 
begin
		declare total_salary_for_employee1 int;
        select sum(salary) into  total_salary_for_employee1
        from employees where department_id = dep_id;
        return   total_salary_for_employee1;

end;;
$$ delimiter ;
select total_salary_for_employee1 (50);

## Q) Get department name if department is located in the given location
delimiter $$
CREATE FUNCTION dept_name2 (dept_id int,loc  int) 
returns varchar(100)
deterministic 
begin
		declare xyz int;
        select  d.DEPARTMENT_NAME into  xyz
        from departments d  join locations l on d.LOCATION_ID = l.LOCATION_ID  where location_id = loc and department_id = dept_id;
        return   xyz;

end;;
$$ delimiter ;

select dept_name2 (30,1700);



################################### ################################### ################################### ################################### 
################################### ################################### ################################### ################################### 
################################### ################################### ################################### ################################### 

# DATE OF STUDING IS 14/09/2024

## example 1)

delimiter $$
CREATE FUNCTION get_emp_details_with_dept (emp_id int) 
returns varchar(2000)
deterministic 
begin
		declare emp_details varchar(2000);
        select group_concat(concat(FIRST_NAME,' ',LAST_NAME,' who works in ', d.DEPARTMENT_NAME) separator ',')into emp_details ## Here we have used group concat
        from employees e  join departments  d on d.DEPARTMENT_ID = e.DEPARTMENT_ID  where EMPLOYEE_ID=emp_id ;
        return   emp_details;

end;;
$$ delimiter ;

select get_emp_details_with_dept (100);


# Q) show the employee list working in perticular city.
delimiter $$
CREATE FUNCTION get_emp_list (city_ VARCHAR(20)) 
returns varchar(2000)
deterministic 
begin
		declare emp_list varchar(2000);
        declare city_count int;
        
        select count(*) into city_count from locations where city=city_;
        if city_count =0 or city_count is null then 
			return concat('city not found ', city , ' in employees table');
		else 
        select group_concat(concat(e.FIRST_NAME) separator ',')into emp_list ## Here we have used group concat
        from employees e  
        join departments  d on d.DEPARTMENT_ID = e.DEPARTMENT_ID 
        join locations  l on l.LOCATION_ID=d.LOCATION_ID where l.city=city_ ;
        return   emp_list;

end if;
end ;;
$$ delimiter ;

drop function get_emp_list;
select get_emp_list('seattle');

## Q) find avg salary using department id

delimiter $$
CREATE FUNCTION get_avg_sal_using_dep_id (dep_id int) 
returns varchar(2000)
deterministic 
begin
		declare avg_salary decimal(10,3);
        
        select avg (salary) into avg_salary 
        from employees 
        where dep_id=DEPARTMENT_ID GROUP BY DEPARTMENT_ID ;
        return   avg_salary;


end ;;
$$ delimiter ;
drop function get_avg_sal_using_dep_id;
select get_avg_sal_using_dep_id(50);

####################################### stored PROCEDURE ########################

## ex) print employees details using perocedure
delimiter $$
CREATE procedure get_emp_details() 
begin
		select * from employees;
end ;;
$$ delimiter ;

call get_emp_details; # We has to use call for printing the procedure.

## Q)make a prcedure to add vallues from departments table
delimiter $$
create procedure details_of_departments()
begin
	select * from departments;  ## no need for deterministic , declare for procedure.

end;;
$$ delimiter ;

call details_of_departments;

## Q) find values from 2 tables
delimiter $$
create procedure details_of_dept_emp()
begin
	select e.FIRST_NAME,e.LAST_NAME,d.DEPARTMENT_ID,d.DEPARTMENT_NAME from employees e
    join departments d on d.DEPARTMENT_ID=e.DEPARTMENT_ID;

end;;
$$ delimiter ;

call details_of_dept_emp;

## Q) find the employee details using the employee id
delimiter $$
CREATE procedure get_emp_details_all(in emp_id int) 
begin
		select * from employees where EMPLOYEE_ID = emp_id;
end ;;
$$ delimiter ;

call get_emp_details_all(100);

## Q) update emp_id ki salary using procedure
delimiter $$
create PROCEDURE update_sal_using_emp_id (in emp_id int , in sal decimal(10,3))
begin
		update employees set salary= sal where EMPLOYEE_ID=emp_id;
end ;;
$$ delimiter ;

call update_sal_using_emp_id(101,7456);
select * from employees;

## Q) create a dummy table studennts1 with 3 arributes and write a procedure to insert th value in the table
create table studennts6 (stu_id int, s_name varchar(20), roll_no int);

delimiter $$
create PROCEDURE insert_students6_values (in sstu_id int , in ss_name varchar(20), in rroll_no int )
begin
		insert into studennts6 values( sstu_id , ss_name   ,rroll_no);
end ;;
$$ delimiter ;

call insert_students6_values(1, 'vij',21);
call insert_students6_values(2, 'vija',22);
call insert_students6_values(3, 'vijay',23);
call insert_students6_values(4, 'vijayr',24);


drop procedure insert_students6_values;
select * from studennts6;

## Q) Find emp_name, salary,dep_name, ---output,, by using emp_id
delimiter $$
create PROCEDURE Find_name_sal_dep (in emp_id int , out full_name VARCHAR(50), out sal decimal(10,3), out dep VARchar(50)) #here we have to take in = input and out = output
begin
		select concat(e.FIRST_NAME,' ',e.LAST_NAME), e.SALARY,d.DEPARTMENT_NAME into full_name,sal,dep from employees e ##We should right the output values here 
        join DEPARTMENts d on e.DEPARTMENT_ID=d.DEPARTMENT_ID 
        where e.EMPLOYEE_ID=emp_id; # we should right input values after "where"
end ;;
$$ delimiter ;


select * from employees;
drop procedure Find_name_sal_dep;

call Find_name_sal_dep(102,@full_name, @sal,@dep);
select @full_name as emp_name,@sal as salary,@dep as department_name;

## Q) Write a query to find cities department name on the basis of department_id

delimiter $$
create PROCEDURE Find_city_name_dep (in dep_id int , out cities VARCHAR(50),  out dep VARchar(50)) #here we have to take in = input and out = output
begin
		select  l.city ,d.DEPARTMENT_NAME into cities,dep from departments d ##We should right the output values here 
        join locations l on d.LOCATION_ID = l.LOCATION_ID 
        where d.DEPARTMENT_ID=dep_id; # we should right input values after "where"
end ;;
$$ delimiter ;


drop procedure Find_city_name_dep;

call Find_city_name_dep(90,@cities,@dep);
select @cities as c,@dep as d ;

## Q) using inout query find the empid,full_name,dep_name
delimiter $$
create PROCEDURE emp_dep_inout (inout emp_id int , out full_name VARCHAR(50),  out dep VARchar(50)) #here we have to take in = input and out = output
begin
		select concat(FIRST_NAME,' ', LAST_NAME),DEPARTMENT_ID into full_name,dep
        from employees where EMPLOYEE_ID=emp_id; # we should right input values after "where"
end ;;
$$ delimiter ;

set @emp_id = 102; # We have to set the "inout" function first
call emp_dep_inout(@emp_id,@full_name,@dep);
select @emp_id,@full_name,@dep;


## Q) Write a procedure to perform joints on employees ,departments  table where
# input will be given through department_id and the procedure will return total salary of an employee in a department and no of employees in the department
 delimiter $$
create PROCEDURE Find_otal_sal_and_count_dep (inout dep_id int , out tot_sal decimal(10,3),  out c_emp int) #here we have to take in = input and out = output
begin
		select sum(e.salary) , count(*) into tot_sal,c_emp from employees e ##We should right the output values here 
        join departments d on d.DEPARTMENT_ID = e.DEPARTMENT_ID 
        where d.DEPARTMENT_ID= dep_id 
        GROUP BY d.DEPARTMENT_ID; # we should right input values after "where"

end ;;
$$ delimiter ;

set @dep_id = 60;
call Find_otal_sal_and_count_dep(@dep_id,@total_sum,@num_emp);
select @dep_id,@total_sum,@num_emp;


## IN : 1)it is used to pass parameters into the stored procedure
	#	2) Takes input	
#		3) It is used to pass values for the conditions(stored procedure)
# 		4) It is of read on type , where value cannot be changed inside the procedure

## out: 1)It i used to return value from the procedure
#		2)This gives output
#		3)It is used when we want to return some value.
#		

## InOut :1) It is used to pass value and return an updated value or the value can be shown.
#		  2) This takes input and given output as well
#.        3) It is used to pass the value and modify or return the value.


####################################### TRIGGERS ########################

####################################### BEFORE TRIGGERS ########################

CREATE TABLE salary_history (
    emp_id INT,
    first_name VARCHAR(50),
    old_salary DECIMAL(10, 2),
    new_salary DECIMAL(10, 2),
    department_id INT
);

CREATE TABLE employee (
  employee_id INT,
  name VARCHAR(50),
  salary FLOAT,
  department_id INT
);

INSERT INTO employee (employee_id, name, salary, department_id)
VALUES
  (1, 'John Smith', 50000.0, 101),
  (2, 'Jane Doe', 60000.0, 102),
  (3, 'Bob Johnson', 55000.0, 101),
  (4, 'Mary Brown', 65000.0, 103),
  (5, 'Tom Davis', 70000.0, 102);


select * from employee;
select * from salary_history;
desc employee;

## Before Trigger hits before inserting the data
delimiter $$
create trigger before_insr_into_emp 
before insert on employee
for each row 
begin
		-- new value === this takes new VALUES
        -- old == this takes old values in the table
        if new.salary is null then
			set new.salary = 15000;
		end if;
end ;;
$$ delimiter ;

insert into employee  (employee_id, name, department_id) values (6, 'Karan sharma',120);
insert into employee  values (7, 'vihan mehra',null,130); #default works the same


delimiter $$
create trigger before_insert_in_emp 
before insert on employee
for each row
begin
		if new.department_id is null then
			set new.department_id = 115;
		end if;
end;;
$$ delimiter ;

insert into employee values (8,'Tarun verma', null,null);

## old table on email set error 
delimiter $$
create trigger before_insert_in_email 
before insert on employees
for each row
begin
		if new.email  not like '%@%' then #used fir checking the letter in a row
			signal sqlstate '45000' # used fro showing the trigger
				set message_text = 'Invalid email type'; #setting the error
		end if;
end;;
$$ delimiter ;

## Error is invalid email type
INSERT INTO `employees` (`EMPLOYEE_ID`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE_NUMBER`, `HIRE_DATE`, `JOB_ID`, `SALARY`, `COMMISSION_PCT`, `MANAGER_ID`, `DEPARTMENT_ID`) VALUES
('234', 'viraj', 'sharma', 'raje ', '515.173.4567', '1987-06-15', 'AD_PRES', '24000.00', '0.00', '0', '90');


INSERT INTO `employees` (`EMPLOYEE_ID`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE_NUMBER`, `HIRE_DATE`, `JOB_ID`, `SALARY`, `COMMISSION_PCT`, `MANAGER_ID`, `DEPARTMENT_ID`) VALUES
('234', 'viraj', 'sharma', 'raje@gmail ', '515.173.4567', '1987-06-15', 'AD_PRES', '24000.00', '0.00', '0', '90');
select * from employees;

## no negative salary
delimiter $$
create trigger before_insert_in_neg_sal 
before insert on employees
for each row
begin
		if new.salary <0 then #used fir checking the letter in a row
			signal sqlstate '45000' # used fro showing the trigger
				set message_text = 'Cannot inserttt the salary'; #setting the error
		end if;
end;;
$$ delimiter ;

#error will shoe as Cannot inserttt the salary.
INSERT INTO `employees` (`EMPLOYEE_ID`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE_NUMBER`, `HIRE_DATE`, `JOB_ID`, `SALARY`, `COMMISSION_PCT`, `MANAGER_ID`, `DEPARTMENT_ID`) VALUES
('235', 'virajam', 'sharmaji', 'raje@gmail ', '515.173.4567', '1987-06-15', 'AD_PRES', '-24000.00', '0.00', '0', '90');

show triggers;

# no null value for first_name
delimiter $$
create trigger before_insert_in_null_f_name 
before insert on employees
for each row
begin
		if new.FIRST_NAME is null then #used fir checking the letter in a row
			signal sqlstate '45000' # used fro showing the trigger
				set message_text = 'FIRST_NAME ccanottt be null'; #setting the error
		end if;
end;;
$$ delimiter ;

# error
INSERT INTO `employees` (`EMPLOYEE_ID`, `FIRST_NAME`, `LAST_NAME`, `EMAIL`, `PHONE_NUMBER`, `HIRE_DATE`, `JOB_ID`, `SALARY`, `COMMISSION_PCT`, `MANAGER_ID`, `DEPARTMENT_ID`) VALUES
('235', null, 'sharmaji', 'raje@gmail ', '515.173.4567', '1987-06-15', 'AD_PRES', '24000.00', '0.00', '0', '90');

####################################### after TRIGGERS ########################

#after insert into the table
/*delimiter $$
create trigger after_inserting_into_table
after insert on employee
for each row
when (new.salary<> old.salary)
begin 
		insert into salary_history(EMPLOYEE_ID,FIRST_NAME,old_salary,new_salary,DEPARTMENT_ID)
        values (old.EMPLOYEE_ID,old.FIRST_NAME,old.old_salary,new.new_salary,old.DEPARTMENT_ID);
end;;
$$ delimiter ;*/ #it gives the error

-- Create a logging table to store the messages
CREATE TABLE employee_log (
    log_id INT AUTO_INCREMENT PRIMARY KEY,
    log_message VARCHAR(255),
    log_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


-- Create the trigger to log messages after employee insertions
DELIMITER $$


CREATE TRIGGER after_employee_insert
AFTER INSERT ON employee
FOR EACH ROW
BEGIN
    -- Insert the message into the logging table
    INSERT INTO employee_log (log_message)
    VALUES (CONCAT('A new employee has been inserted with ID: ', NEW.employee_id));
END;
$$
DELIMITER ;


INSERT INTO employee (employee_id, name, salary)
VALUES (10, 'John Doe', 50000.00);


select * from employee;
select * from employee_log;

####################################### before delete TRIGGERS ########################
select * from employee;
DELIMITER $$
CREATE TRIGGER trg_employee_delete1
BEFORE DELETE ON employee
FOR EACH ROW
BEGIN
    IF (SELECT COUNT(*) FROM employee WHERE department_id = OLD.department_id) < 2
    then
       signal sqlstate '45000' set message_text='cannot delete';
    END if;
END;;
$$ DELIMITER ;


DELETE FROM employee WHERE employee_id = 1; #here trigger is exicuted

DELETE FROM employee WHERE employee_id = 4;#here trigger is working

—-
DELIMITER $$
CREATE TRIGGER before_employe_delete
BEFORE DELETE ON employees
FOR EACH ROW
BEGIN
    -- cancel the delete operation if the employee has been with the company for more than 10 years
    IF DATEDIFF(NOW(), OLD.hire_date) > 3650 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Cannot delete employee - has been with company for more than 10 years';
    END IF;
END;
$$ DELIMITER ;


delete from employees where employee_id = 234; #trigger is working

DELIMITER $$

CREATE TRIGGER after_salary_update1
AFTER UPDATE ON employee
FOR EACH ROW
BEGIN
    
    IF NEW.SALARY <> OLD.SALARY THEN
        INSERT INTO salary_history (emp_id, first_name, old_salary, new_salary, department_id)
        VALUES (OLD.EMPLOYEE_ID, OLD.NAME, OLD.SALARY, NEW.SALARY, OLD.DEPARTMENT_ID);
    END IF;
END;; $$

DELIMITER ;
select * from employee;

update employee set salary=500000 where employee_id = 7;
select * from salary_history;

DELIMITER $$

CREATE TRIGGER after_salary_update_B
BEFORE UPDATE ON employee
FOR EACH ROW
BEGIN
    IF  NEW.SALARY<OLD.SALARY THEN
          SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'CANNOT degrade the employee salary';
    END IF;
END $$

DELIMITER ;

update employee set salary=1000 where employee_id=7;
use hr;
################################### ################################### ################################### ################################### 
################################### ################################### ################################### ################################### 
################################### ################################### ################################### ################################### 

# DATE OF STUDING IS 16/09/2024

################################### VIEWS ###################################

### simple view for full name and department_id
create view select_emp_name_and_dept as 
	select concat(FIRST_name,' ', LAST_NAME) as emp_full_name, DEPARTMENT_ID from employees;

select * from select_emp_name_and_dept;

## view using condition
create view select_emp_sal_get_500_dept as
	SELECT concat(FIRST_name,' ', LAST_NAME) as emp_full_name, DEPARTMENT_ID ,salary from employees where DEPARTMENT_ID in (90,50,100,0,10) and salary>500;

select * from select_emp_sal_get_500_dept;

select DEPARTMENT_ID,salary from select_emp_sal_get_500_dept;

## view using join
create view select_emp_sal_dep_name as
	select concat(e.FIRST_name,' ', e.LAST_NAME) as emp_full_name,e.DEPARTMENT_ID ,e.salary,d.department_name from employees e
    join departments d on e.DEPARTMENT_ID = d.DEPARTMENT_ID ;
    
select * from select_emp_sal_dep_name;

## View using subquery
create view emp_high_sal_using_sub_query as
	select concat(FIRST_name,' ', LAST_NAME) as emp_full_name ,salary from employees where salary =
		(select max(salary) from employees);
        
select * from emp_high_sal_using_sub_query; # view always gives you the updated value in any scenareo.

## Update on employees table and change the salary of employees_id 100 to 90000
update employees set salary = 90000 where employee_id = 100;

## UPDATEing the view

select * from select_emp_name_and_dept;

#update the above view using uddate statement
update select_emp_name_and_dept set DEPARTMENT_ID=300 where emp_full_name='steven king';


select * from employees;# When we update the view the values get changed in the main table also.
 
### Creating view using view
create VIEW view_using_view as
	select DEPARTMENT_ID, count(*) as number_employee from employees group by DEPARTMENT_ID;
    
select * from view_using_view;

update view_using_view set number_employee = 10 where department_id =0; ## error cannot update 

# There are 2 types of views updatable and unupdatable 
## updatable = havig  group by,  distinct, union or an aggregate function cannot include this . Here we can [erform insert,update, delete operation
## unupdatable = It contais joins,aggregate function , distinct are non updatable view, which means through views. This kind of views are usually used for retreval of data.ALTER

##-- alter a view..

create view select_emp_name_and_dept as 
	select concat(FIRST_name,' ', LAST_NAME) as emp_full_name, DEPARTMENT_ID from employees;


alter view select_emp_name_and_dept as ## using alter command to adding attributes
	select concat(FIRST_name,' ', LAST_NAME) as emp_full_name, DEPARTMENT_ID , salary,job_id from employees;
    
select * from select_emp_name_and_dept;## shows 4 columns

## alter using condition
alter view select_emp_name_and_dept as
	SELECT concat(FIRST_name,' ', LAST_NAME) as emp_full_name, DEPARTMENT_ID , salary,job_id from employees where salary>5000;
    
    select * from select_emp_name_and_dept;


alter view select_emp_name_and_dept as 
	select * from select_emp_name_and_dept where salary > 10000; #error logical structure which cannot be run
    
    
alter view sddd as 
	select * from select_emp_name_and_dept where salary > 10000;
	
create view sddd as
	select * from employee;
    
select * from sddd;


## creating new view using view 
create view new_view_using_view as 
	select   emp_full_name, DEPARTMENT_ID , job_id from select_emp_name_and_dept; 

select * from new_view_using_view;

alter view new_view_using_view as
	select emp_full_name, DEPARTMENT_ID , job_id from select_emp_name_and_dept where job_id = 'ad_pres';
    
select * from new_view_using_view;


################################### Data Control Language ###################################

create user 'oct15@locahost' IDENTIFIED by 'cdac';
CREATE user 'nov2@localhost' IDENTIFIED by 'cdac';
create user 'aug3'@'localhost' identified by 'cdac';
create user 'vijay'@'localhost' IDENTIFIED by 'cdac';
## check list of user
select user, host from mysql.user;

create user 'hr@localhost' identified by 'cdac';

## granting the permisssions to user1 for database hr
grant all privileges on HR.* to 'mysql.session'@'localhost';

## grant SELECTive privilages to the user 
grant select on HR.* to  'mysql.sys'@'localhost';

## grant for perticular table in database 
grant select on hr.job_history to 'mysql.sys'@'localhost';

## show grants 
show grants for 'mysql.sys'@'localhost';

## grant the permission to select all the tables in all the database that is present in mysql
grant select on *.* to 'mysql.sys'@'localhost';

## remove the permissions
flush PRIVILEGES ; ## used for all the users 

## revoke 
REVOKE select on *.* from  'mysql.sys'@'localhost'; #used for perticular users.

## drop a user 
drop user 'mysql.sys'@'localhost' ;

select user, host from mysql.user ; 

create user 'aug3'@'localhost' identified by 'cdac';
create user 'vijay'@'localhost' IDENTIFIED by 'cdac';

grant select on *.* to 'vijay'@'localhost';
grant all privileges on HR.* to 'vijay'@'localhost';
grant all privileges on HR.* to 'aug3'@'localhost';

use hr;

-- Create the 'accounts' table
CREATE TABLE accounts (
    account_id INT PRIMARY KEY,
    account_name VARCHAR(255),
    balance DECIMAL(10, 2)
);

-- Insert sample data
INSERT INTO accounts (account_id, account_name, balance) VALUES
(1, 'Aman', 1000.00),
(2, 'Ketan', 500.00);

select * from accounts;

## starting the transaction
start TRANSACTION;
use hr;
####################################### indexes ########################
select * from employees where employee_id = 201;

explain select * from employees where employee_id = 201;

explain select * from employees where employee_id = 100;

explain select * from employees where employee_id = 114;

explain select * from employees where department_id = 50;

select * from accounts where account_id =1;

explain SELECT * from accounts where account_id=1;

create index idx_dept on employees (department_id);

show index from employees;

use hr;

desc employee_1;

explain select * from employee_1 where department_id = 20;
explain select * from employees where employee_id = 103;

create index idx_dept on employee_1(department_id);
show index from employee_1;

explain select * from employee_1 where employee_id = 16;
create index idx_emp_id on employee_1 (employee_id);

create table vimal(id int,fname VARchar(20) , PRIMARY KEY (id), index index_manager (fname) using HASH);
desc vimal;
show index from vimal;














