-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema consoleDB
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema consoleDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `consoleDB` DEFAULT CHARACTER SET utf8 ;
USE `consoleDB` ;

-- -----------------------------------------------------
-- Table `consoleDB`.`Users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `consoleDB`.`Users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `FirstName` VARCHAR(255) NULL,
  `LastName` VARCHAR(255) NULL,
  `FavoriteNumber` INT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

INSERT INTO users (FirstName, LastName, FavoriteNumber) VALUES ("Garrett", "Wasson", 69);
INSERT INTO users (FirstName, LastName, FavoriteNumber) VALUES ("Barrett", "Basson", 420);
INSERT INTO users (FirstName, LastName, FavoriteNumber) VALUES ("Carrett", "Casson", 666);