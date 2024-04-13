-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema snackdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `snackdb` ;

-- -----------------------------------------------------
-- Schema snackdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `snackdb` DEFAULT CHARACTER SET utf8 ;
USE `snackdb` ;

-- -----------------------------------------------------
-- Table `snack`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `snack` ;

CREATE TABLE IF NOT EXISTS `snack` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(60) NOT NULL,
  `calories` INT NULL,
  `sugar_grams` INT NULL,
  `protein_grams` INT NULL,
  `carbs_grams` INT NULL,
  `price` DECIMAL(5,2) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS USER;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'USER' IDENTIFIED BY 'USER';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'USER';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `snack`
-- -----------------------------------------------------
START TRANSACTION;
USE `snackdb`;
INSERT INTO `snack` (`id`, `name`, `calories`, `sugar_grams`, `protein_grams`, `carbs_grams`, `price`) VALUES (1, 'Reeses', 210, 2, NULL, 24, 1.99);
INSERT INTO `snack` (`id`, `name`, `calories`, `sugar_grams`, `protein_grams`, `carbs_grams`, `price`) VALUES (2, 'AlmondJoy', 160, 1, 2, 20, 1.99);
INSERT INTO `snack` (`id`, `name`, `calories`, `sugar_grams`, `protein_grams`, `carbs_grams`, `price`) VALUES (3, 'GummyBears', 100, 16, 2, 23, 3.99);
INSERT INTO `snack` (`id`, `name`, `calories`, `sugar_grams`, `protein_grams`, `carbs_grams`, `price`) VALUES (4, 'Cheetos', 150, 14, 3, 15, 3.99);
INSERT INTO `snack` (`id`, `name`, `calories`, `sugar_grams`, `protein_grams`, `carbs_grams`, `price`) VALUES (5, 'BeefJerky', 85, 21, 14, 3, 5.99);

COMMIT;

