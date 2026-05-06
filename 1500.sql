SELECT "Cégnév", "Főtevékenység", "nettó_árbevétele"
FROM  "1500"."1500sheet"
Order BY nettó_árbevétele DESC;

________________________________________


SELECT "Cégnév", "Főtevékenység", "eredmény"
FROM  "1500"."1500sheet"
Order BY eredmény DESC;


________________________________________

SELECT 
    "Székhely", 
    SUM(
        CAST(
            REPLACE("nettó_árbevétele"::text, ' ', '') 
        AS BIGINT)
    ) AS osszes_arbevetel
FROM 
    "1500"."1500sheet"
GROUP BY 
    "Székhely"
ORDER BY 
    osszes_arbevetel DESC;

SELECT 
    "ir.szám", 
    SUM(
        CAST(
            REPLACE("nettó_árbevétele"::text, ' ', '') 
        AS BIGINT)
    ) AS osszes_arbevetel
FROM 
    "1500"."1500sheet"
GROUP BY 
    "ir.szám"
ORDER BY 
    osszes_arbevetel DESC;

__________________________________________


SELECT 
    "Székhely", 
    SUM(
        CAST(
            REPLACE("eredmény"::text, ' ', '') 
        AS BIGINT)
    ) AS osszes_eredmeny
FROM 
    "1500"."1500sheet"
GROUP BY 
    "Székhely"
ORDER BY 
    osszes_eredmeny DESC;

SELECT 
    "ir.szám", 
    SUM(
        CAST(
            REPLACE("eredmény"::text, ' ', '') 
        AS BIGINT)
    ) AS osszes_eredmeny
FROM 
    "1500"."1500sheet"
GROUP BY 
    "ir.szám"
ORDER BY 
    osszes_eredmeny DESC;


___________________________________________

SELECT 
    "Főtevékenység", 
    SUM(
        CAST(
            REPLACE("nettó_árbevétele"::text, ' ', '') 
        AS BIGINT)
    ) AS osszes_arbevetel
FROM 
    "1500"."1500sheet"
GROUP BY 
    "Főtevékenység"
ORDER BY 
    osszes_arbevetel DESC;


___________________________________________

SELECT 
    "Főtevékenység", 
    SUM(
        CAST(
            REPLACE("eredmény"::text, ' ', '') 
        AS BIGINT)
    ) AS osszes_eredmeny
FROM 
    "1500"."1500sheet"
GROUP BY 
    "Főtevékenység"
ORDER BY 
    osszes_eredmeny DESC;


___________________________________________


SELECT 
    "Főtevékenység", 
    "Székhely",
    SUM(
        CAST(
            REPLACE("nettó_árbevétele"::text, ' ', '') 
        AS BIGINT)
    ) AS osszes_arbevetel
FROM 
    "1500"."1500sheet"
GROUP BY 
    "Főtevékenység", 
    "Székhely"
ORDER BY 
    osszes_arbevetel DESC;


___________________________________________

SELECT 
    "Főtevékenység", 
    "Székhely",
    SUM(
        CAST(
            REPLACE("eredmény"::text, ' ', '') 
        AS BIGINT)
    ) AS osszes_eredmeny
FROM 
    "1500"."1500sheet"
GROUP BY 
    "Főtevékenység", 
    "Székhely"
ORDER BY 
    osszes_eredmeny DESC;