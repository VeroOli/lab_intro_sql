-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema coches
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema coches
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `coches` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `coches` ;

-- -----------------------------------------------------
-- Table `coches`.`cars`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`cars` (
  `idCars` INT NOT NULL AUTO_INCREMENT,
  `VIN` VARCHAR(45) NULL DEFAULT NULL,
  `Manufacturer` VARCHAR(45) NULL DEFAULT NULL,
  `Model` VARCHAR(45) NULL DEFAULT NULL,
  `Year` VARCHAR(45) NULL DEFAULT NULL,
  `Color` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idCars`))
ENGINE = InnoDB
AUTO_INCREMENT = 17
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `coches`.`customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`customers` (
  `idCustomers` INT NOT NULL AUTO_INCREMENT,
  `CustomerID` VARCHAR(45) NULL DEFAULT NULL,
  `Name` VARCHAR(45) NULL DEFAULT NULL,
  `Phone` VARCHAR(45) NULL DEFAULT NULL,
  `Email` VARCHAR(45) NULL DEFAULT NULL,
  `Address` VARCHAR(45) NULL DEFAULT NULL,
  `City` VARCHAR(45) NULL DEFAULT NULL,
  `State/Province` VARCHAR(45) NULL DEFAULT NULL,
  `Country` VARCHAR(45) NULL DEFAULT NULL,
  `Postal` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idCustomers`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `coches`.`salespersons`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`salespersons` (
  `idSalespersons` INT NOT NULL AUTO_INCREMENT,
  `StaffID` VARCHAR(45) NULL DEFAULT NULL,
  `Name` VARCHAR(45) NULL DEFAULT NULL,
  `Store` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idSalespersons`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `coches`.`invoices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `coches`.`invoices` (
  `idInvoices` INT NOT NULL AUTO_INCREMENT,
  `Number` VARCHAR(45) NULL DEFAULT NULL,
  `Date` VARCHAR(45) NULL DEFAULT NULL,
  `Cars_idCars` INT NOT NULL,
  `Salespersons_idSalespersons` INT NOT NULL,
  `Customers_idCustomers` INT NOT NULL,
  PRIMARY KEY (`idInvoices`, `Cars_idCars`, `Salespersons_idSalespersons`, `Customers_idCustomers`),
  INDEX `fk_Invoices_Cars_idx` (`Cars_idCars` ASC) VISIBLE,
  INDEX `fk_Invoices_Salespersons1_idx` (`Salespersons_idSalespersons` ASC) VISIBLE,
  INDEX `fk_Invoices_Customers1_idx` (`Customers_idCustomers` ASC) VISIBLE,
  CONSTRAINT `fk_Invoices_Cars`
    FOREIGN KEY (`Cars_idCars`)
    REFERENCES `coches`.`cars` (`idCars`),
  CONSTRAINT `fk_Invoices_Customers1`
    FOREIGN KEY (`Customers_idCustomers`)
    REFERENCES `coches`.`customers` (`idCustomers`),
  CONSTRAINT `fk_Invoices_Salespersons1`
    FOREIGN KEY (`Salespersons_idSalespersons`)
    REFERENCES `coches`.`salespersons` (`idSalespersons`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
