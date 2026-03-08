# Welcome to My Data Analytics Portfolio! 👋

## About Me
Hello! I'm **Crystal Lewis**, a results-driven and detail-oriented healthcare analyst transisitioning into the data analytics space.  With over a decade of experience in  **healthcare claims analysis, provider relations, and customer service**, I bring domain expertise and a strong understanding of **healthcare operations, member/provider interactions, and claims processing workflows**

I recently completed a Data Analytics Program through Thinkful, where I gained hands-on experience with tools like **SQL, Tableau, Python, and Excel**. My passion lies in merging healthcare knowledge with analytics to uncover insights, solve problems, and drive smarter decision-making across healthcare systems. 



## **📌 Areas of Interest**
- **Healthcare Claims Analysis**: Identifying trends, uncovering inefficiencies and cost-saving opportunities.
- **Data Analytics & Insights**: Using Python, SQL, Tableau, and Excel for data cleaning, analysis, and visualization.
- **Data Storytelling**: Turning complex datasets into clear, actionable insights.
- **Problem Solving**: Improving workflows through analytics-driven solutions.
  
---


## **🛠️ Skills & Technologies**
| **Category**   | **Tools & Techniques** |
|----------------|----------------|
| **Programming** | Python, (Pandas, Numpy, Matplotlib, Seaborn) SQL, (MySQL, PostgreSQL, SQLite) |
| **Excel & Automation** | Advanced formulas, Pivot Tables, Power Query, VBA |
| **Visualization** | Tableau, Power BI, Matplotlib, Seaborn |
| **Statistical Analysis** | Hypothesis testing, regression analysis, trend analysis | 
| **Healthcare Knowledge** | CPT / HCPCS / ICD - 11 codes, LOINC, claims processing |



---

## 📚 Featured Projects


### 🔬 Public Health SQL Analysis
SQL analysis identifying disease trends, vaccination gaps, and high-risk populations.

Skills used:
-SQL Joins
-Aggregation (COUNT)
-CASE statements
-Data grouping

Project details:
[View Project](public_health_sql_analysis_project.md)

---


### 📉 Healthcare Fraud & High-Cost Claims Analysis
 🔗 [View Tableau Dashboard](https://public.tableau.com/app/profile/crystal.lewis7397/viz/HealthcareFraudClaimsAnalysisDashboard/HealthcareFraudHigh-CostClaimsAnalysis?publish=yes)]
 Using the NHIS Healthcare Claims Dataset, this project analyzed patterns in fraudulent and high-cost claims to uncover financial risks and demographic trends.
 
**Tools: SQL, Tableau

### 📊 Key Insights
- Fraudulent claims (phantom billing, fake treatments) led to losses exceeding $248 million.

- The 65+ age group filed the most high-cost and fraudulent claims.

- **Epilepsy surgery, infertility treatment, and cosmetic surgery** had the highest billed amounts.


####💻 Sample SQL Query
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
Analyzed synthetic healthcare claims data to measure SLA performance, error impact, and regional/queue variations in turnaround time.

**Tools: SQL, Tableau, Excel

### 📊 Key Insights

- SLA is steady overall but varies significantly by claim type.

- DOB mismatch and OON Auth errors drive longer turnaround times.

- Appeals queue consistently underperforms, while Intake achieves strongest SLA.

- Midwest region shows slower TAT compared to others.



### 📊 Business Analysis - Revenue Growth Models**
🔗 [View Project](https://docs.google.com/spreadsheets/d/1HraOeUDySRqMXfh66e9Hlmoow6slrRDr/edit?usp=sharing&ouid=107080210365207288161&rtpof=true&sd=true)
Analyzed historical sales data to find revenue growth opportunities.

Tools: Excel (VLOOKUP, Pivot Tables, T-tests)
Highlights: Conducted EDA and provided actionable recommendations for strategic planning.


---


  ### 🎬 Project 4: Inventory Analysis – Sales Trends**
 🔗 [View Project](https://colab.research.google.com/drive/1r1KcBGO1A3RaAGprVnIBQwBOegidZNqU)
Explored sales trends in the movie industry to support production and acquisition strategies.

Tools: Python (Pandas, Matplotlib), Power BI
Deliverables: Visualized box office trends and provided actionable insights.



---

## 💬 Let's Connect!
I'm passionate about healthcare analytics and always open to collaboration or opportunities to turn raw data into meaningful solutions.

- **Email**: [crystal.g.lewis@gmail.com](mailto:your.email@example.com)
- **LinkedIn**: [www.linkedin.com/in/crystalglewis](https://linkedin.com/in/yourname)
- **GitHub**: [www.github.com/crystalglewis](https://github.com/crystalglewis)

  
---
**Thank you for visiting my portfolio! Let’s work together to turn healthcare data into actionable insights.**

