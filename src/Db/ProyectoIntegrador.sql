-- MySQL Script generated by MySQL Workbench
-- Mon Mar  6 12:04:26 2023
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Empleado` (
  `cedula` INT NOT NULL,
  `nombre` VARCHAR(45) NOT NULL,
  `apellido` VARCHAR(45) NOT NULL,
  `correoElectronico` VARCHAR(80) NOT NULL,
  `direccionResidencia` VARCHAR(80) NOT NULL,
  `ciudad` VARCHAR(45) NOT NULL,
  `antiguedadEmpresa` VARCHAR(45) NOT NULL,
  `rh` VARCHAR(45) NOT NULL,
  `tipoEmpleado` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cedula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Cliente` (
  `cedula` INT NOT NULL,
  `nombreCliente` VARCHAR(45) NOT NULL,
  `apellidoCliente` VARCHAR(45) NOT NULL,
  `celular` INT NOT NULL,
  `correoElectronico` VARCHAR(45) NOT NULL,
  `direccionResidencia` VARCHAR(45) NOT NULL,
  `ciudad` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`cedula`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Paquete`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Paquete` (
  `identificacionPaquete` INT NOT NULL,
  `tipoPaquete` VARCHAR(50) NOT NULL,
  `peso` FLOAT NOT NULL,
  `valorDeclarado` INT NOT NULL,
  PRIMARY KEY (`identificacionPaquete`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Envio`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Envio` (
  `numeroGuia` INT NOT NULL,
  `Cliente_cedula` INT NOT NULL,
  `ciudadOrigen` VARCHAR(60) NOT NULL,
  `ciudadDestino` VARCHAR(60) NOT NULL,
  `direccionDestino` VARCHAR(80) NOT NULL,
  `nombrePersonaRecibe` VARCHAR(45) NOT NULL,
  `numeroCelularPersonaRecibe` INT NOT NULL,
  `horaEntrega` DATETIME NOT NULL,
  `estadoEnvio` VARCHAR(45) NOT NULL,
  `valorEnvio` INT NOT NULL,
  `Paquete` INT NOT NULL,
  PRIMARY KEY (`numeroGuia`, `Cliente_cedula`, `Paquete`),
  INDEX `fk_Envio_Paquete_idx` (`Paquete` ASC) VISIBLE,
  INDEX `fk_Envio_Cliente1_idx` (`Cliente_cedula` ASC) VISIBLE,
  CONSTRAINT `fk_Envio_Paquete`
    FOREIGN KEY (`Paquete`)
    REFERENCES `mydb`.`Paquete` (`identificacionPaquete`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Envio_Cliente1`
    FOREIGN KEY (`Cliente_cedula`)
    REFERENCES `mydb`.`Cliente` (`cedula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
