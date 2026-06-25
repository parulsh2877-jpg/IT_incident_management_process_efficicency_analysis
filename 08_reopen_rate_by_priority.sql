--==============================
--Query: Reopen rate by priority
--By: Parul Sharma
--Business Question:
--What is the reopen rate across different priority level?
--==============================
SELECT priority,
		ROUND(
			100.0 * SUM (CASE WHEN reopen_count > 0 THEN 1 ELSE 0 END)
			/ COUNT(*),
			2) AS reopen_rate
FROM incident_summary
GROUP BY priority
--=============================
--priority	reopen_rate
--1 - Critical	0
--2 - High	0.33
--3 - Moderate	1.15
--4 - Low	0.25
--=============================
--Business Insights:
--Reopen rate remained low across all priority levels.
--Reopen rate for critical incidents is zero reopenings.
--Moderate priority incidents has significantly high reopen rate at 1.15.
--=============================