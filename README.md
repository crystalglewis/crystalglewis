# Welcome to My Data Analytics Portfolio! 👋

## About Me
Hello! I'm **Crystal Lewis**, a results-driven and detail-oriented healthcare professional with over a decade of experience in **healthcare claims analysis, provider relations, and customer service**. 

I have a deep understanding of **healthcare operations and member/provider interactions**, paired with newly developed data analytics skills gained from completing a Data Analytics Program at Thinkful.  My passion lies in merging domain espertise with analytics to uncover insights and drive better decision- making in healthcare. 



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


### **📉 Project 1: # Healthcare Fraud & High-Cost Claims Analysis
 🔗 [View Tableau Dashboard] [**Healthcare Claims Analysis**](https://public.tableau.com/app/profile/crystal.lewis7397/viz/HealthcareFraudHigh-CostClaimsAnalysis/Healthcare_Claims_Insights?publish=yes):
 Using the NHIS Healthcare Claims Dataset, this project analyzed patterns in fraudulent and high-cost claims to uncover financial risks and demographic trends.
 
**Tools: SQL, Tableau

## 📊 Key Insights
- Fraudulent claims (phantom billing, fake treatments) led to losses exceeding $248 million.

- The 65+ age group filed the most high-cost and fraudulent claims.

- Epilepsy surgery, infertility treatment, and cosmetic surgery had the highest billed amounts.


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

> 🔍 Groups claims by age range and aggregates totals to highlight high-cost and fraudulent claim patterns by demographic.




---

### **📊Project 2: Business Analysis - Revenue Growth Models**
🔗 [View Project](https://docs.google.com/spreadsheets/d/1HraOeUDySRqMXfh66e9Hlmoow6slrRDr/edit?usp=sharing&ouid=107080210365207288161&rtpof=true&sd=true)
Analyzed historical sales data to find revenue growth opportunities.

Tools: Excel (VLOOKUP, Pivot Tables, T-tests)
Highlights: Conducted EDA and provided actionable recommendations for strategic planning.


---


  ### **🎬 Project 3: Inventory Analysis – Sales Trends**
 🔗 [View Project](https://colab.research.google.com/drive/1r1KcBGO1A3RaAGprVnIBQwBOegidZNqU)
Explored sales trends in the movie industry to support production and acquisition strategies.

Tools: Python (Pandas, Matplotlib), Power BI
Deliverables: Visualized box office trends and provided actionable insights.



---

## 💬 Let's Connect!
I'm passionate about healthcare analytics and always open to collaboration or opportunities to turn raw data into meaningful solutions.

- **Email**: [crystal.g.lewis@gmail.com](mailto:your.email@example.com)
- **LinkedIn**: [www.linkedin.com/in/crystalglewis](https://linkedin.com/in/yourname)

  
---
**Thank you for visiting my portfolio! Let’s work together to turn healthcare data into actionable insights.**

