--==============================
--Query: Reopen rate
--By: Parul Sharma
--Business Question:
--What is the reopen rate?
--==============================
SELECT ROUND(
			100.0 * SUM (CASE WHEN reassignment_count > 0 THEN 1 ELSE 0 END)
			/ COUNT(*),
			2)
			AS reopen_rate
FROM incident_summary;
--==============================
--reopen_rate
--1.1
--==============================
