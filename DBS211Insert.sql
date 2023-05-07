SET AUTOCOMMIT ON;

-- CUSTOMER -------------- DONE SEHAR
INSERT ALL
    INTO customer VALUES (56, 'John Adams', '234 Bloor W', 'Toronto', 'M2S 4S3')
    INTO customer VALUES (34, 'Ashley Riley', '156 Avindale Cresc', 'Toronto', 'M4T 4R7')
    INTO customer VALUES (27, 'Son Goku', '439 East District', 'Jiangsu', '58N 018')
    SELECT * FROM dual;

-- EMPLOYEE -------------- DONE DANISH
INSERT ALL
    INTO employee VALUES (120, 'Cindy Lee', 1, 219032002, 9053381234, TO_DATE('01-01-1998', 'dd-mm-yyyy'))
    INTO employee VALUES (124, 'Maria Wong', 2, 43524532, 9053245673, TO_DATE('23-08-1998', 'dd-mm-yyyy'))
    INTO employee VALUES (111, 'Son Gohan', 1, 123789456, 9052221111, TO_DATE('02-04-2000', 'dd-mm-yyyy'))
    SELECT * FROM dual;
    
-- POSITIONS --------------- DONE FROSTY
INSERT ALL
    INTO positions VALUES (1, 'Supervisor')
    INTO positions VALUES (2, 'Lawn Care')
    SELECT * FROM dual;
    
-- SKILLS ---------------- DONE FROSTY
INSERT ALL 
    INTO skills VALUES (1, 'Electrical')
    INTO skills VALUES (2, 'Plumbing')
    INTO skills VALUES (3, 'General Contractor')
    INTO skills VALUES (4, 'Irrigation')
    INTO skills VALUES (5, 'Pruning')
    SELECT * FROM dual;
    
-- EMPLOYEE SKILL ---------------- DONE SEHAR
INSERT ALL
    INTO employeeSkill VALUES (1, 120)
    INTO employeeSkill VALUES (1, 124)
    INTO employeeSkill VALUES (3, 111)
    INTO employeeSkill VALUES (2, 111)
    INTO employeeSkill VALUES (5, 124)
    SELECT * FROM dual;
    
-- TEAM ------------------ DONE FROSTY
INSERT ALL
    INTO team VALUES (1, 'General Contracting')
    INTO team VALUES (2,'Pruning and Planting')
    INTO team VALUES (3,'General Maintenance')
    SELECT * FROM dual;
    
-- EMPLOYEE TEAM-------------- DONE DANISH
INSERT ALL 
    INTO employeeTeam VALUES (111, 3)
    INTO employeeTeam VALUES (124, 2)
    INTO employeeTeam VALUES (120, 1)
    SELECT * FROM dual;
    
-- EQUIPMENT -------------- DONE FROSTY
INSERT ALL
    INTO equipment VALUES (1, '20 hp John Deer tractor/mower')
    INTO equipment VALUES (2, '10" tree pruning shears')
    INTO equipment VALUES (3, '2 hp Johnson grass trimmer')
    INTO equipment VALUES (4, 'Haggmann garden-tiller')
    SELECT * FROM dual;
    
-- INVOICE ------------------ DONE UMESH
INSERT ALL
    INTO invoice (invoiceId, invoiceDate, teamId, custId, employeeId) 
        VALUES (1355, TO_DATE('05-07-2002', 'dd-mm-yyyy'), 2, 56, NULL)
    INTO invoice (invoiceId, invoiceDate, teamId, custId, employeeId) 
        VALUES (1412, TO_DATE('19-07-2002', 'dd-mm-yyyy'), 3, 34, NULL)
    INTO invoice (invoiceId, invoiceDate, teamId, custId, employeeId) 
        VALUES (1405, TO_DATE('06-07-2002', 'dd-mm-yyyy'), NULL, 56, 111)
    SELECT * FROM dual;
    
-- EQUIP AND INVOICE ---------------- DONE SEHAR
INSERT ALL
    INTO equip_and_invoice VALUES (1, 1355)
    INTO equip_and_invoice VALUES (2, 1355)
    INTO equip_and_invoice VALUES (4, 1412)
    SELECT * FROM dual;
    
-- SERVICE -------------------- DONE IDRISS
INSERT ALL
    INTO service VALUES ('LC', 'Lawn Cutt', 25.00)
    INTO service VALUES ('GW', 'Garden Weed', 25.00)
    INTO service VALUES ('GP', 'Garden Plant', 30.00)
    SELECT * FROM dual;
    
-- SERVICE AND INVOICE ------------------ DONE UMESH
INSERT ALL
    INTO service_and_invoice VALUES ('LC', 1355, 0.75)
    INTO service_and_invoice VALUES ('GW', 1412, 1.15)
    INTO service_and_invoice VALUES ('GP', 1412, 0.25)
    SELECT * FROM dual;
    
-- PRODUCT CLASS ------------ DONE IDRISS
INSERT ALL
    INTO product_class VALUES ('GT', 'Garden Tools', 30)
    INTO product_class VALUES ('SB', 'Shrubs', 50)
    INTO product_class VALUES ('FT', 'Fertilizers', 25)
    SELECT * FROM dual;

-- PRODUCT ---------------- DONE IDRISS
INSERT ALL
    INTO product VALUES (10, '6 ft garden rake', 9.23, 'GT')
    INTO product VALUES (90, 'Low grade sapling', 6.99,'SB')
    INTO product VALUES (140, 'General grade lawn fertilizer', 8.00, 'FT')
    SELECT * FROM dual;
    
-- PRODUCT SALE ----------------- DONE UMESH
INSERT ALL
    INTO productSale VALUES (1405, 10)
    INTO productSale VALUES (1405, 90)
    INTO productSale VALUES (1405, 140)
    SELECT * FROM dual;
  
  
  
  
  




  
-- MY WORK ===========================================================

-- EMPLOYEE -------------- DONE DANISH
INSERT ALL
    INTO employee VALUES (120, 'Cindy Lee', 1, 219032002, 9053381234, TO_DATE('01-01-1998', 'dd-mm-yyyy'))
    INTO employee VALUES (124, 'Maria Wong', 2, 43524532, 9053245673, TO_DATE('23-08-1998', 'dd-mm-yyyy'))
    INTO employee VALUES (111, 'Son Gohan', 1, 123789456, 9052221111, TO_DATE('02-04-2000', 'dd-mm-yyyy'))
    SELECT * FROM dual;
    
-- INVENTORY ----------------- DANISH
INSERT ALL
    INTO inventory VALUES (10, 1, 11, 'Leaf and Rake')
    INTO inventory VALUES (90, 3, 10, 'Husky')
    INTO inventory VALUES (140, 2, 3, 'Sherwood')
    SELECT * FROM dual;
    
-- EMPLOYEE TEAM-------------- DONE DANISH
INSERT ALL 
    INTO employeeTeam VALUES (111, 3)
    INTO employeeTeam VALUES (124, 2)
    INTO employeeTeam VALUES (120, 1)
    SELECT * FROM dual;
      
    
    
    
    







    
    