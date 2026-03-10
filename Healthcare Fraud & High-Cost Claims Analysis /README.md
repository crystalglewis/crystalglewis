# Healthcare Fraud & High-Cost Claims Analysis | SQL + Tableau
Dataset: Synthetic NHIS Healthcare Claims (2024)
Total Billed Amount: $476.5M
Tools: PostgreSQL (SQL), Tableau, Excel
Project Summary:
An end-to-end healthcare claims analytics project using SQL and Tableau to identify fraud patterns, high-cost claims, and demographic risk factors across a synthetic claims dataset.

---

#  📌 Project Overview
Healthcare fraud and high-cost claims create significant financial risk for insurers and healthcare systems. This project analyzes healthcare claims data to identify fraud patterns, high-cost claim drivers, and demographic trends that may contribute to financial loss.
Using SQL for data preparation and aggregation and Tableau for visualization, the analysis explores how fraud varies across diagnosis categories, fraud types, and patient age groups.
The objective of this project is to demonstrate how healthcare claims data can be used to support fraud detection, payment integrity monitoring, and cost management decisions.

---

## 🎯 Objectives
This analysis focuses on answering four key questions:
1.	What percentage of total billed claims are fraudulent?
2.	Which diagnosis categories drive the highest fraud risk?
3.	Which age groups generate the largest high-cost claims?
4.	How does fraud vary by age group and fraud type?

---

##  🗂 Key Performance Indicators (KPIs)
 KPI | Value |
|-----|------|
| Total Claims Billed | $476.5M |
| Fraudulent Claim Amount | $248M |
| Fraud Percentage | 52% |
| Largest High-Cost Claims Segment | $51M (Age 65+) |
| Highest Fraud Age Group | 65+ (54%) |
| Top Fraud Drivers | Cosmetic Surgery, Infertility Treatment |
| Largest Fraud Types | Phantom Billing, Fake Treatments |
---

## Data Preparation
The dataset was imported into PostgreSQL and prepared using SQL transformations.
Key preparation steps included:
- Importing the claims CSV dataset into PostgreSQL
- Creating indicator flags for:
-	Fraudulent Claims
-	High-Cost Claims (>$10,000)
  
 Segmenting members into age groups:
	-0–17
-	18–34
-	35–49
-	50–64
-	65+
  
Aggregating billed amounts and fraud percentages by:
-	Diagnosis category
-	Age group
-	Fraud type
  
The cleaned and aggregated dataset was then exported to Tableau for visualization.

---

##  🛠 Tools & Skills Used
PostgreSQL (SQL)
Used for:
•	Data cleaning and transformation
•	Fraud flag creation
•	Aggregations and KPI calculations
•	Preparing structured datasets for visualization
Excel
Used for:
•	Quick validation checks
•	Cross-checking totals and fraud distributions
Tableau
Used to build an interactive dashboard summarizing:
•	Fraud distribution
•	High-cost claim segments
•	Age-based fraud patterns
•	Diagnosis-level fraud risk

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
• Segments claims into age groups using a CASE statement
• Calculates total claims by demographic group
• Identifies high-cost claims above $10K
• Calculates fraudulent claim counts per age group
• Computes fraud and high-cost claim percentages used as KPIs
These calculations support identifying demographic patterns in fraud exposure.

---

## Key Insights
Fraud Exposure
Fraudulent claims accounted for 52% of total billed amounts ($248M), highlighting significant financial exposure within the dataset.
Diagnosis Categories with Highest Fraud Risk
Infertility Treatment and Cosmetic Surgery showed the highest fraud risk among diagnosis categories.
Age Group Fraud Distribution
The 65+ age group showed the highest fraud percentage (54%) and generated the largest share of high-cost claims totaling $51M.
Fraud Type Patterns
Two fraud types dominated the dataset:
•	Phantom Billing
•	Fake Treatments
Together they represented over 40% of fraud cases, indicating areas where enhanced billing verification may be needed.

---

## Analyst Interpretation
Fraud risk is not evenly distributed across healthcare claims. Instead, it concentrates within specific diagnosis categories, fraud types, and patient age groups.
The concentration of fraud within cosmetic procedures and infertility treatments suggests that certain service categories may require stronger billing validation processes. Additionally, the high proportion of fraud and high-cost claims among the 65+ population highlights potential vulnerabilities in claims associated with older patient groups.
By identifying these patterns, healthcare organizations can prioritize targeted fraud detection strategies and improve payment integrity controls.

---

## 💡Key Takeaways for Stakeholders
1. Prioritize fraud monitoring in high-risk diagnosis categories
Cosmetic surgery and infertility treatments show the highest fraud exposure and may require enhanced claim review controls.
2. Focus fraud detection efforts on older patient populations
The 65+ age group shows the highest fraud rate and largest high-cost claims.
3. Investigate dominant fraud types for operational improvements
Phantom billing and fake treatments represent a large share of fraud activity and may indicate gaps in billing verification processes.
4. Use claims analytics to strengthen payment integrity strategies
Data-driven monitoring can help insurers identify fraud patterns earlier and reduce financial loss.

---

## Dashboard
Interactive Tableau dashboard:
🔗 [View Tableau Dashboard](https://public.tableau.com/app/profile/crystal.lewis7397/viz/HealthcareFraudClaimsAnalysisDashboard/HealthcareFraudHigh-CostClaimsAnalysis?publish=yes)


The dashboard visualizes
•	Fraud percentage by diagnosis
•	High-cost claims by age group
•	Fraud type distribution
•	Total fraud exposure across the dataset

---

## Skills Demonstrated
This project demonstrates the following analytics skills:
• SQL data cleaning and aggregation
• Fraud detection analysis
• KPI development and reporting
• Healthcare claims data analysis
• Data visualization with Tableau
• Business interpretation of analytical results

---

## Business Value
This analysis demonstrates how healthcare claims data can support:
• Payment integrity monitoring
• Fraud detection strategies
• Cost containment initiatives
• Data-driven operational decisions
