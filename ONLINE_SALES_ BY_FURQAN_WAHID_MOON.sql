create database online_sales;
use online_sales;

SELECT * FROM online_sales_data;

# KPI 1
SELECT 
    SUM(Total_Revenue) AS Total_Revenue
FROM 
    Online_Sales_Data;

# KPI 2
SELECT 
    Region,
    SUM(Total_Revenue) AS Total_Revenue_Generated
FROM 
    Online_Sales_Data
GROUP BY 
    Region
ORDER BY 
    Total_Revenue_Generated DESC;
    
# KPI 3
SELECT 
    Payment_Method,
    COUNT(Payment_Method) AS Usage_Count
FROM 
    Online_Sales_Data
GROUP BY 
    Payment_Method
ORDER BY 
    Usage_Count DESC
LIMIT 1;

# KPI 4
SELECT 
    Payment_Method,
    COUNT(Payment_Method) AS Total_Usage
FROM 
    Online_Sales_Data
GROUP BY 
    Payment_Method
ORDER BY 
    Total_Usage DESC;

# KPI 5
SELECT 
    Product_Category,
    SUM(Total_Revenue) AS Total_Revenue_Generated
FROM 
    Online_Sales_Data
GROUP BY 
    Product_Category
ORDER BY 
    Total_Revenue_Generated DESC;
    
# KPI 6 
SELECT 
    DATE_FORMAT(Date, '%Y-%m') AS Month,
    SUM(Total_Revenue) AS Total_Revenue_Generated
FROM 
    Online_Sales_Data
GROUP BY 
    DATE_FORMAT(Date, '%Y-%m')
ORDER BY 
    Month;    
    
# KPI 7    
SELECT 
    COUNT(Transaction_ID) AS Total_Transactions
FROM 
    Online_Sales_Data;