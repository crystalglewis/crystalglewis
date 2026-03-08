# Public Health SQL Analysis Project

## Business Scenario
The Public Health Data Office tracks communicable diseases, patient demographics, and vaccination records to monitor outbreaks and guide health interventions.

The goal of this analysis was to identify disease trends, highlight at-risk populations, and support targeted vaccine outreach using SQL queries.

## Tools Used
SQL (MySQL)  
DB Fiddle for query execution

---

## Key Business Questions

### 1. Identify confirmed COVID-19 cases
The epidemiology team needed a list of confirmed COVID-19 cases along with patient names, ZIP codes, and outcomes.

Key SQL Concepts Used:
- INNER JOIN
- Filtering with WHERE
- Combining columns with CONCAT()

---

### 2. Identify patients without vaccinations
Leadership wanted to know how many individuals in the database had not received any vaccinations.

Key SQL Concepts Used:
- LEFT JOIN
- NULL filtering
- COUNT aggregation

---

### 3. Categorize patients by risk level
Patients were categorized as:

High Risk → Age 50+  
Low Risk → Under 50

Key SQL Concepts Used:
- CASE statements
- Conditional logic
- Calculated columns

---

### 4. Summarize confirmed cases by disease
A summary of confirmed cases per disease was created to support reporting.

Key SQL Concepts Used:
- GROUP BY
- COUNT aggregation

---

### 5. Identify ZIP codes with highest confirmed cases
ZIP codes with the highest concentration of confirmed disease cases were identified to help direct testing resources.

Key SQL Concepts Used:
- JOIN
- GROUP BY
- ORDER BY
- LIMIT

---

## Key Insights

• Influenza had the highest number of confirmed cases in the dataset.  
• One ZIP code showed a higher concentration of confirmed cases, indicating a potential hotspot.  
• One patient in the dataset had not received any vaccinations, highlighting a potential outreach opportunity.  
• Risk categorization quickly identified individuals over age 50 who may require additional monitoring.

---

## Skills Demonstrated

SQL Joins  
Aggregation (COUNT)  
Filtering and conditional logic  
CASE statements  
Data grouping and summarization  
Business-focused data analysis

---

## Why This Project Matters

This project demonstrates how SQL can be used to answer real public health questions, identify trends in disease data, and support data-driven decision making.
