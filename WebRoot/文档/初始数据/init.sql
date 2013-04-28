SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';


-- -----------------------------------------------------
-- Table `totoro`.`totoro_comments`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `totoro`.`totoro_comments` (
  `coid` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `cid` INT(10) UNSIGNED NULL DEFAULT '0' ,
  `created` INT(10) UNSIGNED NULL DEFAULT '0' ,
  `author` VARCHAR(200) NULL DEFAULT NULL ,
  `authorId` INT(10) UNSIGNED NULL DEFAULT '0' ,
  `ownerId` INT(10) UNSIGNED NULL DEFAULT '0' ,
  `mail` VARCHAR(200) NULL DEFAULT NULL ,
  `url` VARCHAR(200) NULL DEFAULT NULL ,
  `ip` VARCHAR(64) NULL DEFAULT NULL ,
  `agent` VARCHAR(200) NULL DEFAULT NULL ,
  `text` TEXT NULL DEFAULT NULL ,
  `type` VARCHAR(16) NULL DEFAULT 'comment' ,
  `status` VARCHAR(16) NULL DEFAULT 'approved' ,
  `parent` INT(10) UNSIGNED NULL DEFAULT '0' ,
  PRIMARY KEY (`coid`) ,
  INDEX `cid` (`cid` ASC) ,
  INDEX `created` (`created` ASC) )
ENGINE = MyISAM
AUTO_INCREMENT = 20
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `totoro`.`totoro_contents`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `totoro`.`totoro_contents` (
  `cid` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `title` VARCHAR(200) NULL DEFAULT NULL ,
  `slug` VARCHAR(200) NULL DEFAULT NULL ,
  `created` INT(10) UNSIGNED NULL DEFAULT '0' ,
  `modified` INT(10) UNSIGNED NULL DEFAULT '0' ,
  `text` TEXT NULL DEFAULT NULL ,
  `order` INT(10) UNSIGNED NULL DEFAULT '0' ,
  `authorId` INT(10) UNSIGNED NULL DEFAULT '0' ,
  `template` VARCHAR(32) NULL DEFAULT NULL ,
  `type` VARCHAR(16) NULL DEFAULT 'post' ,
  `status` VARCHAR(16) NULL DEFAULT 'publish' ,
  `password` VARCHAR(32) NULL DEFAULT NULL ,
  `commentsNum` INT(10) UNSIGNED NULL DEFAULT '0' ,
  `allowComment` CHAR(1) NULL DEFAULT '0' ,
  `allowPing` CHAR(1) NULL DEFAULT '0' ,
  `allowFeed` CHAR(1) NULL DEFAULT '0' ,
  `parent` INT(10) UNSIGNED NULL DEFAULT '0' ,
  PRIMARY KEY (`cid`) ,
  UNIQUE INDEX `slug` (`slug` ASC) ,
  INDEX `created` (`created` ASC) )
ENGINE = MyISAM
AUTO_INCREMENT = 7
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `totoro`.`totoro_links`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `totoro`.`totoro_links` (
  `lid` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT 'links表主键' ,
  `name` VARCHAR(200) NULL DEFAULT NULL COMMENT 'links名称' ,
  `url` VARCHAR(200) NULL DEFAULT NULL COMMENT 'links网址' ,
  `sort` VARCHAR(200) NULL DEFAULT NULL COMMENT 'links分类' ,
  `image` VARCHAR(200) NULL DEFAULT NULL COMMENT 'links图片' ,
  `description` VARCHAR(200) NULL DEFAULT NULL COMMENT 'links描述' ,
  `user` VARCHAR(200) NULL DEFAULT NULL COMMENT '自定义' ,
  `order` INT(10) UNSIGNED NULL DEFAULT '0' COMMENT 'links排序' ,
  PRIMARY KEY (`lid`) )
ENGINE = MyISAM
AUTO_INCREMENT = 1
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `totoro`.`totoro_metas`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `totoro`.`totoro_metas` (
  `mid` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(200) NULL DEFAULT NULL ,
  `slug` VARCHAR(200) NULL DEFAULT NULL ,
  `type` VARCHAR(32) NOT NULL ,
  `description` VARCHAR(200) NULL DEFAULT NULL ,
  `count` INT(10) UNSIGNED NULL DEFAULT '0' ,
  `order` INT(10) UNSIGNED NULL DEFAULT '0' ,
  PRIMARY KEY (`mid`) ,
  INDEX `slug` (`slug` ASC) )
ENGINE = MyISAM
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `totoro`.`totoro_options`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `totoro`.`totoro_options` (
  `name` VARCHAR(32) NOT NULL ,
  `user` INT(10) UNSIGNED NOT NULL DEFAULT '0' ,
  `value` TEXT NULL DEFAULT NULL ,
  PRIMARY KEY (`name`, `user`) )
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `totoro`.`totoro_relationships`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `totoro`.`totoro_relationships` (
  `cid` INT(10) UNSIGNED NOT NULL ,
  `mid` INT(10) UNSIGNED NOT NULL ,
  PRIMARY KEY (`cid`, `mid`) )
ENGINE = MyISAM
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `totoro`.`totoro_users`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `totoro`.`totoro_users` (
  `uid` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(32) NULL DEFAULT NULL ,
  `password` VARCHAR(64) NULL DEFAULT NULL ,
  `mail` VARCHAR(200) NULL DEFAULT NULL ,
  `url` VARCHAR(200) NULL DEFAULT NULL ,
  `screenName` VARCHAR(32) NULL DEFAULT NULL ,
  `created` INT(10) UNSIGNED NULL DEFAULT '0' ,
  `activated` INT(10) UNSIGNED NULL DEFAULT '0' ,
  `logged` INT(10) UNSIGNED NULL DEFAULT '0' ,
  `group` VARCHAR(16) NULL DEFAULT 'visitor' ,
  `authCode` VARCHAR(64) NULL DEFAULT NULL ,
  PRIMARY KEY (`uid`) ,
  UNIQUE INDEX `name` (`name` ASC) ,
  UNIQUE INDEX `mail` (`mail` ASC) )
ENGINE = MyISAM
AUTO_INCREMENT = 2
DEFAULT CHARACTER SET = utf8;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
