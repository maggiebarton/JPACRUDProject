-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema coversdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `coversdb` ;

-- -----------------------------------------------------
-- Schema coversdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `coversdb` DEFAULT CHARACTER SET utf8 ;
USE `coversdb` ;

-- -----------------------------------------------------
-- Table `cover`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `cover` ;

CREATE TABLE IF NOT EXISTS `cover` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(100) NOT NULL,
  `original_artist` VARCHAR(100) NOT NULL,
  `song_key` VARCHAR(5) NULL,
  `capo` INT NULL,
  `status` VARCHAR(45) NOT NULL,
  `chords_url` VARCHAR(2000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS coversuser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'coversuser'@'localhost' IDENTIFIED BY 'coversuser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'coversuser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `cover`
-- -----------------------------------------------------
START TRANSACTION;
USE `coversdb`;
INSERT INTO `cover` (`id`, `title`, `original_artist`, `song_key`, `capo`, `status`, `chords_url`) VALUES (1, 'Stand By Me', 'Ben E. King', 'A', 0, 'Mastered', 'https://tabs.ultimate-guitar.com/tab/ben-e-king/stand-by-me-chords-73005');
INSERT INTO `cover` (`id`, `title`, `original_artist`, `song_key`, `capo`, `status`, `chords_url`) VALUES (2, 'Landslide', 'Fleetwood Mac', 'Eb', 3, 'Practicing', 'https://tabs.ultimate-guitar.com/tab/fleetwood-mac/landslide-chords-989772');
INSERT INTO `cover` (`id`, `title`, `original_artist`, `song_key`, `capo`, `status`, `chords_url`) VALUES (3, 'Neon Moon', 'Brooks and Dunn feat. Kasey Musgraves', 'Eb', 3, 'Not Started', 'https://tabs.ultimate-guitar.com/tab/brooks-dunn/neon-moon-duet-chords-3992071');
INSERT INTO `cover` (`id`, `title`, `original_artist`, `song_key`, `capo`, `status`, `chords_url`) VALUES (4, 'Your Love', 'The Outfield', 'C#m', 0, 'Mastered', 'https://tabs.ultimate-guitar.com/tab/the-outfield/your-love-chords-772505');
INSERT INTO `cover` (`id`, `title`, `original_artist`, `song_key`, `capo`, `status`, `chords_url`) VALUES (5, 'By and By', 'Caamp', 'A', 2, 'Not Started', 'https://tabs.ultimate-guitar.com/tab/caamp/by-and-by-chords-2773876');
INSERT INTO `cover` (`id`, `title`, `original_artist`, `song_key`, `capo`, `status`, `chords_url`) VALUES (6, 'Fake Love', 'Drake', 'Am', 0, 'Mastered', NULL);
INSERT INTO `cover` (`id`, `title`, `original_artist`, `song_key`, `capo`, `status`, `chords_url`) VALUES (7, 'If I Ain\'t Got You', 'Alicia Keys', 'G', 0, 'Mastered', 'https://tabs.ultimate-guitar.com/tab/alicia-keys/if-i-aint-got-you-chords-111683');
INSERT INTO `cover` (`id`, `title`, `original_artist`, `song_key`, `capo`, `status`, `chords_url`) VALUES (8, 'Listen to the Music', 'The Doobie Brothers', 'C#m', 0, 'Not Started', 'https://tabs.ultimate-guitar.com/tab/the-doobie-brothers/listen-to-the-music-chords-268316');
INSERT INTO `cover` (`id`, `title`, `original_artist`, `song_key`, `capo`, `status`, `chords_url`) VALUES (9, 'Let It Be', 'The Beatles', 'C', 0, 'Mastered', 'https://tabs.ultimate-guitar.com/tab/the-beatles/let-it-be-chords-17427');
INSERT INTO `cover` (`id`, `title`, `original_artist`, `song_key`, `capo`, `status`, `chords_url`) VALUES (10, 'No Scrubs', 'TLC', 'G#m', 4, 'Practicing', 'https://tabs.ultimate-guitar.com/tab/tlc/no-scrubs-chords-1228764');

COMMIT;

