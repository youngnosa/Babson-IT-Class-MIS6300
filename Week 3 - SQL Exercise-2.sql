/*1, Display the total amount collected from the orders for each order date. */
SELECT OrderDate, SUM(TotalDue)
FROM Sales.SalesOrderHeader
GROUP BY OrderDate


/*2, Display the total amount collected from selling each of the products, 774 and 777.*/
SELECT ProductID, SUM(LineTotal) AS TotalAmountCollected
FROM Sales.SalesOrderDetail
WHERE ProductID IN (777,774)
GROUP BY (ProductID)


/*3, Write a query to display the sales person BusinessEntityID, last name and first name of ALL the sales persons and the name of the territory to which they belong, even though they don't belong to any territory.*/
SELECT BusinessEntityID, LastName, FirstName 
FROM Person.Person
Order BY BusinessEntityID


/*4,  Write a query to display the Business Entities (IDs, names) of the customers that have the 'Vista' credit card.*/
/* Tables: Sales.CreditCard, Sales.PersonCreditCard, Person.Person*/
SELECT CardType, BusinessEntityID
FROM sales.CreditCard
JOIN Sales.PersonCreditCard 
ON Person.Person
WHERE CardType = 'Vista'


/*5, Write a query to display ALL the countries/regions along with their corresponding territory IDs, including those the countries/regions that do not belong to any territory.*/
/* tables: Sales.SalesTerritory and Person.CountryRegion*/


/*6, Find out the average of the total dues of all the orders.*/


/*7, Write a query to report the sales order ID of those orders where the total due is greater than the average of the total dues of all the orders*/
