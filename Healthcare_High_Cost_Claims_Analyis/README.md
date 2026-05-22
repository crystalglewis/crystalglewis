# Healthcare Fraud & High Cost Claims Analysis | SQL • Tableau
Dataset: Synthetic NHIS Healthcare Claims (2024)
Total Billed Amount: $476.5M
Tools: SQL (PostgreSQL) • Tableau • Excel


## 📌 Project Overview:
Healthcare fraud and high cost claims create significant financial risk for insurers and healthcare organizations. This project analyzes healthcare claims data to identify fraud patterns, high cost claim drivers, and demographic trends that may contribute to financial loss.

Using SQL for data preparation and analysis and Tableau for visualization, this project explores how fraud varies across diagnosis categories, fraud types, and patient age groups. The goal of the analysis was to demonstrate how healthcare claims data can support fraud detection efforts, payment integrity monitoring, and cost containment strategies.


---

##  🎯Business Question
As healthcare costs and fraudulent billing activity continue to increase, where are the largest drivers of high cost claims and fraud exposure occurring, and which demographic trends may contribute to increased financial risk?

This analysis focused on identifying:
- the percentage of claims associated with fraudulent activity
- diagnosis categories with the highest fraud exposure
- demographic groups driving high cost claims
- fraud trends by fraud type and age group
- opportunities to support payment integrity monitoring through healthcare analytics

---

##  🗂 Key Performance Indicators (KPIs)
| KPI | Value |
|-----|------|
| Total Claims Billed | $476.5M |
| Fraudulent Claim Amount | $248M |
| Fraud Percentage | 52% |
| Largest High Cost Claims Segment | $51M (Age 65+) |
| Highest Fraud Age Group | 65+ (54%) |
| Top Fraud Drivers | Cosmetic Surgery, Infertility Treatment |
| Largest Fraud Types | Phantom Billing, Fake Treatments |

---

## Data Preparation
The dataset was imported into PostgreSQL where SQL was used to clean, transform, and prepare the data for analysis and visualization.


Key preparation steps included:
- Importing the claims CSV dataset into PostgreSQL
- Creating indicator flags for:
  -	Fraudulent Claims
  -	High cost claims above $10,000
  
 Segmenting members into age groups:
  - 0–17
  - 18–34
  - 35–49
  - 50–64
  - 65+
  
Aggregating billed amounts and fraud percentages by:
  - Diagnosis category
  - Age group
  - Fraud type
- Calculating KPIs related to fraud exposure and high cost claim trends
  
The cleaned and aggregated dataset was then exported into Tableau to develop interactive dashboards and visualizations.

---

## Methods & Skills Used
Tools:
- SQL (PostgreSQL)
- Tableau
- Excel

## Skills Applied
- SQL data cleaning and transformation
- Fraud analysis and KPI reporting
- Healthcare claims analysis
- Data aggregation and visualization
- Dashboard development
- Data storytelling and business interpretation

---

##  📊 Example SQL Analysis
The following SQL query segments claims by age group and calculates fraud and high-cost claim metrics.
```sql
SELECT
    CASE
        WHEN age < 18 THEN '0-17'
        WHEN age BETWEEN 18 AND 34 THEN '18-34'
        WHEN age BETWEEN 35 AND 49 THEN '35-49'
        WHEN age BETWEEN 50 AND 64 THEN '50-64'
        ELSE '65+'
    END AS age_group,

    COUNT(*) AS total_claims,

    SUM(CASE WHEN high_cost_flag = TRUE THEN 1 ELSE 0 END) AS high_cost_claims,

    SUM(CASE WHEN fraud_type != 'No Fraud' THEN 1 ELSE 0 END) AS fraudulent_claims,

    ROUND(
        SUM(CASE WHEN fraud_type != 'No Fraud' THEN 1 ELSE 0 END)::decimal
        / COUNT(*) * 100, 2
    ) AS fraud_rate_percent,

    ROUND(
        SUM(CASE WHEN high_cost_flag = TRUE THEN 1 ELSE 0 END)::decimal
        / COUNT(*) * 100, 2
    ) AS high_cost_rate_percent

FROM claims_data

GROUP BY age_group
ORDER BY age_group;
```

---

## What This Query Demonstrates
This SQL analysis performs several analytical steps:
- Segments claims into demographic age groups using a CASE statement
- Calculates total claims by demographic group
- Identifies high cost claims above $10,000
- Calculates fraudulent claim counts per age group
- Computes fraud and high cost claim percentages used as KPIs
- Supports demographic trend analysis related to fraud exposure and financial risk
These calculations help identify patterns in fraud activity, high cost claims, and demographic level financial exposure within healthcare claims data.

---

## Key Insights

### Fraud Exposure
Fraudulent claims accounted for 52% of total billed amounts ($248M), highlighting significant financial exposure within the dataset.

### Diagnosis Categories with Highest Fraud Risk
Infertility Treatment and Cosmetic Surgery showed the highest fraud exposure among diagnosis categories.

### Age Group Fraud Distribution
The 65+ age group showed the highest fraud percentage (54%) and generated the largest share of high cost claims totaling $51M.

### Fraud Type Patterns
Two fraud types dominated the dataset:
- Phantom Billing
- Fake Treatments
Together, they represented over 40% of fraud cases, indicating areas where stronger billing validation processes may be needed.

### Overall Trend
Fraud exposure was concentrated within specific diagnosis categories and demographic groups rather than being evenly distributed across the population.
	
---

## Analyst Interpretation
The analysis suggests that fraud risk is not evenly distributed across healthcare claims data. Instead, it is concentrated within specific diagnosis categories, fraud types, and demographic groups.

The high fraud exposure associated with cosmetic procedures and infertility treatments may indicate areas requiring enhanced billing validation and payment integrity monitoring. Additionally, the concentration of high cost and fraudulent claims within the 65+ population highlights potential financial vulnerabilities associated with older patient groups.

By identifying these patterns, healthcare organizations can prioritize targeted fraud detection strategies, strengthen payment integrity controls, and improve financial risk monitoring through healthcare analytics.

---

## 💡Strategic Recommendations
1. Prioritize fraud monitoring in high-risk diagnosis categories
Cosmetic surgery and infertility treatments show the highest fraud exposure and may require enhanced claim review controls.
2. Focus fraud detection efforts on older patient populations
The 65+ age group shows the highest fraud rate and largest high-cost claims.
3. Investigate dominant fraud types for operational improvements
Phantom billing and fake treatments represent a large share of fraud activity and may indicate gaps in billing verification processes.
4. Use claims analytics to strengthen payment integrity strategies
Data-driven monitoring can help insurers identify fraud patterns earlier and reduce financial loss.

---

## Assumptions & Limitations
### Assumptions
- Fraud indicators accurately represented fraudulent activity within the dataset
- Claims above $10,000 represented higher financial risk exposure
- Age group segmentation provided meaningful demographic insight into fraud patterns
### Limitations
- The dataset was synthetic and created for portfolio analysis purposes
- Fraud indicators were predefined and not generated through predictive modeling
- The analysis focused on descriptive analytics rather than real time fraud detection
- Additional provider, geographic, and claims history data could provide deeper insight into fraud behavior
  patterns

---

## Dashboard
Interactive Tableau dashboard:
🔗 [View Tableau Dashboard](https://public.tableau.com/app/profile/crystal.lewis7397/viz/HealthcareFraudClaimsAnalysisDashboard/HealthcareFraudHigh-CostClaimsAnalysis?publish=yes)

The dashboard visualizes fraud exposure by diagnosis category, high cost claims by age group, fraud type distribution, and overall financial exposure across the dataset.

---

## Business Value
This analysis demonstrates how healthcare claims data can support:
-  Payment integrity monitoring
-  Fraud detection initiatives
-  Cost containment strategies
-  Financial risk analysis
-  Data driven operational decision making
