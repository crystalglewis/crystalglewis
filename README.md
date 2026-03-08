# Welcome to My Data Analytics Portfolio! 👋

## About Me

Hello! I'm **Crystal Lewis**, a results-driven healthcare professional transitioning into a **Healthcare Data Analyst role**. With over a decade of experience in **healthcare claims analysis, provider relations, and healthcare operations**, I bring strong domain expertise and a deep understanding of **claims processing workflows, provider interactions, and healthcare system operations**.

To expand my technical skillset, I completed a **Data Analytics Certification through Thinkful**, where I gained hands-on experience using **SQL, Tableau, Python, and Excel** to analyze real-world datasets and uncover actionable insights.

I am currently continuing my development through the **Data Analytics Simplified program**, where I am strengthening my skills in **SQL, Excel, and Power BI within a Microsoft virtual environment**. This training focuses on practical business analysis, database querying, and building dashboards to support **data-driven decision making**.

My goal is to combine **healthcare domain expertise with data analytics** to identify trends, improve operational efficiency, and support smarter decision-making across healthcare organizations.

---

## Areas of Interest

- **Healthcare Claims Analysis** – Identifying trends, uncovering inefficiencies, and reducing cost drivers.
- **Healthcare Data Analytics** – Using SQL, Python, Tableau, and Excel to analyze healthcare datasets.
- **Data Storytelling** – Turning complex datasets into clear, actionable insights.
- **Operational Improvement** – Applying analytics to improve healthcare workflows and business performance.

---

## Skills & Technologies

| Category | Tools & Techniques |
|--------|----------------|
| **Programming** | Python (Pandas, NumPy, Matplotlib, Seaborn), SQL (MySQL, PostgreSQL, SQLite) |
| **Excel & Automation** | Advanced formulas, Pivot Tables, Power Query, VBA |
| **Visualization** | Tableau, Power BI, Matplotlib, Seaborn |
| **Statistical Analysis** | Hypothesis testing, regression analysis, trend analysis |
| **Healthcare Knowledge** | CPT / HCPCS / ICD-10 & ICD-11 codes, LOINC, healthcare claims processing |

---

## Featured Projects

### 🔬 Public Health SQL Analysis

SQL analysis identifying **disease trends, vaccination gaps, and high-risk populations** using relational healthcare datasets.

**Skills Used**

- SQL Joins  
- Aggregation (COUNT)  
- CASE Statements  
- Data Grouping  

**Project Details**  
[View Project](public_health_sql_analysis_project.md)

---

### 📉 Healthcare Fraud & High-Cost Claims Analysis

🔗 [View Tableau Dashboard](https://public.tableau.com/app/profile/crystal.lewis7397/viz/HealthcareFraudClaimsAnalysisDashboard/HealthcareFraudHigh-CostClaimsAnalysis?publish=yes)

Using the **NHIS Healthcare Claims Dataset**, this project analyzed patterns in fraudulent and high-cost claims to uncover financial risks and demographic trends.

**Tools**

SQL, Tableau

**Key Insights**

- Fraudulent claims (phantom billing, fake treatments) resulted in losses exceeding **$248M**.
- The **65+ age group** generated the highest number of high-cost and fraudulent claims.
- **Epilepsy surgery, infertility treatment, and cosmetic surgery** showed the highest billed amounts.

**Sample SQL Query**

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
  SUM(CASE WHEN fraud_type != 'No Fraud' THEN 1 ELSE 0 END) AS fraudulent_claims
FROM claims_data
GROUP BY age_group
ORDER BY age_group;
```

> 🔍 Groups claims by age range and aggregates totals to highlight high-cost and fraudulent claim patterns by demographic.




---

### 📊 Healthcare Claims Operations Analysis
🔗 [View Tableau Dashboard](https://public.tableau.com/app/profile/crystal.lewis7397/viz/HealthcareClaimsOperationsAnalysis/HealthcareClaimsOperations)
Analyzed synthetic healthcare claims data to measure SLA performance, error impact, and regional variations in turnaround time.

**Tools: SQL, Tableau, Excel

### 📊 Key Insights

- Overall SLA performance is stable but varies significantly by claim type.

- DOB mismatch and Out-of-Network authorization errors drive longer turnaround times.

- The Appeals queue consistently underperforms, while Intake shows the strongest SLA performance.

- The Midwest region experiences slower turnaround times compared to others. 



---


### 📊 Business Analysis - Revenue Growth Model**
🔗 [View Project](https://docs.google.com/spreadsheets/d/1HraOeUDySRqMXfh66e9Hlmoow6slrRDr/edit?usp=sharing&ouid=107080210365207288161&rtpof=true&sd=true)
Analyzed historical sales data to identify revenue growth opportunities and operational improvements.

Tools: Excel (VLOOKUP, Pivot Tables, T-tests)



---


  ### 🎬 Movie Industry Sales Trends Analysis**
 🔗 [View Project](https://colab.research.google.com/drive/1r1KcBGO1A3RaAGprVnIBQwBOegidZNqU)
Exploratory analysis of movie industry sales trends to support production and acquisition strategies.

Tools: Python (Pandas, Matplotlib), Power BI




---

## 💬 Let's Connect!
I'm passionate about healthcare data analytics and data-driven decision making. I welcome opportunities to collaborate, share ideas, and turn healthcare data into meaningful insights.

 **Email**:
[crystal.g.lewis@gmail.com](mailto:your.email@example.com)

**LinkedIn**: 
[www.linkedin.com/in/crystalglewis](https://linkedin.com/in/yourname)

**GitHub**: 
[www.github.com/crystalglewis](https://github.com/crystalglewis)

  
---
**Thank you for visiting my portfolio!**

