--q2
SELECT
    sum(amount) as "Total Payment on Oct 28, 2004"
from
    payments
where
    paymentDate = '2004-10-28';

--q4
SELECT
    *
FROM
    products
WHERE
    productCode NOT IN(
        SELECT
            productCode
        FROM
            orderdetails
    );

--q6
SELECT
    *
FROM
    employees
WHERE
    firstName NOT IN ('Diane', 'Dianne')
    OR lastName NOT IN ('Diane', 'Dianne');

--q8
SELECT
    productName,
    productLine,
    100 * quantityInStock * buyPrice /(
        SELECT
            SUM(quantityInStock * buyPrice)
        FROM
            products
        WHERE
            P.productLine = products.productLine
    ) as perc
FROM
    products P
ORDER BY
    productLine,
    perc DESC;

--q10
SELECT
    -- *
    sum((priceEach - buyPrice) * quantityOrdered) as Profit,
    productLine
FROM
    products p
    join orderdetails o ON p.productCode = o.productCode
GROUP BY
    productLine
ORDER BY
    Profit DESC;