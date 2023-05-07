-- CUSTOMER ----------------------- DONE SEHAR
CREATE TABLE customer 
(
    custId INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL
);

ALTER TABLE customer
    ADD (
        city VARCHAR(20) NOT NULL,
        postalCode VARCHAR(10) NOT NULL
    );

-- INVOICE ----------------------- DONE UMESH
CREATE TABLE invoice 
(
    invoiceId INT PRIMARY KEY
);

-- EQUIPMENT ----------------------- DONE FROSTY
CREATE TABLE equipment 
(
    equipId INT PRIMARY KEY
);

-- SERVICE ----------------------- DONE IDRISS
CREATE TABLE service 
(
    serviceCode VARCHAR(3) PRIMARY KEY,
    description VARCHAR(45) NOT NULL,
    chargePerHour NUMBER(5,2) NOT NULL
);

-- TEAM ----------------------- DONE FROSTY
CREATE TABLE team 
(
    teamId INT PRIMARY KEY
);

ALTER TABLE team
    ADD description VARCHAR(150) NOT NULL;

-- POSITIONS ----------------------- DONE FROSTY
CREATE TABLE positions 
(
    positionId INT PRIMARY KEY
);

ALTER TABLE positions
    ADD name VARCHAR(50) NOT NULL;

-- EMPLOYEE ----------------------- DONE DANISH
CREATE TABLE employee 
(
    employeeId INT PRIMARY KEY
);

ALTER TABLE employee
    ADD (
    name VARCHAR(50) NOT NULL,
    positionId INT NOT NULL,
    OHIP NUMBER(9) NOT NULL,
    phone NUMBER(10) NOT NULL,
    startDate DATE NOT NULL,
    CONSTRAINT position_FK FOREIGN KEY (positionId) REFERENCES positions(positionId),
    CONSTRAINT phone_FK CHECK (phone BETWEEN 2000000000 AND 9999999999)
);

-- SKILLS ----------------------- DONE FROSTY
CREATE TABLE skills 
(
    skillId INT PRIMARY KEY,
    name VARCHAR(35) NOT NULL
);

-- PRODUCT ----------------------- DONE IDRISS
CREATE TABLE product 
(
    prodId INT PRIMARY KEY
);

-- PRODUCT CLASS ----------------------- DONE IDRISS
CREATE TABLE product_class 
(
    prodClass VARCHAR(2) PRIMARY KEY
);

-- EMPLOYEE TEAM ----------------------- DONE DANISH
CREATE TABLE employeeTeam (
    employeeId INT,
    teamId INT,
    CONSTRAINT employee_FK FOREIGN KEY (employeeId) REFERENCES employee(employeeId),
    CONSTRAINT team_FK FOREIGN KEY (teamId) REFERENCES team(teamId),
    CONSTRAINT team_PK PRIMARY KEY (employeeId, teamId)
);

-- EMPLOYEE SKILL ----------------------- DONE SEHAR
CREATE TABLE employeeSkill (
    skillId INT,
    employeeId INT
);

ALTER TABLE employeeSkill
    ADD (
        CONSTRAINT skill_FK FOREIGN KEY (skillId) REFERENCES skills(skillId),
        CONSTRAINT employee_FK FOREIGN KEY (employeeId) REFERENCES employee(employeeId),
        CONSTRAINT emp_skill_PK PRIMARY KEY (skillId, employeeId)
    );

-- EQUIP AND INVOICE ----------------------- DONE SEHAR
CREATE TABLE equip_and_invoice (
    equipId INT,
    invoiceId INT
);

ALTER TABLE equip_and_invoice
    ADD CONSTRAINT equip_inv_PK PRIMARY KEY (equipId, invoiceId);

-- SERVICE AND INVOICE ----------------------- DONE UMESH
CREATE TABLE service_and_invoice (
    serviceCode VARCHAR(2),
    invoiceId INT
);

ALTER TABLE service_and_invoice
    ADD CONSTRAINT service_inv_PK PRIMARY KEY (serviceCode, invoiceId);

-- PRODUCTSALE ----------------------- DONE UMESH
CREATE TABLE productSale (
    invoiceId INT,
    prodId INT
);

ALTER TABLE productSale
    ADD CONSTRAINT productSale_PK PRIMARY KEY (invoiceId, prodId);

-- INVENTORY ----------------------- DONE DANISH
CREATE TABLE inventory (
    prodId INT,
    aisleNo INT,
    quantity INT NOT NULL,
    supplier VARCHAR(100) NOT NULL,
    CONSTRAINT prodId_FK FOREIGN KEY (prodId) REFERENCES product(prodId),
    CONSTRAINT inv_PK PRIMARY KEY (prodId, aisleNo)
);







-- MY WORK =========================


-- EMPLOYEE ----------------------- DONE DANISH
CREATE TABLE employee 
(
    employeeId INT PRIMARY KEY
);

ALTER TABLE employee
    ADD (
    name VARCHAR(50) NOT NULL,
    positionId INT NOT NULL,
    OHIP NUMBER(9) NOT NULL,
    phone NUMBER(10) NOT NULL,
    startDate DATE NOT NULL,
    CONSTRAINT position_FK FOREIGN KEY (positionId) REFERENCES positions(positionId),
    CONSTRAINT phone_FK CHECK (phone BETWEEN 2000000000 AND 9999999999)
);

-- INVENTORY ----------------------- DONE DANISH
CREATE TABLE inventory (
    prodId INT,
    aisleNo INT,
    quantity INT NOT NULL,
    supplier VARCHAR(100) NOT NULL,
    CONSTRAINT prodId_FK FOREIGN KEY (prodId) REFERENCES product(prodId),
    CONSTRAINT inv_PK PRIMARY KEY (prodId, aisleNo)
);

-- EMPLOYEE TEAM ----------------------- DONE DANISH
CREATE TABLE employeeTeam (
    employeeId INT,
    teamId INT,
    CONSTRAINT employee_FK FOREIGN KEY (employeeId) REFERENCES employee(employeeId),
    CONSTRAINT team_FK FOREIGN KEY (teamId) REFERENCES team(teamId),
    CONSTRAINT team_PK PRIMARY KEY (employeeId, teamId)
);

-- PERMISSIONS -----------------------
GRANT READ, SELECT, ALTER, INSERT, UPDATE ON skills TO dbs211_212b18, dbs211_212b05, dbs211_212b36, dbs211_212b25;
GRANT READ, SELECT, ALTER, INSERT, UPDATE ON employee TO dbs211_212b18, dbs211_212b05, dbs211_212b36, dbs211_212b25;
GRANT READ, SELECT, ALTER, INSERT, UPDATE ON customer TO dbs211_212b18, dbs211_212b05, dbs211_212b36, dbs211_212b25;
GRANT READ, SELECT, ALTER, INSERT, UPDATE ON equipment TO dbs211_212b18, dbs211_212b05, dbs211_212b36, dbs211_212b25;
GRANT READ, SELECT, ALTER, INSERT, UPDATE ON invoice TO dbs211_212b18, dbs211_212b05, dbs211_212b36, dbs211_212b25;
GRANT READ, SELECT, ALTER, INSERT, UPDATE ON positions TO dbs211_212b18, dbs211_212b05, dbs211_212b36, dbs211_212b25;
GRANT READ, SELECT, ALTER, INSERT, UPDATE ON product TO dbs211_212b18, dbs211_212b05, dbs211_212b36, dbs211_212b25;
GRANT READ, SELECT, ALTER, INSERT, UPDATE ON product_class TO dbs211_212b18, dbs211_212b05, dbs211_212b36, dbs211_212b25;
GRANT READ, SELECT, ALTER, INSERT, UPDATE ON service TO dbs211_212b18, dbs211_212b05, dbs211_212b36, dbs211_212b25;
GRANT READ, SELECT, ALTER, INSERT, UPDATE ON team TO dbs211_212b18, dbs211_212b05, dbs211_212b36, dbs211_212b25;
GRANT READ, SELECT, ALTER, INSERT, UPDATE ON employeeTeam TO dbs211_212b18, dbs211_212b05, dbs211_212b36, dbs211_212b25;
GRANT READ, SELECT, ALTER, INSERT, UPDATE ON employeeSkill TO dbs211_212b18, dbs211_212b05, dbs211_212b36, dbs211_212b25;
GRANT READ, SELECT, ALTER, INSERT, UPDATE ON equip_and_invoice TO dbs211_212b18, dbs211_212b05, dbs211_212b36, dbs211_212b25;
GRANT READ, SELECT, ALTER, INSERT, UPDATE ON service_and_invoice TO dbs211_212b18, dbs211_212b05, dbs211_212b36, dbs211_212b25;
GRANT READ, SELECT, ALTER, INSERT, UPDATE ON productSale TO dbs211_212b18, dbs211_212b05, dbs211_212b36, dbs211_212b25;
GRANT READ, SELECT, ALTER, INSERT, UPDATE ON inventory TO dbs211_212b18, dbs211_212b05, dbs211_212b36, dbs211_212b25;
