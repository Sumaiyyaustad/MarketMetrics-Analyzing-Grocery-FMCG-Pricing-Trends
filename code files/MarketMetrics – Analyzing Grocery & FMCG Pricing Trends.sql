create database Bigbasket_analysis;
use Bigbasket_analysis;
select * from `bigbasket products cleaned`;
/* 1. Which product categories have the highest and lowest average prices?*/
SELECT 
    Category,
    ROUND(AVG(Sale_price), 2) AS Avg_Price
FROM 
    `bigbasket products cleaned`
GROUP BY 
    Category
ORDER BY 
    Avg_Price DESC;

/*Which products are priced above the average price in their category?*/
SELECT 
    Product,
    Category,
    Sale_price
FROM `bigbasket products cleaned`
    
WHERE 
    Sale_price > (
        SELECT AVG(Sale_price)
        FROM `bigbasket products cleaned` AS p2
        WHERE p2.Category = `bigbasket products cleaned`.Category
    );

/* Find products with discount more than 30%:*/
SELECT Product, Sale_price, Market_price,
       ROUND(((Market_price - Sale_price) / Market_price) * 100, 2) AS discount_percentage
FROM `bigbasket products cleaned`
WHERE ((Market_price - Sale_price) / Market_price) * 100 > 30;

# Count of products per brand
SELECT Brand, COUNT(*) AS product_count
FROM `bigbasket products cleaned`
GROUP BY Brand
ORDER BY product_count DESC;

# Most expensive product per category

SELECT Category, Product, MAX(Sale_price) AS highest_price
FROM `bigbasket products cleaned`
GROUP BY Category, Product;

#. Products with rating above 4.5
SELECT Product, Rating
FROM `bigbasket products cleaned`
WHERE Rating > 4.5;

#Use subqueries to find top 5 expensive items in each category
SELECT *
FROM (
    SELECT 
        Category,
        Product,
        Sale_price,
        ROW_NUMBER() OVER (PARTITION BY Category ORDER BY Sale_price DESC) AS rank_
    FROM `bigbasket products cleaned`
) AS ranked_products
WHERE rank_ <= 5;

# Running Average of Sale_price Within Each Category
SELECT 
    Category,
    Product,
    Sale_price,
    ROUND(AVG(Sale_price) OVER (PARTITION BY Category ORDER BY Sale_price), 2) AS running_avg
FROM `bigbasket products cleaned`;

/*1. Category-Level Pricing Insights
Most Expensive Categories: Certain categories (like Beauty & Hygiene, Gourmet) have the highest 
average prices, indicating premium product segments.
Least Expensive Categories: Categories like Foodgrains & Beverages are budget-friendly, ideal 
for mass-market targeting.

 2. High-Value Product Detection
Identified products priced above the average in their own category — these are likely premium 
or flagship items worth promoting for higher margins.

3. Discount & Offer Strategy
Many products have discounts >30%, revealing opportunities for:
Promotion strategy
Inventory clearance
Customer acquisition via deep discounts

4. Brand Dominance
Some brands have a large number of listed products, suggesting:
Strong supplier relationships
Need to prioritize inventory, ads, and pricing strategies around top brands

5. Premium Product Spotlights
Found the top 5 most expensive products in each category using window functions — helpful for:
Premium product highlighting
Luxury bundles or personalized offers

6. Customer Sentiment
Products with ratings above 4.5 reflect customer satisfaction, useful for:
Featuring in “Top Rated” sections
Boosting trust in similar new products


