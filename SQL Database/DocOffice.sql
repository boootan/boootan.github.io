-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema DoctorOffice
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema DoctorOffice
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `DoctorOffice` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema doctoroffice
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema doctoroffice
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `doctoroffice` DEFAULT CHARACTER SET utf8 ;
USE `DoctorOffice` ;

-- -----------------------------------------------------
-- Table `DoctorOffice`.`Person`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DoctorOffice`.`Person` (
  `idPerson` INT NOT NULL AUTO_INCREMENT,
  `Fname` VARCHAR(45) NOT NULL,
  `Lname` VARCHAR(45) NOT NULL,
  `Address` VARCHAR(45) NOT NULL,
  `City` VARCHAR(45) NOT NULL,
  `Phone` VARCHAR(10) NOT NULL,
  `SSN` VARCHAR(45) NOT NULL,
  `DOB` DATE NOT NULL,
  PRIMARY KEY (`idPerson`))
ENGINE = InnoDB;

INSERT INTO `Person` (`idPerson`,`Fname`,`Lname`,`Address`,`Phone`,`SSN`,`DOB`,`City`) VALUES ('1','David','Aussmann','2565 Kingsgate Rd.','7145552567','604632546','1975-07-12','Orange');
INSERT INTO `Person` (`idPerson`,`Fname`,`Lname`,`Address`,`Phone`,`SSN`,`DOB`,`City`) VALUES ('10','Michael ','Tran','5674 Shadow Grove Dr. ','604542323','604128354','2001-02-13','Fullerton');
INSERT INTO `Person` (`idPerson`,`Fname`,`Lname`,`Address`,`Phone`,`SSN`,`DOB`,`City`) VALUES ('11','Parth','Shabibo','1472 Hathaway Dr. ','7140192142','604120000','1968-07-04','Hacienda Heights');
INSERT INTO `Person` (`idPerson`,`Fname`,`Lname`,`Address`,`Phone`,`SSN`,`DOB`,`City`) VALUES ('12','Brandon','Musbane','9000 Saiyan Way','7149097555','602215050','1973-02-28','Diamond Bar');
INSERT INTO `Person` (`idPerson`,`Fname`,`Lname`,`Address`,`Phone`,`SSN`,`DOB`,`City`) VALUES ('2','Michael ','Cater','2645 San Antonio St.','7141233456','604567483','1979-12-01','Cypress');
INSERT INTO `Person` (`idPerson`,`Fname`,`Lname`,`Address`,`Phone`,`SSN`,`DOB`,`City`) VALUES ('3','Paul ','Vu','923 Cerro Villa Way','7141120909','601110787','1981-03-04','Los Angeles');
INSERT INTO `Person` (`idPerson`,`Fname`,`Lname`,`Address`,`Phone`,`SSN`,`DOB`,`City`) VALUES ('4','Robert ','Stevens','2522 Sadge St.','7146566789','602256969','1989-08-09','Fullerton');
INSERT INTO `Person` (`idPerson`,`Fname`,`Lname`,`Address`,`Phone`,`SSN`,`DOB`,`City`) VALUES ('5','Anthony ','Richards','3123 Villa Real Dr.','714343 257','603210658','1985-05-05','Fullerton');
INSERT INTO `Person` (`idPerson`,`Fname`,`Lname`,`Address`,`Phone`,`SSN`,`DOB`,`City`) VALUES ('6','Chaney ','Chantipaporn','2580 N. Bortz St.','7147601860','604210659','2000-07-17','Fullerton');
INSERT INTO `Person` (`idPerson`,`Fname`,`Lname`,`Address`,`Phone`,`SSN`,`DOB`,`City`) VALUES ('7','Sonny','Tan','1123 Northridge Way','7149211351','604224353','2000-03-01','Villa Park');
INSERT INTO `Person` (`idPerson`,`Fname`,`Lname`,`Address`,`Phone`,`SSN`,`DOB`,`City`) VALUES ('8','Dulcie','Hang','1188 Poggers Ln.','7141112233','604210099','1998-02-12','Fullerton');
INSERT INTO `Person` (`idPerson`,`Fname`,`Lname`,`Address`,`Phone`,`SSN`,`DOB`,`City`) VALUES ('9','Sarina ','Liang','1345 Birkshire Cir.','6045230099','604560967','2001-12-25','Fullerton');


-- -----------------------------------------------------
-- Table `DoctorOffice`.`Doctor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DoctorOffice`.`Doctor` (
  `idDoctor` VARCHAR(45) NOT NULL,
  `idPerson` INT NULL,
  `idSpecialty` INT NULL,
  PRIMARY KEY (`idDoctor`),
  INDEX `idPerson_idx` (`idPerson` ASC),
  UNIQUE INDEX `idDoctor_UNIQUE` (`idDoctor` ASC),
  CONSTRAINT `idPerson`
    FOREIGN KEY (`idPerson`)
    REFERENCES `DoctorOffice`.`Person` (`idPerson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `Doctor` (`idDoctor`,`idPerson`,`idSpecialty`) VALUES ('AN1004','5',2);
INSERT INTO `Doctor` (`idDoctor`,`idPerson`,`idSpecialty`) VALUES ('BR1004','12',NULL);
INSERT INTO `Doctor` (`idDoctor`,`idPerson`,`idSpecialty`) VALUES ('DA1000','1',2);
INSERT INTO `Doctor` (`idDoctor`,`idPerson`,`idSpecialty`) VALUES ('MI1001','2',3);
INSERT INTO `Doctor` (`idDoctor`,`idPerson`,`idSpecialty`) VALUES ('PA1005','11',NULL);
INSERT INTO `Doctor` (`idDoctor`,`idPerson`,`idSpecialty`) VALUES ('PA1002','3',2);
INSERT INTO `Doctor` (`idDoctor`,`idPerson`,`idSpecialty`) VALUES ('RO1003','4',5);


-- -----------------------------------------------------
-- Table `DoctorOffice`.`Prescription`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DoctorOffice`.`Prescription` (
  `idPrescription` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NOT NULL,
  `Price` DOUBLE NOT NULL,
  PRIMARY KEY (`idPrescription`))
ENGINE = InnoDB;

INSERT INTO `Prescription` (`idPrescription`,`Name`,`Price`) VALUES (1,'Vicodin',5);
INSERT INTO `Prescription` (`idPrescription`,`Name`,`Price`) VALUES (2,'Advil',7);
INSERT INTO `Prescription` (`idPrescription`,`Name`,`Price`) VALUES (3,'Advair',15);
INSERT INTO `Prescription` (`idPrescription`,`Name`,`Price`) VALUES (4,'Nasonex',3);
INSERT INTO `Prescription` (`idPrescription`,`Name`,`Price`) VALUES (5,'Ibuprofen ',10);
INSERT INTO `Prescription` (`idPrescription`,`Name`,`Price`) VALUES (6,'Adderall ',20);
INSERT INTO `Prescription` (`idPrescription`,`Name`,`Price`) VALUES (7,'Aspirin',8);
INSERT INTO `Prescription` (`idPrescription`,`Name`,`Price`) VALUES (8,'Benadryl',9);
INSERT INTO `Prescription` (`idPrescription`,`Name`,`Price`) VALUES (9,'Claratin',3);
INSERT INTO `Prescription` (`idPrescription`,`Name`,`Price`) VALUES (10,'Pepto-Bismol',6);
-- -----------------------------------------------------
-- Table `DoctorOffice`.`Patient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DoctorOffice`.`Patient` (
  `idPatient` VARCHAR(45) NOT NULL,
  `numPhone` VARCHAR(10) NOT NULL,
  `personID` INT NOT NULL,
  PRIMARY KEY (`idPatient`),
  UNIQUE INDEX `idPatient_UNIQUE` (`idPatient` ASC),
  INDEX `personID_idx` (`personID` ASC),
  CONSTRAINT `personID`
    FOREIGN KEY (`personID`)
    REFERENCES `DoctorOffice`.`Person` (`idPerson`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `Patient` (`idPatient`,`numPhone`,`personID`) VALUES ('CH1002','7147601860','6');
INSERT INTO `Patient` (`idPatient`,`numPhone`,`personID`) VALUES ('SO5055','7149211351','7');
INSERT INTO `Patient` (`idPatient`,`numPhone`,`personID`) VALUES ('DU9341','7141112233','8');
INSERT INTO `Patient` (`idPatient`,`numPhone`,`personID`) VALUES ('SA8218','6045230099','9');
INSERT INTO `Patient` (`idPatient`,`numPhone`,`personID`) VALUES ('MI8041','604542323','10');



-- -----------------------------------------------------
-- Table `DoctorOffice`.`Med_Test`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DoctorOffice`.`Med_Test` (
  `idMed_Test` INT NOT NULL AUTO_INCREMENT,
  `Type` VARCHAR(45) NULL,
  PRIMARY KEY (`idMed_Test`),
  UNIQUE INDEX `idMed_Test_UNIQUE` (`idMed_Test` ASC)
  )
ENGINE = InnoDB;

INSERT INTO `Med_Test` (`idMed_Test`,`Type`) VALUES (1,'Laparoscopy');
INSERT INTO `Med_Test` (`idMed_Test`,`Type`) VALUES (2,'Magnetic resonance imaging (MRI)');
INSERT INTO `Med_Test` (`idMed_Test`,`Type`) VALUES (3,'Mammography');
INSERT INTO `Med_Test` (`idMed_Test`,`Type`) VALUES (4,'Mediastinoscopy');
INSERT INTO `Med_Test` (`idMed_Test`,`Type`) VALUES (5,'Endoscopy');
INSERT INTO `Med_Test` (`idMed_Test`,`Type`) VALUES (6,'Biopsy');
INSERT INTO `Med_Test` (`idMed_Test`,`Type`) VALUES (7,'Auscultation');
INSERT INTO `Med_Test` (`idMed_Test`,`Type`) VALUES (8,'Acoustic Reflex Test');
INSERT INTO `Med_Test` (`idMed_Test`,`Type`) VALUES (9,'Arthroscopy');
INSERT INTO `Med_Test` (`idMed_Test`,`Type`) VALUES (10,'AIDS Test');
INSERT INTO `Med_Test` (`idMed_Test`,`Type`) VALUES (11,'Amniocentesis');
INSERT INTO `Med_Test` (`idMed_Test`,`Type`) VALUES (12,'Antiglobulin Tests');
INSERT INTO `Med_Test` (`idMed_Test`,`Type`) VALUES (13,'Ammonia Blood Level Test');
INSERT INTO `Med_Test` (`idMed_Test`,`Type`) VALUES (14,'Antibody Tests -- Immunoglobulins');
INSERT INTO `Med_Test` (`idMed_Test`,`Type`) VALUES (15,'AFP (Alpha-Fetoprotein) Test');



-- -----------------------------------------------------
-- Table `DoctorOffice`.`Appointment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DoctorOffice`.`Appointment` (
  `idAppointment` INT NOT NULL AUTO_INCREMENT,
  `Doctor` VARCHAR(45) NOT NULL,
  `Patient` VARCHAR(45) NOT NULL,
  `Date` DATE NOT NULL,
  `Prescriptions` INT NULL,
  `Tests` INT NULL,
  UNIQUE INDEX `Doctor_UNIQUE` (`idAppointment` ASC),
  INDEX `Patient_idx` (`Patient` ASC),
  INDEX `Prescriptions_idx` (`Prescriptions` ASC),
  INDEX `Tests_idx` (`Tests` ASC),
  INDEX `Appt` (`idAppointment` ASC),
  UNIQUE INDEX `OneVisit` (`Date` ASC, `Doctor` ASC, `Patient` ASC),
  PRIMARY KEY (`Doctor`, `Patient`, `Date`),
  CONSTRAINT `Doctor`
    FOREIGN KEY (`Doctor`)
    REFERENCES `DoctorOffice`.`Doctor` (`idDoctor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Patient`
    FOREIGN KEY (`Patient`)
    REFERENCES `DoctorOffice`.`Patient` (`idPatient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Prescriptions`
    FOREIGN KEY (`Prescriptions`)
    REFERENCES `DoctorOffice`.`Prescription` (`idPrescription`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Tests`
    FOREIGN KEY (`Tests`)
    REFERENCES `DoctorOffice`.`Med_Test` (`idMed_Test`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
    CONSTRAINT `CheckSelfTreat`
    CHECK (Patient != Doctor),
    CONSTRAINT `DuplicateApptRecord`
    UNIQUE (Doctor, Patient, Date))
	
ENGINE = InnoDB;




INSERT INTO `Appointment` (`idAppointment`,`Doctor`,`Patient`,`Date`,`Prescriptions`,`Tests`) VALUES (3,'AR1004','DU9341','2020-03-14',2,3);
INSERT INTO `Appointment` (`idAppointment`,`Doctor`,`Patient`,`Date`,`Prescriptions`,`Tests`) VALUES (6,'DA1000','SO5055','2020-08-19',1,2);
INSERT INTO `Appointment` (`idAppointment`,`Doctor`,`Patient`,`Date`,`Prescriptions`,`Tests`) VALUES (4,'MC1001','SA8218','2020-06-02',3,2);
INSERT INTO `Appointment` (`idAppointment`,`Doctor`,`Patient`,`Date`,`Prescriptions`,`Tests`) VALUES (5,'PV1002','MI8041','2020-07-17',4,4);
INSERT INTO `Appointment` (`idAppointment`,`Doctor`,`Patient`,`Date`,`Prescriptions`,`Tests`) VALUES (1,'RO1003','CH1002','2020-01-01',1,1);
INSERT INTO `Appointment` (`idAppointment`,`Doctor`,`Patient`,`Date`,`Prescriptions`,`Tests`) VALUES (2,'RO1003','SO5055','2020-02-04',3,1);


-- -----------------------------------------------------
-- Table `DoctorOffice`.`DoctorSpecialty`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DoctorOffice`.`DoctorSpecialty` (
  `idDoctorSpecialty` INT NOT NULL,
  `SpecialtyName` VARCHAR(45) NULL,
  PRIMARY KEY (`idDoctorSpecialty`))
ENGINE = InnoDB;

INSERT INTO `DoctorSpecialty` (`idDoctorSpecialty`,`SpecialtyName`) VALUES (1,'Neurologist');
INSERT INTO `DoctorSpecialty` (`idDoctorSpecialty`,`SpecialtyName`) VALUES (2,'Pediatrician');
INSERT INTO `DoctorSpecialty` (`idDoctorSpecialty`,`SpecialtyName`) VALUES (3,'Psychiatrist');
INSERT INTO `DoctorSpecialty` (`idDoctorSpecialty`,`SpecialtyName`) VALUES (4,'Anesthesiologist');
INSERT INTO `DoctorSpecialty` (`idDoctorSpecialty`,`SpecialtyName`) VALUES (5,'Radiologist');


-- -----------------------------------------------------
-- Table `DoctorOffice`.`Audit`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DoctorOffice`.`Audit` (
  /* `idAudit` INT NOT NULL auto_increment, */
  `Doc_fname` VARCHAR(45) DEFAULT NULL,
  `Action` VARCHAR(45) DEFAULT NULL,
  `idSpecialty` INT DEFAULT NULL,
  `Date` DATE DEFAULT NULL,
  /*PRIMARY KEY (`idAudit`), */
  INDEX `idSpecialty_idx` (`idSpecialty` ASC),
  CONSTRAINT `idSpecialty`
    FOREIGN KEY (`idSpecialty`)
    REFERENCES `DoctorOffice`.`DoctorSpecialty` (`idDoctorSpecialty`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `DoctorOffice`.`checkPrescription`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DoctorOffice`.`checkPrescription` (
  `idAppointment` INT NOT NULL,
  `idPrescription` INT NULL,
  PRIMARY KEY (`idAppointment`),
  INDEX `idPrescription_idx` (`idPrescription` ASC),
  CONSTRAINT `idAppointment`
    FOREIGN KEY (`idAppointment`)
    REFERENCES `DoctorOffice`.`Appointment` (`idAppointment`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idPrescription`
    FOREIGN KEY (`idPrescription`)
    REFERENCES `DoctorOffice`.`Prescription` (`idPrescription`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `checkPrescription` (`idAppointment`,`idPrescription`) VALUES (1,1);
INSERT INTO `checkPrescription` (`idAppointment`,`idPrescription`) VALUES (6,1);
INSERT INTO `checkPrescription` (`idAppointment`,`idPrescription`) VALUES (3,2);
INSERT INTO `checkPrescription` (`idAppointment`,`idPrescription`) VALUES (2,3);
INSERT INTO `checkPrescription` (`idAppointment`,`idPrescription`) VALUES (4,3);
INSERT INTO `checkPrescription` (`idAppointment`,`idPrescription`) VALUES (5,4);


-- -----------------------------------------------------
-- Table `DoctorOffice`.`checkTest`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `DoctorOffice`.`checkTest` (
  `idMed_Test` INT NOT NULL,
  `appointment` INT NOT NULL,
  PRIMARY KEY (`appointment`),
  INDEX `idMed_Test_idx` (`idMed_Test` ASC),
  CONSTRAINT `appointment`
    FOREIGN KEY (`appointment`)
    REFERENCES `DoctorOffice`.`Appointment` (`idAppointment`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idMed_Test`
    FOREIGN KEY (`idMed_Test`)
    REFERENCES `DoctorOffice`.`Med_Test` (`idMed_Test`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

INSERT INTO `checkTest` (`idMed_Test`,`appointment`) VALUES (1,1);
INSERT INTO `checkTest` (`idMed_Test`,`appointment`) VALUES (1,2);
INSERT INTO `checkTest` (`idMed_Test`,`appointment`) VALUES (2,4);
INSERT INTO `checkTest` (`idMed_Test`,`appointment`) VALUES (2,6);
INSERT INTO `checkTest` (`idMed_Test`,`appointment`) VALUES (3,3);
INSERT INTO `checkTest` (`idMed_Test`,`appointment`) VALUES (4,5);

USE `doctoroffice` ;

-- -----------------------------------------------------
-- Placeholder table for view `doctoroffice`.`doctorspecialties`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `doctoroffice`.`doctorspecialties` (`Fname` INT, `Lname` INT, `SpecialtyName` INT);

-- -----------------------------------------------------
-- Placeholder table for view `doctoroffice`.`Robert's Patients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `doctoroffice`.`robertPatients` (`Fname` INT, `LName` INT, `Phone` INT);

-- -----------------------------------------------------
-- Placeholder table for view `doctoroffice`.`VicodinPrescribers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `doctoroffice`.`VicodinPrescribers` (`Fname` INT, `Lname` INT);
-- -----------------------------------------------------
-- procedure NumFullertonPrescriptions
-- -----------------------------------------------------

DELIMITER $$
USE `doctoroffice`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `NumFullertonPrescriptions`()
BEGIN
	SELECT COUNT(Name), Name FROM prescription JOIN appointment ON idPrescription = Prescriptions LEFT JOIN patient ON idPatient = Patient LEFT JOIN person ON idPerson = personID WHERE City = 'Fullerton' GROUP BY Name;
END$$

DELIMITER ;

-- -----------------------------------------------------
-- View `doctoroffice`.`DoctorSpecialties`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `doctoroffice`.`DoctorSpecialties`;
USE `doctoroffice`;
CREATE  OR REPLACE VIEW `DoctorSpecialties` AS
SELECT p.Fname, p.Lname, doctorspecialty.SpecialtyName FROM Person AS p JOIN doctor d ON p.idPerson = d.idPerson LEFT JOIN doctorspecialty ON d.idSpecialty = doctorspecialty.idDoctorSpecialty;
USE `doctoroffice`;
-- -----------------------------------------------------
-- View `doctoroffice`.`Robert's Patients`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `doctoroffice`.`robertPatients`;
USE `doctoroffice`;
CREATE  OR REPLACE VIEW `robertPatients` AS 
SELECT Fname, LName, Phone FROM PERSON WHERE idPerson IN (SELECT personID FROM patient WHERE idPatient IN (SELECT Patient FROM appointment WHERE Doctor = (SELECT idDoctor FROM doctor 
WHERE idPerson = (SELECT idPerson from person WHERE Fname = 'Robert' AND Lname = 'Stevens'))));

-- -----------------------------------------------------
-- View `doctoroffice`.`VicodinPrescribers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `doctoroffice`.`VicodinPrescribers`;
USE `doctoroffice`;
CREATE  OR REPLACE VIEW `VicodinPrescribers` AS
SELECT Fname, Lname FROM person WHERE idPerson IN (SELECT idPerson FROM doctor WHERE idDoctor IN (SELECT Doctor FROM appointment 
WHERE Prescriptions = (SELECT idPrescription FROM prescription WHERE Name = 'Vicodin')));

DELIMITER $$
USE `doctoroffice`$$
CREATE DEFINER = CURRENT_USER TRIGGER `doctoroffice`.`doctor_AFTER_UPDATE` AFTER UPDATE ON `doctor` FOR EACH ROW
BEGIN
	INSERT INTO audit(Doc_fname, Action, idSpecialty, Date) SELECT p.Fname AS Doc_fname,
	"UPDATE" AS Action, doctorspecialty.idDoctorSpecialty AS idSpecialty, curdate() AS Date FROM 
    Person AS p JOIN doctor d ON p.idPerson = d.idPerson left join doctorspecialty on d.idSpecialty = doctorspecialty.idDoctorSpecialty
    limit 1;
	/*WHERE Doc_fname = p.Fname AND d.idSpecialty = idSpecialty/*; /*gives us the list of doctors with their first names + specialities*/
END$$

USE `doctoroffice`$$
CREATE DEFINER = CURRENT_USER TRIGGER `doctoroffice`.`doctor_AFTER_INSERT` AFTER INSERT ON `doctor` FOR EACH ROW
BEGIN
	INSERT INTO audit(Doc_fname, Action, idSpecialty, Date) SELECT p.Fname AS Doc_fname,
	"ADDED" AS Action, doctorspecialty.idDoctorSpecialty as idSpecialty, curdate() AS Date FROM 
    Person AS p JOIN doctor d ON p.idPerson = d.idPerson left join doctorspecialty on d.idSpecialty = doctorspecialty.idDoctorSpecialty
    limit 1;
    -- WHERE Doc_fname = p.Fname AND d.idSpecialty = idSpecialty; /*gives us the list of doctors with their first names + specialities*/
END$$

DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


