SET
    FOREIGN_KEY_CHECKS = 0;

INSERT INTO
    BuildingInfo (
        buildingId,
        floors,
        flats,
        ownerId,
        managerId,
        address
    )
VALUES
    (
        210001,
        3,
        9,
        110001,
        140005,
        'Building 1, XYZ Housing.'
    ),
    (
        210002,
        4,
        16,
        110002,
        140048,
        'Building 2, XYZ Housing.'
    ),
    (
        210003,
        3,
        3,
        110003,
        140017,
        'Building 3, XYZ Housing.'
    ),
    (
        210004,
        8,
        16,
        110004,
        140012,
        'Building 4, XYZ Housing.'
    ),
    (
        210005,
        12,
        12,
        110005,
        140023,
        'Building 5, XYZ Housing.'
    ),
    (
        210006,
        6,
        6,
        110006,
        140029,
        'Building 6, XYZ Housing.'
    ),
    (
        210007,
        8,
        32,
        110007,
        140015,
        'Building 7, XYZ Housing.'
    ),
    (
        210008,
        7,
        28,
        110008,
        140016,
        'Building 8, XYZ Housing.'
    ),
    (
        210009,
        9,
        36,
        110009,
        140019,
        'Building 9, XYZ Housing.'
    ),
    (
        210010,
        10,
        20,
        110010,
        140027,
        'Building 10, XYZ Housing.'
    );

SET
    FOREIGN_KEY_CHECKS = 1;