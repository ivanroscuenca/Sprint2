-- MySQL Workbench Synchronization
-- Generated: 2023-03-15 16:21
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Ivan

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `Youtube` DEFAULT CHARACTER SET utf8 ;

CREATE TABLE IF NOT EXISTS `Youtube`.`User` (
  `User_id` INT(11) NOT NULL AUTO_INCREMENT,
  `User_email` VARCHAR(45) NOT NULL,
  `User_password` VARCHAR(45) NOT NULL,
  `User_name` VARCHAR(45) NOT NULL,
  `User_date_of_birth` DATE NOT NULL,
  `User_sex` ENUM('MALE', 'FEMALE', 'OTHERS') NULL DEFAULT NULL,
  `User_country` VARCHAR(45) NOT NULL,
  `User_zip` INT(5) NOT NULL,
  `Comments_Comments_id` INT(11) NOT NULL,
  PRIMARY KEY (`User_id`, `Comments_Comments_id`),
  INDEX `fk_User_Comments1_idx` (`Comments_Comments_id` ASC) VISIBLE,
  CONSTRAINT `fk_User_Comments1`
    FOREIGN KEY (`Comments_Comments_id`)
    REFERENCES `Youtube`.`Comments` (`Comments_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `Youtube`.`Videos` (
  `Videos_id` INT(11) NOT NULL,
  `Videos_title` VARCHAR(25) NOT NULL,
  `Videos_description` VARCHAR(45) NOT NULL,
  `Videos_size` DOUBLE NOT NULL,
  `Videos_name` VARCHAR(45) NOT NULL,
  `Videos_length` DOUBLE NOT NULL,
  `Videos_thumbnail` BLOB NULL DEFAULT NULL,
  `Videos_num_played` INT(11) NULL DEFAULT NULL AUTO_INCREMENT,
  `Videos_num_likes` INT(11) NULL DEFAULT NULL,
  `Videos_num_likes` INT(11) NULL DEFAULT NULL,
  `Videos_status` ENUM('PUBLIC', 'PRIVATE', 'HIDDDEN') NOT NULL,
  `User_User_id` INT(11) NOT NULL,
  PRIMARY KEY (`Videos_id`, `User_User_id`),
  INDEX `fk_Videos_User1_idx` (`User_User_id` ASC) VISIBLE,
  CONSTRAINT `fk_Videos_User1`
    FOREIGN KEY (`User_User_id`)
    REFERENCES `Youtube`.`User` (`User_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `Youtube`.`Tags` (
  `Tags_id` INT(11) NOT NULL AUTO_INCREMENT,
  `Tags_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Tags_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `Youtube`.`Channel` (
  `Channel_id` INT(11) NOT NULL AUTO_INCREMENT,
  `Channel_name` VARCHAR(25) NOT NULL,
  `Channel_description` VARCHAR(45) NOT NULL,
  `Channel_date_created` DATETIME NOT NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`Channel_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `Youtube`.`User_Subscribe_Channel` (
  `User_User_id` INT(11) NOT NULL,
  `Channel_Channel_id` INT(11) NOT NULL,
  PRIMARY KEY (`User_User_id`, `Channel_Channel_id`),
  INDEX `fk_User_has_Channel_Channel1_idx` (`Channel_Channel_id` ASC) VISIBLE,
  INDEX `fk_User_has_Channel_User1_idx` (`User_User_id` ASC) VISIBLE,
  CONSTRAINT `fk_User_has_Channel_User1`
    FOREIGN KEY (`User_User_id`)
    REFERENCES `Youtube`.`User` (`User_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_User_has_Channel_Channel1`
    FOREIGN KEY (`Channel_Channel_id`)
    REFERENCES `Youtube`.`Channel` (`Channel_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `Youtube`.`Playlist` (
  `Playlist_id` INT(11) NOT NULL AUTO_INCREMENT,
  `Playlist_name` VARCHAR(45) NOT NULL,
  `Playlist_date_created` DATETIME NOT NULL,
  `Playlist_status` ENUM('Public', 'Private') NOT NULL,
  `User_User_id` INT(11) NOT NULL,
  PRIMARY KEY (`Playlist_id`, `User_User_id`),
  INDEX `fk_Playlist_User1_idx` (`User_User_id` ASC) VISIBLE,
  CONSTRAINT `fk_Playlist_User1`
    FOREIGN KEY (`User_User_id`)
    REFERENCES `Youtube`.`User` (`User_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `Youtube`.`Comments` (
  `Comments_id` INT(11) NOT NULL AUTO_INCREMENT,
  `Comments_text` VARCHAR(45) NULL DEFAULT NULL,
  `Comments_date` DATETIME NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Videos_Videos_id` INT(11) NOT NULL,
  `Videos_User_User_id` INT(11) NOT NULL,
  PRIMARY KEY (`Comments_id`, `Videos_Videos_id`, `Videos_User_User_id`),
  INDEX `fk_Comments_Videos1_idx` (`Videos_Videos_id` ASC, `Videos_User_User_id` ASC) VISIBLE,
  CONSTRAINT `fk_Comments_Videos1`
    FOREIGN KEY (`Videos_Videos_id` , `Videos_User_User_id`)
    REFERENCES `Youtube`.`Videos` (`Videos_id` , `User_User_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `Youtube`.`Likesvideo` (
  `Likesvideo` ENUM('like', 'dislike') NULL DEFAULT NULL,
  `User_id_Likes` INT(11) NOT NULL,
  `Videos_id_likes` INT(11) NOT NULL,
  `Likesvideo_date` DATETIME NOT NULL,
  INDEX `fk_Likesvideo_User1_idx` (`User_id_Likes` ASC) VISIBLE,
  PRIMARY KEY (`Videos_id_likes`),
  CONSTRAINT `fk_Likesvideo_User1`
    FOREIGN KEY (`User_id_Likes`)
    REFERENCES `Youtube`.`User` (`User_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Likesvideo_Videos1`
    FOREIGN KEY (`Videos_id_likes`)
    REFERENCES `Youtube`.`Videos` (`Videos_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `Youtube`.`Videos_has_Tags` (
  `Videos_Videos_id` INT(11) NOT NULL,
  `Tags_Tags_id` INT(11) NOT NULL,
  PRIMARY KEY (`Videos_Videos_id`, `Tags_Tags_id`),
  INDEX `fk_Videos_has_Tags_Tags1_idx` (`Tags_Tags_id` ASC) VISIBLE,
  INDEX `fk_Videos_has_Tags_Videos1_idx` (`Videos_Videos_id` ASC) VISIBLE,
  CONSTRAINT `fk_Videos_has_Tags_Videos1`
    FOREIGN KEY (`Videos_Videos_id`)
    REFERENCES `Youtube`.`Videos` (`Videos_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Videos_has_Tags_Tags1`
    FOREIGN KEY (`Tags_Tags_id`)
    REFERENCES `Youtube`.`Tags` (`Tags_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
