--==============================
--Query: Average reassignment rate
--By: Parul Sharma
--Business Question:
--What is the average reassignment rate?
--===============================
SELECT ROUND(AVG(reassignment_count),2) AS avg_reassignment
FROM incident_summary
--===============================
--Results:
--avg_reassignment
--0.94
--===============================
--Business Insights:
--Average reassignment rate is less than 1 which means mostly
--cases get resolved without reassignment.
--===============================