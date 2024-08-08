USE pruebaEficacia;  

-- TB_CONTRACT   
CREATE TABLE  TB_CONTRACT (  
    NUMBER_ID INT,  
    CONTRACT_ID INT,  
    FECHA_INI DATE,  
    ENTITY INT  
);  

INSERT INTO TB_CONTRACT (NUMBER_ID, CONTRACT_ID, FECHA_INI, ENTITY) VALUES  
(25284837, 763174, '2010-08-13', 101),  
(31197328, 763214, '2005-01-25', 101),  
(59823192, 763194, '1995-09-22', 102),  
(66715537, 763255, '2012-07-03', 102),  
(66776638, 763254, '2007-01-16', 103),  
(79783932, 763256, '2002-10-11', 103);  

-- TB_ENTITY   
CREATE TABLE TB_ENTITY (  
    ENTITY INT,  
    NAME VARCHAR(50),  
    NUMBER_FISCAL INT  
);  

INSERT INTO TB_ENTITY (ENTITY, NAME, NUMBER_FISCAL) VALUES  
(101, 'CLIENTE 1', 500088333),  
(102, 'CLIENTE 2', 600963080),  
(103, 'CLIENTE 3', 701117422);  

-- TB_SALARIOS   
CREATE TABLE TB_SALARIOS (  
    CONTRACT_ID INT,  
    SALARIO DECIMAL(10, 2)  
);  

INSERT INTO TB_SALARIOS (CONTRACT_ID, SALARIO) VALUES (763174, 2890616);  
INSERT INTO TB_SALARIOS (CONTRACT_ID, SALARIO) VALUES (763174, 2792866);  
INSERT INTO TB_SALARIOS (CONTRACT_ID, SALARIO) VALUES (763174, 2634779);  
INSERT INTO TB_SALARIOS (CONTRACT_ID, SALARIO) VALUES (763174, 2485141);  
INSERT INTO TB_SALARIOS (CONTRACT_ID, SALARIO) VALUES (763174, 2347159);  
INSERT INTO TB_SALARIOS (CONTRACT_ID, SALARIO) VALUES (763174, 2193607);  
INSERT INTO TB_SALARIOS (CONTRACT_ID, SALARIO) VALUES (763174, 2050100);  
INSERT INTO TB_SALARIOS (CONTRACT_ID, SALARIO) VALUES (763214, 6344000);  
INSERT INTO TB_SALARIOS (CONTRACT_ID, SALARIO) VALUES (763214, 5568706);  
INSERT INTO TB_SALARIOS (CONTRACT_ID, SALARIO) VALUES (763214, 4956128);  
INSERT INTO TB_SALARIOS (CONTRACT_ID, SALARIO) VALUES (763214, 4680000);  
INSERT INTO TB_SALARIOS (CONTRACT_ID, SALARIO) VALUES (763214, 3254077);  
INSERT INTO TB_SALARIOS (CONTRACT_ID, SALARIO) VALUES (763214, 2842700);

-- TB_IDENTITY  
DROP TABLE IF EXISTS TB_IDENTITY; -- Aqu� el drop debe estar en una l�nea separada  
CREATE TABLE TB_IDENTITY (  
    NUMBER_ID INT,  
    LAST_NAME1 VARCHAR(50),  
    LAST_NAME2 VARCHAR(50),  
    FIRST_NAME VARCHAR(50),  
    OTHERS_NAME VARCHAR(50),  
    BIRTH_DATE DATE,  
    CELL_PHONES VARCHAR(50),  
    ADDRESS VARCHAR(100),  
    PERSONAL_MAIL VARCHAR(100)  
);  

INSERT INTO TB_IDENTITY (NUMBER_ID, LAST_NAME1, LAST_NAME2, FIRST_NAME, OTHERS_NAME, BIRTH_DATE, CELL_PHONES, ADDRESS, PERSONAL_MAIL) VALUES  
(25284837, 'FIGUEROA', 'RIOS', 'NOMBRE1', 'TITULO1', '1978-12-13', 'CR 630 #31-45', 'INDEFINIDO', 'figueroa@gmail.com'),  
(31197328, 'GUERRERO', 'APELLIDO2', 'TITULO2', 'NOMBRE2', '1979-12-13', 'CAL NUEVA GRANADA', 'INDEFINIDO', 'guerrero@yahoo.com'),  
(66715537, 'FOSSU', 'APELLIDO3', 'AMIGO1', 'COMPANERO2', '1980-12-13', '322056', 'INDEFINIDO', 'fossu@aol.com'),  
(66776638, 'MEDINA', 'APELLIDO4', 'PARENTES2', 'PARENTES2', '1981-12-13', '322056', 'INDEFINIDO', 'medina@gmail.com');  

-- Tabla TB_CYCLE_VACATION   
CREATE TABLE TB_CYCLE_VACATION (  
    CONTRACT_ID INT,  
    CYCLE_VACATION INT,  
    DAY_CYCLE INT,  
    START_DATE_CYCLE DATE,  
    END_DATE_CYCLE DATE  
);  

INSERT INTO TB_CYCLE_VACATION (CONTRACT_ID, CYCLE_VACATION, DAY_CYCLE, START_DATE_CYCLE, END_DATE_CYCLE) VALUES  
(1196989, 20162017, 15, '2016-12-05', '2017-04-12'),  
(1196989, 20172018, 15, '2017-12-05', '2018-04-12'),  
(1196989, 20182019, 15, '2018-12-05', '2019-04-12');  

-- TB_COMPENSATION   
CREATE TABLE TB_COMPENSATION (  
    CONTRACT_ID INT,  
    SALARIO DECIMAL(10, 2)  
);  

INSERT INTO TB_COMPENSATION (CONTRACT_ID, SALARIO) VALUES  
(763174, 2890.62),  
(763174, 2792.87),  
(763174, 2634.78),  
(763174, 2485.64),  
(763174, 2347.15),  
(763174, 2193.60),  
(763174, 2050.10),  
(763214, 6344.01),  
(763214, 5568.79),  
(763214, 4956.12),  
(763214, 4680.07),  
(763214, 3254.60),  
(763214, 3410.00);  

-- Consultas para verificar  
SELECT * FROM dbo.TB_CONTRACT;  
SELECT * FROM dbo.TB_ENTITY;  
SELECT * FROM dbo.TB_SALARIOS;  
SELECT * FROM dbo.TB_IDENTITY;  
SELECT * FROM dbo.TB_CYCLE_VACATION;  
SELECT * FROM dbo.TB_COMPENSATION;