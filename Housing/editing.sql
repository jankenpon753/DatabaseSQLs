UPDATE
    OwnerInfo
SET
    Address = 'Flat 601, Building 5, XYZ Housing Society'
WHERE
    Name = 'Ethan Miller';

DROP DATABASE IF EXISTS HousingSociety;

DROP TABLE OwnerInfo;

SELECT
    sum(flats),
    buildingId,
    floors
FROM
    BuildingInfo
GROUP BY
    buildingId;

SET
    FOREIGN_KEY_CHECKS = 0;

DELETE FROM
    StaffInfo
WHERE
    buildingId > 210010;

DELETE FROM
    BuildingInfo
WHERE
    buildingId > 210010;

UPDATE
    BuildingInfo
SET
    flats = 32
WHERE
    buildingId = 210007;

DELETE FROM
    FlatInfo;