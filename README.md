# UK Real Estate Market Analytics Dashboard

### 🚀 End-to-End Data Analytics Project (Python → SQL → Power BI) focused on real estate pricing, segmentation, and predictive insights.

---

## 1. Project Overview & Architecture

This project delivers an end-to-end data analytics lifecycle using a UK real estate dataset containing 22,000+ transactional records. The workflow spans automated programmatic data engineering, relational database optimization, and executive-level business intelligence reporting to uncover market drivers, pricing trends, and property segmentation patterns.

### 🔄 Data Pipeline Architecture
`Raw UK Property Data` ➔ `Python (Pandas Cleaning)` ➔ `MySQL Database (Storage & Summary Views)` ➔ `Power BI (4-Page Executive Dashboard)`

---

## 2. Tools and Technologies

* **Data Engineering:** Python (Pandas, NumPy), Microsoft Excel
* **Database Management:** MySQL Server 
* **Business Intelligence:** Power BI Desktop (DAX, Modeling)

---

## 3. Data Cleaning and Preparation (Python)

The raw property dataset contained missing values, inconsistent classifications, mixed-format identifiers, duplicate entries, and extreme statistical anomalies. A Python script was written to automate the transformation process:

1. **Category Standardization:** Normalized raw string entries into four clean, relational cohorts: *Flat, Terraced, Semi-Detached, and Detached*.
2. **Feature Engineering:** Extracted and cleaned alpha-numeric identifiers from the `property_id` field.
3. **Schema Enforcement:** Cast untyped columns into structural Integers, Datetime, and Booleans.
4. **Group-Based Imputation:** Resolved missing values by computing group-level granular metrics mapped directly back to regional properties.
5. **Statistical Outlier Treatment:** 
   * Capped extreme price thresholds using the 1st and 99th statistical percentiles to preserve realistic market trend behavior.
   * Constrained `bedrooms` (0–6 range) and `bathrooms` (0–5 range) based on actual structural distribution caps.
6. **Data Deduplication:** Eliminated redundant transactional logs, safely compressing the dataset from **22,258 down to 21,389 clean, verified records**.

---

## 4. SQL Analytics & Database View Engineering

Cleaned data was migrated into a MySQL database instance. To maximize performance and eliminate visualization lag, multi-dimensional calculations were pushed upstream into compiled SQL Views, shifting the heavy computational processing load away from the Power BI reporting layer.

### 🛠️ High-Performance SQL Views Developed
* `dbo.town_summary`: Computes regional transaction sales volumes, overall financial totals, and average pricing bounds to back stop the geographic visual layer.
* `dbo.price_summary`: Pre-aggregates intersection values across building types, bedroom groups, new-build flags, and tenure status to keep cross-filtering fast.

### SQL Advanced Techniques Deployed:
* Aggregations (`COUNT`, `SUM`, `AVG`) paired with multi-column `GROUP BY` execution.
* Analytical window functions (`RANK() OVER (PARTITION BY ... ORDER BY ...)`) to map regional market leaders.
* Comparative market segmentation analysis separating core volume and premium performance sectors.

---

## 5. Power BI Dashboard Development

An interactive, 4-page Power BI dashboard was constructed utilizing a dark-themed grid layout optimized for executive decision-making. 

### 📊 Report Interface Architecture
### Page 1: Executive Overview:KPI cards and high-level market snapshot ,Summary of total market performance 
**Insight,Provides a macro-level view of the UK property market.

### Page 2: Deep Market Analysis,Structural breakdown of market segments:Price distribution across property types and categories,Market segmentation patterns
**Insight: Reveals how the market is structured across different property categories.

### 📈 Page 3: Market Trend Analysis,Price behaviour across bedroom groups and property types,Comparative trend patterns across segments,Non-linear price relationships
**Insight: Shows how prices evolve across structural attributes.

### 📦 Page 4: Market Distribution Analysis (Bedrooms & Property Type):Distribution of prices across bedroom groups,Property type-based price spread analysis,Market segmentation and variability insights
**Insight: Highlights how property prices are distributed across key structural categories, revealing concentration and spread patterns in the market.

### 🤖 Page 5: Key Influencers (Explainable AI):Power BI Key Influencers visual,Identification of primary drivers of property prices
**Insight: Confirms that bedroom group and property type are the strongest drivers of price variation.

---

## 6. Key Business Insights

* **The Market Volume Core:** Flats dominate overall transactional volume within the UK dataset, specifically peaking within the 2-to-3 bedroom categories.
* **Typology Premium Spikes:** Detached and terraced properties consistently anchor the highest overall valuation baselines across all regional districts.
* **The New Build Pricing Paradox:** Newer construction does not automatically guarantee premium value. While new-build flats comfortably outpace old-build flats, older *detached* properties command a significantly higher pricing premium than modern detached equivalents.
* **Tenure Market Segmentation:** Freehold properties are tightly concentrated within high-value premium ownership tiers, whereas Leasehold structures serve as the high-turnover volume core for 2-3 bedroom residential markets.

---

## 7. Project Deliverables & Repository Structure

* `📁 1_Python_Pipeline/`: Jupyter Notebook containing the Pandas preprocessing, imputation logic, and outlier percentile caps.
* `📁 2_SQL_Scripts/`: The database initialization script (`property_analysis.sql`) including table schemas and optimized summary view scripts.
* `📁 3_PowerBI_Dashboard/`: The production-ready `.pbix` 4-page reporting model.

---

## 8. Skills Demonstrated

* **Data Architecture:** Upstream business logic engineering, star schema modeling, and SQL database performance-tuning views.
* **Data Engineering:** Anomaly containment, missing data imputation, and programmatic cleanup scripts.
* **Statistical Diagnostics:** Multi-variable regression modeling, trend line charting, and outlier clipping.
* **Business Intelligence:** DAX development, time intelligence metric streaming, and interactive report design.
