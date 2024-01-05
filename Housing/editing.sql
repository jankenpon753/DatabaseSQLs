UPDATE
    OwnerInfo
SET
    Address = 'Flat 601, Building 5, XYZ Housing Society'
WHERE
    Name = 'Ethan Miller';

DROP DATABASE IF EXISTS HousingSociety;

DROP TABLE OwnerInfo;

SELECT
    count(staffId)
FROM
    StaffInfo
WHERE
    jobTitle = 'Manager';

SET
    FOREIGN_KEY_CHECKS = 0;