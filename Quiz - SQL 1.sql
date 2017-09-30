1) 
SELECT Person.Person.FirstName, Person.Person.LastName, HumanResources.Employee.JobTitle, HumanResources.Employee.BirthDate
FROM Person.Person
INNER JOIN HumanResources.Employee ON Person.Person.BusinessEntityID=HumanResources.Employee.BusinessEntityID 
WHERE JobTitle='Sales Representative'
ORDER BY BirthDate ASC

2) 
SELECT ss.ProductID, pp.Name, SUM(ss.LineTotal) AS Total_Amount
FROM Sales.SalesOrderDetail AS ss
LEFT JOIN Production.Product AS pp ON ss.ProductID = pp.ProductID
GROUP BY ss.ProductID, pp.Name
HAVING SUM(ss.LineTotal)>5000

3)
SELECT s.BusinessEntityID, t.Name AS Territory_Name, s.SalesYTD
FROM Sales.SalesPerson AS s
LEFT JOIN Sales.SalesTerritory AS t ON s.TerritoryID = t.TerritoryID
WHERE s.SalesYTD >=500000


4)
SELECT SalesOrderID, OrderDate, TotalDue
FROM Sales.SalesOrderHeader
WHERE TotalDue > (SELECT AVG(TotalDue) FROM Sales.SalesOrderHeader WHERE OrderDate>='2008-01-01') 
AND OrderDate>='2008-01-01'


