-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema AirQualityData
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `AirQualityData` ;

-- -----------------------------------------------------
-- Schema AirQualityData
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `AirQualityData` DEFAULT CHARACTER SET utf8 ;
USE `AirQualityData` ;

-- -----------------------------------------------------
-- Table `AirQualityData`.`Constituency`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirQualityData`.`Constituency` (
  `Constituency_ID` INT NOT NULL,
  `Name` VARCHAR(100) NOT NULL,
  `MP_Name` VARCHAR(50) NULL,
  PRIMARY KEY (`Constituency_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AirQualityData`.`Station`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirQualityData`.`Station` (
  `Site_ID` INT NOT NULL,
  `Name` VARCHAR(45) NOT NULL,
  `Latitude` FLOAT NOT NULL,
  `Longitute` FLOAT NOT NULL,
  `Constituency_Constituency_ID` INT NOT NULL,
  PRIMARY KEY (`Site_ID`, `Constituency_Constituency_ID`),
  UNIQUE INDEX `Site_ID_UNIQUE` (`Site_ID` ASC),
  INDEX `fk_Station_Constituency1_idx` (`Constituency_Constituency_ID` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AirQualityData`.`AirQualityMeasurement`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirQualityData`.`AirQualityMeasurement` (
  `Measurement_ID` INT NOT NULL AUTO_INCREMENT,
  `Date_Time` DATETIME NOT NULL,
  `NOx` FLOAT NULL,
  `NO2` FLOAT NULL,
  `NO` FLOAT NULL,
  `PM10` FLOAT NULL,
  `O3` FLOAT NULL,
  `Temperature` FLOAT NULL,
  `ObjectID` FLOAT NULL,
  `ObjectID2` INT NULL,
  `NVPM10` FLOAT NULL,
  `VPM10` FLOAT NULL,
  `NVPM2_5` FLOAT NULL,
  `PM2_5` FLOAT NULL,
  `VPM2_5` FLOAT NULL,
  `CO` FLOAT NULL,
  `RH` FLOAT NULL,
  `Pressure` FLOAT NULL,
  `SO2` FLOAT NULL,
  `Station_Site_ID` INT NOT NULL,
  PRIMARY KEY (`Measurement_ID`, `Station_Site_ID`),
  INDEX `fk_AirQualityMeasurement_Station1_idx` (`Station_Site_ID` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `AirQualityData`.`PollutantSchema_Table`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `AirQualityData`.`PollutantSchema_Table` (
  `Polutant_id` INT NOT NULL,
  `Polutant_Name` VARCHAR(45) NULL,
  `Measuring_Unit` VARCHAR(45) NULL,
  `Description` VARCHAR(100) NULL,
  PRIMARY KEY (`Polutant_id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
