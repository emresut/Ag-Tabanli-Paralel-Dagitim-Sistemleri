USE project_5_db;

INSERT INTO clean_employee_table (
    Employee_ID,
    First_Name,
    Last_Name,
    Age,
    Department,
    Region,
    Status,
    Join_Date,
    Salary,
    Email,
    Phone,
    Performance_Score,
    Remote_Work
)
SELECT
    Employee_ID,

    NULLIF(LTRIM(RTRIM(First_Name)), '') AS First_Name,

    NULLIF(LTRIM(RTRIM(Last_Name)), '') AS Last_Name,

    CASE
        WHEN TRY_CAST(Age AS INT) BETWEEN 18 AND 65 THEN TRY_CAST(Age AS INT)
        ELSE NULL
    END AS Age,

    CASE
        WHEN CHARINDEX('-', REPLACE(Department_Region, '_', '-')) > 0
            THEN LEFT(REPLACE(Department_Region, '_', '-'),
                      CHARINDEX('-', REPLACE(Department_Region, '_', '-')) - 1)
        ELSE NULL
    END AS Department,

    CASE
        WHEN CHARINDEX('-', REPLACE(Department_Region, '_', '-')) > 0
            THEN SUBSTRING(
                    REPLACE(Department_Region, '_', '-'),
                    CHARINDEX('-', REPLACE(Department_Region, '_', '-')) + 1,
                    LEN(REPLACE(Department_Region, '_', '-'))
                 )
        ELSE NULL
    END AS Region,

    Status,

    CASE
        WHEN TRY_CONVERT(DATE, Join_Date, 101) IS NOT NULL THEN TRY_CONVERT(DATE, Join_Date, 101)
        WHEN TRY_CONVERT(DATE, Join_Date, 103) IS NOT NULL THEN TRY_CONVERT(DATE, Join_Date, 103)
        ELSE NULL
    END AS Join_Date,

    CASE
        WHEN TRY_CAST(Salary AS DECIMAL(12,2)) > 0 THEN TRY_CAST(Salary AS DECIMAL(12,2))
        ELSE NULL
    END AS Salary,

    CASE
        WHEN Email LIKE '%_@_%._%' THEN Email
        ELSE NULL
    END AS Email,

    CASE
        WHEN Phone IS NULL OR LTRIM(RTRIM(Phone)) = '' OR Phone = 'no-phone' THEN NULL
        ELSE Phone
    END AS Phone,

    Performance_Score,

    CASE
        WHEN UPPER(Remote_Work) = 'TRUE' THEN 1
        WHEN UPPER(Remote_Work) = 'FALSE' THEN 0
        ELSE NULL
    END AS Remote_Work

FROM messy_employee_table;