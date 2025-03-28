-- w6d1 pag 2 ex 3,4
SELECT *
FROM
    (SELECT 
        ProductKey,
            ProductAlternateKey,
            EnglishProductName,
            Color,
            StandardCost,
            FinishedGoodsFlag
    FROM
        dimproduct) AS products
        where FinishedGoodsFlag =1;
        
      
      
      -- w6d1 pag 2 ex 5
      SELECT 
    ProductKey,
    ProductAlternateKey,
    EnglishProductName,
    Color,
    StandardCost,
    FinishedGoodsFlag,
    ListPrice - StandardCost as Markup

    
FROM
    dimproduct
WHERE
    ProductAlternateKey LIKE 'FR%'
        OR ProductAlternateKey LIKE 'BK%';
        
        
        -- ex 6
         SELECT 
    ProductKey,
    ProductAlternateKey,
    EnglishProductName,
    Color,
    StandardCost,
    FinishedGoodsFlag
FROM
    dimproduct
WHERE
    ListPrice BETWEEN 1000 AND 2000;
    -- ex 7
    
    select * 
    from dimemployee;
    -- ex 8
    SELECT 
  EmployeeKey,
  FirstName ,
  LastName ,
  Title ,
  HireDate ,
  SalespersonFlag 
FROM dimemployee
WHERE SalespersonFlag = 1;

-- ex 9

SELECT 
    *, SalesAmount - TotalProductCost AS revenue
FROM
    factinternetsales
WHERE
    orderdate >= '2020-01-01'
        AND productkey IN (597 , 598, 477, 214)
;
