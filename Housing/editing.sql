UPDATE
    OwnerInfo
SET
    Address = 'Flat 601, Building 5, XYZ Housing Society'
WHERE
    Name = 'Ethan Miller';

DROP DATABASE IF EXISTS HousingSociety;

DROP TABLE RentInfo;

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

ALTER TABLE
    FlatInfo
ADD
    rentDue ENUM('Yes', 'No');

UPDATE
    FlatInfo
SET
    rentDue = 'No';

INSERT INTO
    TenantInfo (
        tenantId,
        firstName,
        lastName,
        age,
        personalIdentification,
        phone,
        email,
        flatId
    )
VALUES
    (
        tenantId :int,
        'firstName:varchar',
        'lastName:varchar',
        age :int,
        'personalIdentification:varchar',
        'phone:varchar',
        'email:varchar',
        flatId :int
    );

INSERT INTO
    TenantInfo(age)
VALUES
    (510001),
    (510002),
    (510003),
    (510004),
    (510005),
    (510006),
    (510007),
    (510008),
    (510009),
    (510010),
    (510011),
    (510012),
    (510013),
    (510014),
    (510015),
    (510016),
    (510017),
    (510018),
    (510019),
    (510020),
    (510021),
    (510022),
    (510023),
    (510024),
    (510025),
    (510026),
    (510027),
    (510028),
    (510029),
    (510030),
    (510031),
    (510032),
    (510033),
    (510034),
    (510035),
    (510036),
    (510037),
    (510038),
    (510039),
    (510040),
    (510041),
    (510042),
    (510043),
    (510044),
    (510045),
    (510046),
    (510047),
    (510048),
    (510049),
    (510050);

DROP TABLE TenantInfo;