--view all tables

SELECT*
FROM claims_data;

--Check for NULL or missing values

SELECT
	COUNT(*) FILTER (WHERE patient_id IS NULL) AS missing_patient_id,
	COUNT(*) FILTER (WHERE age IS NULL) AS missing_age,
	COUNT(*) FILTER (WHERE gender IS NULL) AS missing_gender,
	COUNT(*) FILTER (WHERE date_admitted IS NULL) AS missing_date_admitted,
	COUNT(*) FILTER (WHERE date_discharged IS NULL) AS missing_date_discharged,
	COUNT(*) FILTER (WHERE diagnosis IS NULL) AS missing_diagnosis,
	COUNT(*) FILTER (WHERE treatment IS NULL) AS missing_treatment,
	COUNT(*) FILTER (WHERE amount_billed IS NULL) AS missing_amount_billed,
	COUNT(*) FILTER (WHERE fraud_type IS NULL) AS missing_fraud_type
FROM claims_data;

--Find duplicate rows

SELECT patient_id, COUNT(*)
FROM claims_data
GROUP BY patient_id
HAVING COUNT(*)>1;

--Check for invalid date ranges

SELECT*
FROM claims_data
WHERE date_discharged < date_admitted;

--Check for unrealistic ages

SELECT*
FROM claims_data
WHERE age < 0 OR age > 120;

--Check for negative or zero billing amounts

SELECT*
FROM claims_data
WHERE amount_billed <= 0;

--Check for distinct gender values

SELECT DISTINCT gender
FROM claims_data;

--View entire table

SELECT*
FROM claims_data;

SELECT is_fraud, COUNT(*) AS claim_count, SUM(amount_billed) AS total_billed
FROM claims_data
GROUP BY is_fraud;


--most common fraud types

SELECT fraud_type, COUNT(*) AS count, SUM(amount_billed) AS total_loss
FROM claims_data
WHERE fraud_type != 'No Fraud'
GROUP BY fraud_type
ORDER BY total_loss DESC;


--high cost flag


SELECT high_cost_flag, COUNT(*) AS count
FROM claims_data
GROUP BY high_cost_flag;


--view total billing by flag

SELECT high_cost_flag, SUM(amount_billed) AS total_billed
FROM claims_data
GROUP BY high_cost_flag;


--Analyze top diagnosis for high-cost claims

SELECT diagnosis, COUNT(*) AS count, AVG(amount_billed) AS avg_billed
FROM claims_data
WHERE high_cost_flag = TRUE
GROUP BY diagnosis
ORDER BY count DESC;


-- View how many high- cost claims involve fraud


SELECT fraud_type, COUNT(*) AS count, SUM(amount_billed) AS total_loss
FROM claims_data
WHERE high_cost_flag = TRUE AND fraud_type != 'No Fraud'
GROUP BY fraud_type
ORDER by total_loss DESC;

-- Summary of how much money is associated with each type of healthcare fraud

SELECT fraud_type, COUNT(*) AS claim_count, SUM(Amount_billed) AS total_billed
FROM claims_data
GROUP BY fraud_type
ORDER BY total_billed DESC;


--Summary of healthcare fraud claims only

SELECT fraud_type, COUNT(*) AS total_cases,  SUM(amount_billed) AS total_billed
FROM claims_data
WHERE fraud_type !='No Fraud'
GROUP BY fraud_type
ORDER BY total_billed DESC;

--Identify expensive medical procedures

SELECT diagnosis, COUNT(*), AVG(amount_billed) AS avg_billed
FROM claims_data
WHERE high_cost_flag = TRUE
GROUP BY diagnosis
ORDER BY avg_billed DESC;

--Top 10 high cost diagnosis

SELECT diagnosis, COUNT(*) AS claim_count, ROUND(AVG(amount_billed), 2) AS avg_billed
FROM claims_data
WHERE high_cost_flag = TRUE
GROUP BY diagnosis
ORDER BY avg_billed DESC
LIMIT 10;

--combinations of fraud_types and high cost flag

SELECT DISTINCT fraud_type, high_cost_flag
FROM claims_data;


--claims by age group

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
  SUM(CASE WHEN fraud_type != 'No Fraud' THEN 1 ELSE 0 END) AS fradulent_claims
FROM claims_data
GROUP BY age_group
ORDER BY age_group;

	

