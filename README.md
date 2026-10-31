# Amazon-Sales-Analysis-Project
Data analytics project showcasing Amazon Sales Analysis using Python, SQL, PostgreSQL, and Power BI.

# 📊 Data Analytics Project

## 📌 Overview

This project demonstrates an end-to-end **Data Analytics workflow**, starting from raw Amazon sales data loading and exploration to data cleaning, SQL analysis, dashboard development, business reporting, and presentation.

The goal of this project is to analyze Amazon sales transactions, understand product performance, identify regional sales trends, and generate meaningful business insights to support data-driven decisions.

---

## 📂 Dataset

The project uses the **Amazon Sale Report** dataset, which contains transaction-related information such as order IDs, dates, product categories, SKUs, quantities, sales amounts, fulfilment methods, order status, and shipping locations.

## About this file
## File Description

File Name: amazon_sales_report.csv
## Description:
The amazon_sales_report.csv file contains simulated sales data designed to mimic transactions from Amazon. This dataset is intended for use in educational and analytical projects, providing insights into various aspects of sales performance, order fulfillment, and customer behavior.
The dataset was loaded into Python for exploration and data preparation.

### Dataset Preparation
- Loaded the CSV dataset using Pandas.
- Checked the number of rows and columns.
- Identified missing values.
- Checked duplicate records.
- Removed the unnecessary `Unnamed: 22` column.
- Reviewed and converted data types.
- Handled missing values in selected columns.
- Converted sales amount and quantity into numeric formats.
- Prepared the cleaned data for SQL analysis.
- Exported the cleaned dataset to Excel.

**Dataset file:** `Amazon Sale Report.csv`
**Data source:** https://www.kaggle.com/code/hidayatrhd/amazon-sale-report
---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| 🐍 Python | Data loading, cleaning, and EDA |
| 🐼 Pandas | Data manipulation and analysis |
| 🔢 NumPy | Numerical operations |
| 📊 Matplotlib / Seaborn | Data visualization |
| 🗄️ PostgreSQL | SQL-based business analysis |
| 📝 MS Excel | Cleaned data storage and review |
| 📈 Power BI | Interactive dashboard creation |
| 🎨 Gamma | Presentation/PPT creation |
| 🐙 GitHub | Project documentation and version control |

---

## 🔄 Project Workflow

```text
Raw Amazon Sales Dataset
          ↓
Load Data in Python
          ↓
Exploratory Data Analysis (EDA)
          ↓
Data Cleaning & Preparation
          ↓
Export Cleaned Dataset to Excel
          ↓
Import Data into PostgreSQL
          ↓
SQL Business Analysis
          ↓
Power BI Dashboard
          ↓
Business Report
          ↓
Gamma Presentation
```

---

## 🔍 Steps Performed

### 1. Data Loading

The Amazon sales dataset was imported into Python using Pandas.

```python
import pandas as pd

df = pd.read_csv("Amazon Sale Report.csv")

print(df.head())
print(df.shape)
print(df.info())
```

The dataset structure was reviewed to understand its columns, data types, and overall quality.

### 2. Exploratory Data Analysis (EDA)

Performed EDA to understand the structure, quality, and patterns in the Amazon sales dataset.

Key activities:

- Dataset overview and statistical summary
- Missing-value analysis
- Duplicate-record analysis
- Data-type checking
- Sales amount and quantity analysis
- Product category analysis
- State-wise sales analysis
- Monthly sales trend analysis
- Order status analysis
- Identification of data quality issues

### 3. Data Cleaning

The dataset was cleaned using Python and Pandas before performing further analysis.

Tasks included:

- Removed the unnecessary `Unnamed: 22` column.
- Checked duplicate records.
- Handled missing values in selected shipping and fulfilment columns.
- Converted the `Date` column to datetime format.
- Converted `Amount` and `Qty` columns to numeric formats.
- Reviewed missing sales amounts.
- Standardized shipping postal-code values.
- Checked the final dataset shape and missing values.
- Exported the cleaned dataset to Excel.

**Output file:** `Amazon_Sales_Cleaned.xlsx`

*Note: Missing sales amounts and invalid dates should be reviewed separately rather than automatically treated as valid sales records.*

### 4. SQL Analysis Using PostgreSQL

The cleaned dataset was imported into PostgreSQL for business analysis.

**Database:** `Amazon_Sales_db`

**Table:** `sale`

SQL was used to answer important business questions.

#### Business Questions

1. What are the total sales, average sales amount, and total quantity sold?
2. Which product categories generate the highest sales?
3. Which are the top 10 states by sales amount?
4. How do sales change month by month?
5. Which are the top 10 SKUs by sales amount?
6. Which are the top 10 SKUs by quantity sold?
7. How many orders fall under each order status?
8. What is the order cancellation percentage?
9. Which states have an average sales amount greater than ₹1,000?
10. Which fulfilment methods contribute the most to sales?

These queries help analyze product performance, regional sales, order status, and fulfilment patterns.

### 5. Power BI Dashboard

The cleaned Amazon sales dataset can be connected to **Power BI** to create an interactive sales analysis dashboard.

#### Suggested Dashboard Features

- 📌 Total Sales KPI
- 💰 Average Sales Amount KPI
- 📦 Total Quantity Sold KPI
- 🏷️ Sales by Product Category
- 🏆 Top-Selling SKUs
- 🌍 State-Wise Sales Performance
- 📈 Monthly Sales Trend
- 📋 Order Status Distribution
- 🚚 Sales by Fulfilment Method
- 🔎 Interactive filters for date, category, state, and fulfilment

The dashboard can help users explore sales performance and compare products, locations, and order patterns.


### 6. Business Report

A business report can be prepared using the results from Python, SQL, and Power BI.

The report should explain:

- Project overview and dataset details
- Data cleaning methodology
- Sales and quantity analysis
- Product category performance
- State-wise sales distribution
- Monthly sales trends
- Order status and cancellation analysis
- Key business findings
- Data-driven recommendations

**Report file:** `Amazon_Sales_Performance_Analysis_Report.pdf`

### 7. Presentation

A presentation can be created using Gamma to communicate the project findings in a simple and visual format.

The presentation can cover:

- Business problem
- Dataset overview
- Tools and technologies
- Data cleaning process
- SQL analysis
- Dashboard overview
- Key insights
- Business recommendations
- Conclusion

**Presentation file:** `Amazon_Sales_Analysis_Presentation.pdf`

---

## 📊 Dashboard

The Power BI dashboard is intended to provide an interactive view of Amazon sales performance.

### Dashboard Features

- 📌 KPI Summary
- 📈 Monthly Sales Trend
- 🏷️ Category-Wise Sales Analysis
- 🌍 Regional Sales Performance
- 📦 Top Products by Sales
- 📋 Order Status Analysis
- 🚚 Fulfilment Analysis
- 🔎 Interactive Filters and Slicers

<img width="1156" height="648" alt="Dashboard_Screenshot png" src="https://github.com/user-attachments/assets/ce78ae80-fef3-4ea6-b4e5-2900b60284da" />


## 📈 Results

The project provides a structured workflow for analyzing Amazon sales data and extracting business insights.

### Key Outcomes

- Explored and cleaned the raw sales dataset.
- Identified and reviewed missing values and duplicate records.
- Prepared the dataset for SQL analysis.
- Analyzed sales by category and state.
- Examined monthly sales patterns.
- Identified top-performing SKUs by sales and quantity.
- Analyzed order status and cancellation percentage.
- Prepared the foundation for an interactive Power BI dashboard.
- Organized the analysis into a business report and presentation.

*Final numerical findings should be added after reviewing the actual Python outputs, SQL query results, and dashboard.*

---

## 💡 Business Recommendations

Based on the final analysis results, recommendations can focus on:

- **Product Performance:** Give more attention to categories and SKUs that contribute strongly to sales.
- **Inventory Planning:** Use quantity analysis to identify products with higher demand.
- **Regional Strategy:** Compare state-wise sales to identify opportunities for regional growth.
- **Sales Planning:** Use monthly trends to support demand forecasting and planning.
- **Order Management:** Investigate cancellation patterns and identify opportunities to reduce cancellations.
- **Fulfilment Efficiency:** Compare sales and order patterns across fulfilment methods.
- **Data Quality:** Continue monitoring missing amounts, invalid dates, and incomplete transaction records.

Recommendations should be updated to reflect the actual findings from the completed analysis.

---

## ▶️ How to Run

### Step 1: Clone the Repository

```bash
git clone https://github.com/yourusername/Amazon-Sales-Analysis-Project.git
cd Amazon-Sales-Analysis-Project
```

Replace `yourusername` with your GitHub username and use your actual repository URL.

### Step 2: Install Python Libraries

```bash
pip install pandas numpy matplotlib seaborn openpyxl sqlalchemy psycopg2-binary jupyter
```

### Step 3: Run the Python Analysis

Open Jupyter Notebook:

```bash
jupyter notebook
```

Run the notebook containing your Amazon sales data loading, EDA, cleaning, and analysis.

Make sure the dataset path in your code matches the location of `Amazon Sale Report.csv`.

### Step 4: Run SQL Analysis

1. Open PostgreSQL using pgAdmin or your preferred SQL client.
2. Create or select the `Amazon_Sales_db` database.
3. Import the cleaned dataset into the `sale` table.
4. Run the SQL queries to answer the business questions.

Store the queries in:

```text
sql/Amazon_Sales_Analysis.sql
```

### Step 5: Open Power BI

Open the Power BI dashboard file:

```text
powerbi/Amazon_Sales_Dashboard.pbix
```

Refresh the data source if required and explore the dashboard.

*This step applies after the Power BI dashboard file has been created.*

### Step 6: View the Report & Presentation

The final report and presentation can be stored in:

```text
report/Amazon_Sales_Performance_Analysis_Report.pdf
presentation/Amazon_Sales_Analysis_Presentation.pdf
```

---

## 📁 Project Structure

```text
Amazon-Sales-Analysis-Project/
│
├── data/
│   ├── raw/
│   │   └── Amazon Sale Report.csv
│   └── cleaned/
│       └── Amazon_Sales_Cleaned.xlsx
│
├── notebooks/
│   └── Amazon_Sales_Analysis.ipynb
│
├── sql/
│   └── Amazon_Sales_Analysis.sql
│
├── powerbi/
│   └── Amazon_Sales_Dashboard.pbix
│
├── report/
│   └── Amazon_Sales_Performance_Analysis_Report.pdf
│
├── presentation/
│   └── Amazon_Sales_Analysis_Presentation.pdf
│
├── images/
│   └── amazon_sales_dashboard.png
│
└── README.md
```

*The folder structure above is a suggested organization. Keep only files and folders that actually exist in your repository.*

---

## 🎯 Skills Demonstrated

- Python
- Pandas
- NumPy
- Exploratory Data Analysis (EDA)
- Data Cleaning
- PostgreSQL
- SQL Queries
- Data Analysis
- Power BI
- Data Visualization
- Business Analysis
- KPI Analysis
- Dashboard Development
- Business Reporting
- Presentation Development
- Git & GitHub

---

## 👨‍💻 Author

**Danisaram Anji**

Aspiring Data Analyst | B.Tech ECE Student

**Skills:** Python • SQL • Excel • Power BI • Data Analytics

📧 Email: anjidanisaram@gmail.com

🔗 LinkedIn: [Anji Danisaram](https://www.linkedin.com/in/anjidanisaram/)

---

## 🏁 Conclusion

This Amazon Sales Analysis project demonstrates an end-to-end data analytics workflow using Python, Pandas, PostgreSQL, and Power BI. It focuses on data preparation, exploratory analysis, SQL-based business questions, and the development of actionable insights.

The project showcases practical skills in data cleaning, data analysis, database querying, visualization, and business reporting that are relevant to an aspiring Data Analyst.
