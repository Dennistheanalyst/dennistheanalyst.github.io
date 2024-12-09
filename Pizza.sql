USE [Pizza DataBase]
GO

SELECT [pizza_id]
      ,[order_id]
      ,[pizza_name_id]
      ,[quantity]
      ,[order_date]
      ,[order_time]
      ,[unit_price]
      ,[total_price]
      ,[pizza_size]
      ,[pizza_category]
      ,[pizza_ingredients]
      ,[pizza_name]
  FROM [dbo].[pizza_sales$]

GO

--Total Revenue
SELECT ROUND(SUM([total_price]),2) AS Total_revenue
FROM [dbo].[pizza_sales$]


--Total Pizzas Sold
SELECT SUM([quantity]) AS Total_pizza_sold
FROM [dbo].[pizza_sales$]

--Total number of Orders
SELECT COUNT(distinct [order_id]) AS Total_number_of_orders
FROM [dbo].[pizza_sales$]


--How many order Veggie pizza category was sold
SELECT SUM([quantity]) AS #_of_pizza_sold
FROM [dbo].[pizza_sales$]
WHERE [pizza_category] = 'Veggie'

--How many  The Hawaiian Pizza and  The Greek Pizza  was sold
SELECT SUM([quantity]) AS #_of_pizza_sold
FROM [dbo].[pizza_sales$]
WHERE [pizza_name] IN ('The Hawaiian Pizza','The Greek Pizza')

--List of pizza ordered in January 2015
SELECT *
FROM [dbo].[pizza_sales$]
WHERE [order_date] = '2015-01-01'

--List of pizza ordered between 1st of November till 31st December 2015
SELECT *
FROM [dbo].[pizza_sales$]
WHERE [order_date] BETWEEN '2015-11-01' AND '2015-12-31'

--What is the quantity of The Spinach Supreme Pizza sold in March 2015
SELECT SUM([quantity])
FROM [dbo].[pizza_sales$]
WHERE [pizza_name] = 'The Spinach Supreme Pizza'

--List of Medium pizza sold
SELECT *
FROM [dbo].[pizza_sales$]
WHERE [pizza_size] = 'M'

--List of pizza that sold for more than 12.5
SELECT *
FROM[dbo].[pizza_sales$]
WHERE [unit_price] > 12.5

