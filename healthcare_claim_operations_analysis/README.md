# Healthcare Claims Operations Analysis

## Project Overview

This project analyzes healthcare claims operations data to evaluate **SLA performance, error drivers, and operational trends across regions and claim types**.

The goal of this analysis is to identify workflow bottlenecks, understand how claim errors impact turnaround time, and highlight opportunities to improve claims processing performance.

The dashboard visualizes trends in claim volume, SLA compliance, error impact, and regional performance to support operational decision making.

---

## Business Problem

Healthcare claims teams must maintain strong **service level agreement (SLA) performance** while managing high claim volumes and complex error scenarios.

Operational leaders needed visibility into:

- Claim volume trends
- SLA performance by claim type
- The impact of claim errors on turnaround time
- Regional differences in claims processing performance

This analysis helps identify where operational improvements could improve efficiency and reduce delays.

---

## Tools Used

- SQL
- Tableau
- Excel
- Data visualization
- Operational data analysis

---

## Dashboard Overview


The dashboard highlights operational performance across several key areas.

---

## Key Metrics

The analysis focuses on several operational KPIs:

- Claims received over time
- SLA compliance rate
- Error impact on claim turnaround time
- SLA performance by claim type
- Regional performance across processing queues

## Sample SQL Queries

SQL was used to aggregate claims performance metrics, identify operational bottlenecks, and evaluate SLA performance across claim types, regions, and error categories.

Below are representative queries used to generate the analysis behind the dashboard.

---

### Weekly Claim Volume and SLA Performance

This query aggregates claims received by week and calculates the average SLA rate to track operational performance over time.

```sql
SELECT 
    DATE_TRUNC('week', claim_date) AS week,
    COUNT(*) AS claims_received,
    AVG(sla_met) AS sla_rate
FROM claims
GROUP BY week
ORDER BY week;
```
---

## Key Insights

**SLA performance varies significantly by claim type**

Institutional claims maintain the highest SLA rate, while pharmacy and vision claims show lower compliance levels.


**Certain claim errors significantly increase turnaround time**

Errors such as **DOB mismatch and out-of-network authorization issues** are strongly associated with longer processing times.

**Operational performance varies by processing queue**

Appeals queues consistently show lower SLA performance compared to other operational queues.

**Regional performance differences exist**

The Midwest region demonstrates slower turnaround times compared to other regions.

---

## Business Impact

This analysis highlights several opportunities for operational improvement:

- Targeted error reduction efforts for high-impact error codes
- Process improvements in appeals workflows
- Operational monitoring by claim type and region
- Improved resource allocation for slower-performing regions

These insights can help healthcare organizations improve claims efficiency and maintain SLA compliance.

---

## Skills Demonstrated

- Data analysis of operational healthcare data
- KPI performance tracking
- Trend analysis
- Error impact analysis
- Dashboard design and data storytelling
