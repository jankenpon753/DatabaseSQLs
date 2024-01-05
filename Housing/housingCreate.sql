CREATE DATABASE IF NOT EXISTS HousingSociety;

CREATE TABLE OwnerInfo (
    ownerId INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(30),
    lastName VARCHAR(30),
    age INT,
    personalIdentification VARCHAR(9),
    phone VARCHAR(11),
    email VARCHAR(100),
    address VARCHAR(255)
);

CREATE TABLE StaffInfo(
    staffId INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(30),
    lastName VARCHAR(30),
    age INT,
    personalIdentification VARCHAR(9),
    phone VARCHAR(11),
    email VARCHAR(100),
    buildingId INT,
    jobTitle VARCHAR(100),
    salary INT
);

CREATE TABLE BuildingInfo (
    buildingId INT AUTO_INCREMENT PRIMARY KEY,
    floors INT,
    flats INT,
    ownerId INT,
    managerId INT,
    address VARCHAR(255),
    FOREIGN KEY (ownerId) REFERENCES OwnerInfo(ownerId),
    FOREIGN KEY (managerId) REFERENCES StaffInfo(staffId)
);

ALTER TABLE
    StaffInfo
ADD
    FOREIGN KEY (buildingId) REFERENCES BuildingInfo(buildingId);

CREATE TABLE FlatInfo (
    flatId INT AUTO_INCREMENT PRIMARY KEY,
    buildingId INT,
    rooms INT,
    rent INT,
    FOREIGN KEY (buildingId) REFERENCES BuildingInfo(buildingId)
);

CREATE TABLE TenantInfo (
    tenantId INT AUTO_INCREMENT PRIMARY KEY,
    firstName VARCHAR(30),
    lastName VARCHAR(30),
    age INT,
    personalIdentification VARCHAR(16),
    phone VARCHAR(11),
    email VARCHAR(100),
    flatId INT,
    FOREIGN KEY (flatId) REFERENCES FlatInfo(flatId)
);

CREATE TABLE RentInfo(
    flatId INT,
    rent INT,
    due VARCHAR(20),
    FOREIGN KEY (flatId) REFERENCES FlatInfo(flatId)
);