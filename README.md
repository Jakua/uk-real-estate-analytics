UK Real Estate Market Analytics Dashboard
🚀 End-to-End Data Analytics Project | Python → MySQL/SQL → Power BI

An end-to-end real estate analytics project focused on UK property pricing, market segmentation, property characteristics, geographical distribution and business intelligence reporting.

1. Project Overview & Architecture

This project analyses a UK residential property dataset containing 22,258 property records. Python was used for data cleaning and transformation, MySQL was used for structured data storage and SQL-based analysis, and Power BI was used to develop an interactive business intelligence dashboard.

After data cleaning, standardisation and validation, 21,361 records were retained for analysis.

🔄 Data Pipeline
Raw UK Property Data
        ↓
Python / Pandas
        ↓
Data Cleaning & Transformation
        ↓
MySQL Database
        ↓
SQL Exploratory Analysis
        ↓
Power BI
        ↓
Interactive Dashboard
        ↓
Business Insights & Recommendations
2. Tools & Technologies
Data Analytics
Python
Pandas
NumPy
Microsoft Excel
Database
MySQL
SQL
Business Intelligence
Microsoft Power BI
DAX
Power BI Data Modelling
3. Data Cleaning & Preparation — Python

Python was used to prepare the raw property dataset for analysis.

The initial dataset contained missing values across several variables, including property type, bedrooms, bathrooms and tenure. The property_subtype column contained no usable observations and was removed.

Key Data Preparation Steps
1. Date Conversion

The latest_date field was converted from text into a proper datetime format.

2. Price Cleaning

Currency symbols and formatting were removed from latest_price, allowing the field to be converted into a numeric variable.

3. Missing Value Treatment

Missing bedroom values were replaced using the mean bedroom value and rounded to whole numbers.

Missing bathroom values were treated using the mean and rounded to whole numbers.

Missing tenure values were replaced using the most frequent category.

4. Property Type Standardisation

Property types were standardised into four categories:

Flat
Terraced
Semi-Detached
Detached

Invalid property-type records were removed.

5. Price Outlier Treatment

Extreme property prices were controlled using the 1st and 99th percentiles before applying price caps.

6. Bedroom Segmentation

Properties with more than six bedrooms were grouped into 6+, while six-bedroom properties remained in their own category.

1 | 2 | 3 | 4 | 5 | 6 | 6+

The resulting distribution contained 23 properties in the 6+ category.

7. Bathroom Treatment

Bathroom values were capped at a maximum of 5 to limit the influence of extreme values.

8. Address & Geographical Cleaning

Addresses were cleaned and town/city information was extracted and standardised for geographical analysis.

The resulting analysis included locations such as London, Birmingham, Manchester, Liverpool, Guildford, Brighton, Maidstone, Aberdeen, Swindon, Reading, Slough, Rochester and Milton Keynes.

Final Dataset

After cleaning:

21,361 records
No duplicate rows
No missing values in the final analytical dataset
Corrected data types
Standardised property categories
Cleaned geographical fields
4. SQL Analytics

The cleaned dataset was loaded into a MySQL database and analysed using SQL.

SQL analyses include:
Dataset Overview
SELECT 
    COUNT(*) AS total_rows
FROM sale;
Property Type Distribution

Identifies the number of properties within each property category.

Average Price by Property Type

Compares average property prices across:

Flats
Terraced
Semi-Detached
Detached
Bedroom Distribution

Examines the number of properties by bedroom count.

Property Type × Bedroom Segmentation

Analyses property volume and average price across property types and bedroom categories.

Price Ranking

A SQL window function was used to rank property types by average price within each bedroom category:

RANK() OVER (
    PARTITION BY bedrooms 
    ORDER BY AVG(latest_price) DESC
) AS price_rank
New Build vs Old Build

Compares property volumes and average prices between new-build and older properties.

Tenure Analysis

Examines the relationship between tenure, bedrooms, property volume and average price.

5. Power BI Dashboard

An interactive 5-page Power BI dashboard was developed to transform the analytical results into an executive-friendly reporting environment.

Page 1 — Executive Overview

Provides a high-level snapshot of the UK property market, including:

Total properties
Average price
Average bedrooms
New-build percentage
Price range
Property distribution
Insight

Provides a macro-level overview of the property market.

Page 2 — Deep Market Analysis

Focuses on property segmentation and pricing, including:

Price by bedroom group
Property volume by bedrooms
New Build vs Old Build
Property type distribution
Premium market segments
Insight

Shows how property characteristics and market segments relate to pricing.

Page 3 — Market Trend Analysis

Examines changes in property prices and market behaviour across time and structural segments.

Insight

Helps identify changing pricing patterns and differences between market segments.

Page 4 — Price Distribution

Examines the distribution and spread of property prices across different property characteristics.

Insight

Highlights concentration, variation and differences in property pricing.

Page 5 — Key Influencers

Uses Power BI's Key Influencers visual to explore factors associated with property prices.

Insight

Provides an explainable approach to identifying factors associated with price variation.

6. Key Business Insights
🏢 Property Type

Flats are the dominant property category in the cleaned dataset:

Property Type	Properties
Flat	13,477
Terraced	4,506
Semi-Detached	2,439
Detached	967

🛏️ Bedroom Distribution

Three-bedroom properties represent the largest segment, with 15,409 properties in the cleaned dataset.

💷 Property Pricing

The cleaned dataset has:

Average price: £677,695
Median price: £445,000
Minimum price: £77,000
Maximum price: £5,703,090

The difference between average and median price indicates a positively skewed property-price distribution, with higher-priced properties influencing the mean.

📍 Geographical Distribution

London represents the largest geographical segment in the cleaned dataset, with 11,972 properties.

7. Business Recommendations
1. Segment the market by property type

Property type should be considered when evaluating market demand and pricing because the four property categories have substantially different market volumes.

2. Use bedroom count for pricing analysis

Bedroom count provides an important segmentation variable for comparing property prices and market composition.

3. Incorporate geographical analysis

Property-market performance should be evaluated at the town/city level rather than relying only on overall UK averages.

4. Compare new-build and older properties

Separating new-build and older properties can reveal differences in pricing and market positioning.

5. Use median and average prices together

Median price should be considered alongside average price because property values have a wide distribution.

8. Project Deliverables
UK-Real-Estate-Market-Analytics/
│
├── 1_Python_Pipeline/
│   └── real_estate_analysis.ipynb
│
├── 2_SQL_Scripts/
│   └── exploratory_analysis.sql
│
├── 3_PowerBI_Dashboard/
│   └── Real_Estate_Market_Dashboard.pbix
│
├── screenshots/
│   ├── overview.png
│   ├── market_analysis.png
│   ├── market_trend.png
│   ├── price_distribution.png
│   └── key_influencers.png
│
└── README.md
9. Skills Demonstrated
Python & Data Engineering
Pandas
Data cleaning
Missing-value treatment
Data transformation
Data validation
Feature engineering
Outlier treatment
Address standardisation
SQL & Database Analysis
COUNT()
AVG()
ROUND()
GROUP BY
ORDER BY
CASE
Window functions
RANK()
Market segmentation
Power BI & Business Intelligence
Dashboard development
KPI design
Interactive filtering
Data visualisation
DAX
Key Influencers
Market segmentation
Business storytelling
10. Future Improvements

Future development could include:

Property-price forecasting
Regression modelling
More advanced geographical analysis
Additional economic indicators
Automated data refresh
Advanced DAX measures
Predictive market indicators
11. Conclusion

This project demonstrates an end-to-end Data Analytics and Business Intelligence workflow, transforming raw UK property data into a structured analytical solution.

The combination of Python, MySQL/SQL and Power BI demonstrates practical capability across data preparation, database analysis, visualisation and business intelligence.

The final solution provides stakeholders with an interactive way to investigate property prices, property types, bedrooms, bathrooms, tenure, build status, geographical distribution and market trends.

⭐ One final recommendation

I would use this corrected README instead of the previous version.

Most importantly, it is now aligned with the code you actually showed me. Your original README was trying to make the project sound more advanced than the evidence currently supports. A strong portfolio README should be impressive but completely defensible.

Also, before uploading to GitHub, remove your MySQL username/password from the Python notebook/code. That is the one thing I would treat as urgent.

Pasted markdown(3).md
File

Yes — this version is much better and is close to ready for GitHub.

I reviewed the uploaded README against the Python and SQL work you provided. There are just a few things I would fix before you publish it.

1. Change the dashboard description

Your README correctly lists 6 Power BI sections/pages:

Overview
Market Analysis
Market Trend
Price Distribution
Key Influencers
Details

So don't describe it elsewhere as a 5-page dashboard. Keep it consistently as:

Interactive 6-page Power BI dashboard

The README currently lists all six pages at lines 219–225.

2. Your 21,361 figure is correct

Keep:

22,258 → 21,361 records

This agrees with your final Python dataset.

3. Keep the bedroom grouping

Your README says:

1 | 2 | 3 | 4 | 5 | 6 | 6+

That's correct for your Python code, where 6+ means more than 6 bedrooms.

4. One wording change I'd make

Change:

"predictive insights"

in the opening description to:

"market insights and business intelligence"

because your current demonstrated work is primarily descriptive/exploratory analytics and BI. Forecasting and regression are listed as future improvements, which is appropriate.

5. Add the actual screenshots

This is now the biggest missing piece.

Replace:

[ INSERT POWER BI OVERVIEW SCREENSHOT HERE ]

with your actual dashboard images. Your README already has the correct screenshot structure.

Overall

I'd now rate this README 9/10.

The structure is professional:

Business Problem → Objectives → Python → SQL → Power BI → Findings → Recommendations → Skills → Future Improvements

That's exactly the story a recruiter should be able to follow.

I would make the four small corrections above, add your dashboard screenshots, and then you're ready to push the README to GitHub.

write so I copy and paste with video and screen shot in it

Absolutely. Below is a complete GitHub-ready README.md that you can copy and paste directly. I have included sections for screenshots and your project demonstration video. You only need to put the actual image/video files into the repository with the names shown below.

# 🏠 UK Real Estate Market Analytics & Business Intelligence Dashboard

### 🚀 End-to-End Data Analytics Project | Python → MySQL/SQL → Power BI

An end-to-end real estate analytics and Business Intelligence project analysing UK residential property data to identify **pricing patterns, property segmentation, market composition, geographical distribution and key factors associated with property prices**.

---

## 📊 Project Overview

This project transforms raw UK property data into an interactive Business Intelligence solution using:

**Python → MySQL/SQL → Power BI**

The objective is to turn raw property records into meaningful insights about:

- Property prices
- Property types
- Bedrooms
- Bathrooms
- Tenure
- New-build status
- Geographical distribution
- Market trends
- Property segmentation

The original dataset contained **22,258 records**. After data cleaning, transformation, standardisation and validation, **21,361 records** were retained for analysis.

---

# 🎥 Project Demonstration

## Dashboard Walkthrough

The video below demonstrates the completed Power BI dashboard and its interactive analytical features.

> **Project Demonstration Video:**  
> `UK_Real_Estate_Dashboard_Demo.mp4`

If the video is stored in the repository:

```text
📁 video/
└── UK_Real_Estate_Dashboard_Demo.mp4

You can also add a direct link:

▶️ Watch the Dashboard Demonstration

🔄 Data Analytics Pipeline
                    RAW UK PROPERTY DATA
                             │
                             ▼
                         PYTHON
                             │
                ┌────────────┴────────────┐
                │                         │
          Data Cleaning            Data Transformation
                │                         │
                └────────────┬────────────┘
                             ▼
                   EXPLORATORY ANALYSIS
                             │
                             ▼
                         MYSQL
                             │
                    SQL ANALYSIS
                             │
                             ▼
                         POWER BI
                             │
                  INTERACTIVE DASHBOARD
                             │
                             ▼
                    BUSINESS INSIGHTS
                             │
                             ▼
                     RECOMMENDATIONS
🎯 Business Problem

The UK property market contains a large volume of information about properties, prices and characteristics. However, raw property data is difficult to interpret and use for decision-making without appropriate data cleaning, analysis and visualisation.

Business Question

How can UK property data be transformed into actionable insights that help stakeholders understand property prices, market composition, property characteristics and geographical differences?

The project investigates questions such as:

What is the average and median property price?
Which property types dominate the market?
How does property price vary by bedroom count?
How does property type affect property prices?
How does new-build status relate to property prices?
How does tenure relate to property characteristics and prices?
How are properties distributed across different towns?
How does the property market change over time?
🎯 Project Objectives

The main objectives of the project were to:

Clean and validate the raw UK property dataset.
Identify and handle missing values.
Standardise property categories.
Convert prices and dates into appropriate data types.
Identify and manage extreme property prices.
Clean and standardise geographical information.
Perform exploratory data analysis using Python.
Perform analytical queries using MySQL and SQL.
Build an interactive Power BI dashboard.
Identify important property-market patterns.
Generate business insights and recommendations.
🛠️ Technologies Used
Technology	Purpose
🐍 Python	Data cleaning, preparation and analysis
🐼 Pandas	Data manipulation and transformation
🔢 NumPy	Numerical analysis
🗄️ MySQL	Database storage and analysis
💻 SQL	Exploratory and analytical queries
📊 Power BI	Interactive dashboards and visualisation
📐 DAX	Power BI calculations and measures
📗 Excel	Cleaned dataset export and reporting
🐍 Python Data Cleaning & Preparation

Python was used as the main data-preparation environment.

The original dataset contained 22,258 rows and 10 columns.

The initial data-quality assessment identified missing values in:

Property type
Bedrooms
Bathrooms
Tenure

The property_subtype field contained no usable values and was removed.

Key Data Cleaning Steps
1. Date Conversion

The latest_date column was converted into a proper datetime format.

2. Price Cleaning

Currency symbols and formatting were removed from the property price field and converted into a numeric format.

3. Missing Value Treatment

Missing bedroom values were treated using the mean bedroom value.

Missing bathroom values were treated using the mean bathroom value.

Missing tenure values were treated using the most frequent category.

4. Property Type Standardisation

Property types were standardised into four categories:

Flat
Terraced
Semi-Detached
Detached
5. Outlier Treatment

Extreme property prices were controlled using the 1st and 99th percentiles.

6. Bedroom Segmentation

The bedroom categories used for analysis were:

1 | 2 | 3 | 4 | 5 | 6 | 6+

Where 6+ represents properties with more than six bedrooms.

7. Bathroom Treatment

Bathroom values were capped at a maximum of 5 to reduce the influence of extreme observations.

8. Address & Geographical Cleaning

Property addresses were cleaned and town/city information was extracted and standardised for geographical analysis.

📈 Data Quality Results

After cleaning and transformation:

Original records: 22,258
Final analytical records: 21,361
Duplicate rows: 0
Missing values in final analytical dataset: 0

The final dataset was structured and prepared for SQL analysis and Power BI reporting.

🗄️ MySQL & SQL Analysis

The cleaned dataset was migrated into a MySQL database for structured storage and analytical querying.

SQL was used to investigate:

Dataset Overview

Total number of property records.

Property Type Distribution

Number of properties by:

Flat
Terraced
Semi-Detached
Detached
Average Price by Property Type

Comparison of average property prices across property types.

Bedroom Distribution

Analysis of property volume by bedroom count.

Property Type × Bedroom Segmentation

Analysis of property volume and average price across property types and bedroom categories.

Price Ranking

A SQL window function was used to rank property types by average price within each bedroom category.

RANK() OVER (
    PARTITION BY bedrooms 
    ORDER BY AVG(latest_price) DESC
) AS price_rank
New Build vs Old Build

Comparison of property volume and average price between new-build and older properties.

Tenure Analysis

Analysis of the relationship between tenure, bedrooms, property volume and average price.

📊 Power BI Dashboard

An interactive 6-page Power BI dashboard was developed to transform the analytical results into an executive-friendly Business Intelligence solution.

Dashboard Pages
1️⃣ Executive Overview

Provides a high-level snapshot of the UK property market.

Key metrics include:

Total properties
Average property price
Average bedrooms
New-build percentage
Minimum price
Maximum price
Price distribution
Property distribution
2️⃣ Deep Market Analysis

Focuses on property segmentation and pricing.

Includes:

Average price by bedroom group
Property volume by bedrooms
New Build vs Old Build
Property type distribution
Premium market segments
3️⃣ Market Trend Analysis

Examines property-price behaviour across time and structural segments.

The analysis helps identify changing pricing patterns across different property segments.

4️⃣ Price Distribution

Examines the distribution and spread of property prices across key property characteristics.

5️⃣ Key Influencers

Uses the Power BI Key Influencers visual to investigate factors associated with property-price variation.

6️⃣ Details

Provides detailed property-level analysis and supporting information for deeper exploration.

📸 Dashboard Screenshots
Executive Overview

Deep Market Analysis

Market Trend Analysis

Price Distribution

Key Influencers

Dashboard Details

🔎 Key Business Insights
🏢 Property Type Distribution

The cleaned dataset contains:

Property Type	Number of Properties
Flat	13,477
Terraced	4,506
Semi-Detached	2,439
Detached	967

Key insight: Flats represent the largest property category within the dataset.

🛏️ Bedroom Distribution

Three-bedroom properties represent the largest bedroom segment, with 15,409 properties.

The analysis uses the following bedroom segmentation:

1 | 2 | 3 | 4 | 5 | 6 | 6+

This approach retains detail for the main bedroom categories while grouping properties with more than six bedrooms into a single segment.

💷 Property Pricing

The cleaned dataset contains:

Metric	Value
Average Price	£677,695
Median Price	£445,000
Minimum Price	£77,000
Maximum Price	£5,703,090

The difference between the average and median price indicates that property prices have a wide distribution, with higher-priced properties influencing the overall average.

📍 Geographical Distribution

The analysis standardised property locations into towns/cities including:

London
Birmingham
Manchester
Liverpool
Guildford
Brighton
Maidstone
Aberdeen
Swindon
Reading
Slough
Rochester
Milton Keynes

London represents the largest geographical segment in the cleaned dataset.

💡 Business Recommendations
1. Property Type Segmentation

Property type should be considered when evaluating market demand and pricing because different property types represent different market segments.

2. Bedroom-Based Analysis

Bedroom count provides an important segmentation variable for understanding property pricing and market composition.

3. Geographical Segmentation

Property-market performance should be evaluated at the town/city level rather than relying only on overall market averages.

4. New Build vs Older Properties

Separating new-build and older properties provides additional insight into differences in market pricing.

5. Median Price

Median price should be considered alongside average price because property prices have a wide distribution.

6. Interactive Business Intelligence

The Power BI dashboard allows stakeholders to interactively explore the market using filters and different property characteristics.

📁 Project Structure
UK-Real-Estate-Market-Analytics/
│
├── 1_Python_Pipeline/
│   └── real_estate_analysis.ipynb
│
├── 2_SQL_Scripts/
│   └── exploratory_analysis.sql
│
├── 3_PowerBI_Dashboard/
│   └── Real_Estate_Market_Dashboard.pbix
│
├── data/
│   └── properties_main_cleaned.xlsx
│
├── screenshots/
│   ├── overview.png
│   ├── market_analysis.png
│   ├── market_trend.png
│   ├── price_distribution.png
│   ├── key_influencers.png
│   └── details.png
│
├── video/
│   └── UK_Real_Estate_Dashboard_Demo.mp4
│
├── README.md
│
└── requirements.txt
👤 Skills Demonstrated
Data Analytics
Python
Pandas
NumPy
Data cleaning
Data validation
Data transformation
Missing-value treatment
Outlier treatment
Feature engineering
Exploratory Data Analysis
SQL & Database
MySQL
SQL aggregation
COUNT()
AVG()
ROUND()
GROUP BY
ORDER BY
CASE
Window functions
RANK()
Market segmentation
Business Intelligence
Power BI
DAX
KPI development
Interactive dashboards
Data visualisation
Market segmentation
Trend analysis
Key Influencers
Business recommendations
Data storytelling
🚀 Future Improvements

Future development could include:

Property-price forecasting
Advanced regression modelling
More detailed regional analysis
Automated data-refresh pipelines
Additional economic variables
Advanced Power BI measures
Predictive market indicators
🔐 Data Security

Database credentials, passwords and other sensitive information should never be uploaded to GitHub.

Database connection credentials should be stored using environment variables or a local configuration file that is excluded from version control.

⭐ Project Outcome

This project demonstrates an end-to-end Data Analytics and Business Intelligence workflow:

Raw Data
   ↓
Python
   ↓
Data Cleaning & Transformation
   ↓
MySQL
   ↓
SQL Analysis
   ↓
Power BI
   ↓
Interactive Dashboard
   ↓
Business Insights
   ↓
Recommendations

The project demonstrates practical experience in:

Python • Pandas • SQL • MySQL • Power BI • DAX • Data Cleaning • Exploratory Data Analysis • Data Visualisation • Business Intelligence • Data Storytelling

📌 Conclusion

The UK Real Estate Market Analytics Dashboard demonstrates how raw property data can be transformed into a structured analytical solution using Python, MySQL/SQL and Power BI.

The final dashboard provides an interactive environment for analysing property prices, property types, bedrooms, bathrooms, tenure, build status, geographical distribution and market trends.

The project combines technical data-analysis skills with business-focused interpretation to support more informed understanding of the UK residential property market.
