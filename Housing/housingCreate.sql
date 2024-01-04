CREATE DATABASE IF NOT EXISTS HousingSociety;

CREATE TABLE OwnerInfo (
    OwnerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    Age INT,
    PersonalIdentification VARCHAR(9),
    Phone VARCHAR(11),
    Email VARCHAR(255),
    Address VARCHAR(255)
);

CREATE TABLE ManagerInfo (
    ManagerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    Age INT,
    PersonalID VARCHAR(9),
    Phone VARCHAR(11),
    Email VARCHAR(255),
    Address VARCHAR(255)
);

CREATE TABLE BuildingInfo (
    BuildingID INT AUTO_INCREMENT PRIMARY KEY,
    Floors INT,
    Flats INT,
    OwnerID INT,
    ManagerID INT,
    Address VARCHAR(255),
    FOREIGN KEY (OwnerID) REFERENCES OwnerInfo(OwnerID),
    FOREIGN KEY (ManagerID) REFERENCES ManagerInfo(ManagerID)
);

CREATE TABLE FlatInfo (
    FlatID INT AUTO_INCREMENT PRIMARY KEY,
    BuildingID INT,
    Rooms INT,
    Rent INT,
    FlatDescription VARCHAR(255),
    FOREIGN KEY (BuildingID) REFERENCES BuildingInfo(BuildingID)
);

CREATE TABLE TenantInfo (
    TenantID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    Age INT,
    PersonalIDNumber VARCHAR(16),
    Phone VARCHAR(11),
    Email VARCHAR(255),
    FlatID INT,
    IsPrimary ENUM('Yes', 'No'),
    FOREIGN KEY (FlatID) REFERENCES FlatInfo(FlatID)
);

CREATE TABLE StaffInfo(
    StaffID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255),
    Age INT,
    PersonalIDNumber VARCHAR(9),
    Phone VARCHAR(11),
    Email VARCHAR(255),
    BuildingID INT,
    JobTitle VARCHAR(100),
    Salary INT,
    FOREIGN KEY (BuildingID) REFERENCES BuildingInfo(BuildingID)
);

CREATE TABLE RentInfo(
    FlatID INT,
    Rent INT,
    Due VARCHAR(255),
    FOREIGN KEY (FlatID) REFERENCES FlatInfo(FlatID)
);