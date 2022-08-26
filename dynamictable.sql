CREATE PROCEDURE createEventTable(Event VARCHAR(50))
BEGIN
    SET @tableName = Event;
    SET @q = CONCAT('
        CREATE TABLE IF NOT EXISTS `' , @tableName, '` (
            `EventID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
            `EventTitle` CHAR(10) NOT NULL,
            `EventCode` INT NOT NULL,
            `EventDate` DATETIME NOT NULL,
            `EventDescription` VARCHAR(100) NOT NULL,
            `EstimatedCount` INT NOT NULL,
            `FacilityID` INT NOT NULL,
            `ToTime` INT(8) NOT NULL,
            `FromTime` INT(8) NOT NULL,
            `ContactID` INT NOT NULL,
            PRIMARY KEY (`EventID`),
            FOREIGN KEY (`EventCode`),
            FOREIGN KEY (`FacilityID`),
            FOREIGN KEY (`ContactID`)
        ) ENGINE=MyISAM DEFAULT CHARSET=utf8
    ');
    PREPARE stmt FROM @q;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;
    
CREATE PROCEDURE createFacilityTable(Facility VARCHAR(50))
BEGIN
    SET @tableName = Facility;
    SET @q = CONCAT('
        CREATE TABLE IF NOT EXISTS `' , @tableName, '` (
            `FacilityID` INT UNSIGNED NOT NULL AUTO_INCREMENT,
            `FacilityName` CHAR(10) NOT NULL,
            `FacilityDescription` VARCHAR(100) NOT NULL,
            `LocationID` INT NOT NULL,
            `ContactID` INT NOT NULL,
            PRIMARY KEY (`FacilityID`),
            FOREIGN KEY (`LocationID`),
            FOREIGN KEY (`ContactID`)
        ) ENGINE=MyISAM DEFAULT CHARSET=utf8
    ');
    PREPARE stmt FROM @q;
    EXECUTE stmt;
    DEALLOCATE PREPARE stmt;

