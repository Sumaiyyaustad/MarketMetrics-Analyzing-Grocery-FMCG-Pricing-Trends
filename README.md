
# 📊 MarketMetrics – Analyzing Grocery & FMCG Pricing Trends

## 📝 Overview  
MarketMetrics is an end-to-end data analytics project aimed at uncovering pricing patterns, brand distribution, and discount dynamics in the online grocery and FMCG sector using SQL and Python. The analysis was performed on a real-world dataset from BigBasket with over 28,000 products. The goal was to derive actionable business insights through queries, statistical exploration, and ranking using window functions.

## 👥 Team Members  
**Ustad sumaiyya** – Project Lead, SQL Analyst, Report Design  
**Deepak Kumar** – Data Cleaning, Analysis Support, Visualization Assistance  

## 🧾 Dataset  
**Source: Kaggle – BigBasket Entire Product List**
📎 https://www.kaggle.com/datasets/surajjha101/bigbasket-entire-product-list-28k-datapoints

## Key Features:  
• Product Name, Category, Sub-category, Brand  
• Sale Price, Market Price  
• Rating, Description  

## 📁 Project Structure  
MarketMetrics/  
│── 📄 README.md                           # Project documentation  
│── 📄 MarketMetrics_Project_Report.docx  # Final Report with queries and insights  
│── 📂 data/                               # Dataset  
│   │── 📄 bigbasket_products_cleaned.csv  
│── 📂 notebooks/                          # SQL and Python-based explorations  
│   │── 📄 BigBasket Products01.ipynb      # Visual exploration & EDA  
│   │── 📄 MarketMetrics – Analyzing Grocery & FMCG Pricing Trends.sql  # SQL queries for insights  

## 🧹 Data Cleaning  
Performed using Pandas and SQL:  
- Removed duplicates and null values  
- Standardized category and brand names  
- Converted price columns to numerical types  
- Verified rating consistency and missing product metadata  

## 🧠 SQL Analysis  
We used MySQL for all queries and window functions.

Key Insights Extracted:
• Average sale price per category  
• Products priced above category average  
• Products with discounts >30%  
• Most expensive item in each category  
• Products with rating >4.5  
• Top 5 premium products in each category using ROW_NUMBER  
• Running average prices and price percentiles for smarter tiering  
• Product counts by brand to determine market dominance  

## 🧠Insights (from Jupyter Notebook Analysis)

✔️ **Category Pricing Behavior**  
- Categories like **packaged food** and **personal care** show a wide range in pricing.
- After capping outliers using IQR methods, price comparisons became more stable.
  
✔️ **Brand Strategy Observations**  
- Budget brands have **narrow and consistent pricing**, while premium brands show **wider price spreads**.
- Even top-performing brands have **outlier products**, often premium or import items.

✔️ **Brand Dominance by Category**  
- Specific brands are category leaders, dominating segments like **beverages** or **hygiene**.
- Useful for prioritizing **category-level promotions** and **supply chain focus**.

## 📌 Key Features  
✔️ SQL and python - based insights and trend detection  
✔️ Use of window functions (`ROW_NUMBER()`, `AVG() OVER`, `PERCENT_RANK()`)  
✔️ Detailed project report with team insights and recommendations  
✔️ Real-world retail dataset covering 28K products  
✔️ Tiered strategy recommendation using product price segments  


## 💬 Acknowledgments  
Thanks to the Kaggle community and the BigBasket dataset contributor.  
Special appreciation to the **Girish sir**  for support.

## 📜 License  
This project is open-source and available for modification and educational use.

## 📩 Contributions & Feedback  
Feel free to fork this repo, raise issues, or contribute enhancements!  
Happy Coding! 🚀




