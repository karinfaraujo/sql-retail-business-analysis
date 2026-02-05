# 🛒 Retail Sales Analysis | SQL + Power BI

## 📌 Project Overview
This project analyzes retail transaction data to uncover **revenue trends**, **product concentration**, and **geographical performance**.  
The objective is to demonstrate an end-to-end analytics workflow using **SQL for data preparation** and **Power BI for visualization and insights**.

The project was designed with a **business-focused approach**, prioritizing clarity, simplicity, and actionable insights.

---

## 📊 Dataset Overview
- **Time period:** 2010 – 2011  
- **Countries:** 38  
- **Unique products:** ~4,000  
- **Transactions:** Cleaned to include only valid sales  
- **Key metrics:** Revenue, Quantity, Orders, Customers  

Only completed transactions were considered (no cancellations, negative quantities, or invalid prices).

---
## Dataset

The original dataset (`retail.csv`) was not uploaded due to GitHub file size limitations.

The data is based on the public "Online Retail Dataset", widely used for analytics and BI projects.

---

## 🧹 Data Cleaning & Modeling (SQL)
The data preparation was fully performed in **SQLite**, including:

- Removal of canceled invoices
- Filtering out negative or zero quantities and prices
- Handling missing customer IDs
- Creation of a clean analytical table
- Date standardization and creation of a `Year-Month` field
- Star-schema style modeling for analytical use

The final model supports **time-series analysis**, **product performance**, and **geographical comparisons**.

---

## 📈 Executive Insights
Key business insights derived from the analysis:

- **Revenue is highly concentrated geographically**, with the **United Kingdom dominating total sales** compared to other countries.
- **Strong revenue peak followed by a sharp decline**, clearly visible in the time-series analysis.
- **Product concentration is significant**, with a small number of products accounting for a disproportionate share of total revenue.
- The business shows **high dependency on top-performing products**, increasing exposure to demand fluctuations.

These insights highlight opportunities for **market diversification** and **product portfolio optimization**.

---

## 📊 Power BI Dashboard
The Power BI dashboard enables interactive exploration of:

- 📈 Revenue trends over time (Line Chart)
- 📊 Product revenue concentration (Bar Chart)
- 🌍 Revenue distribution by country (Map)
- 🔵 Performance analysis combining revenue and quantity (Scatter Plot)

A preview image is included in the repository, and the full interactive experience is available in the `.pbix` file.

---

## 🛠 Tools Used
- **SQL (SQLite)** – Data cleaning, transformation, and modeling  
- **Power BI** – Data visualization and dashboarding  
- **GitHub** – Project versioning and portfolio presentation  

---

## ▶️ How to Use
1. Open the `.pbix` file in **Power BI Desktop**
2. Review the dashboard and interact with the visuals
3. SQL scripts are available in the repository for full transparency and reproducibility

---

## 💡 Final Notes
This project emphasizes **clear business storytelling**, **simple modeling**, and **executive-level insights**, aligning with real-world analytics and decision-making scenarios.
