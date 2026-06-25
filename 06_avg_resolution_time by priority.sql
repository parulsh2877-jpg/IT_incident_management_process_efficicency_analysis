--==============================
--Query: Average resolution time by priority
--By: Parul Sharma
--Business Question:
--How does resolution time varies across incident priorities?
--=========================
SELECT priority,
		ROUND(AVG(julianday(resolved_at)-julianday(opened_at)),2) AS avg_resolution_time
FROM incident_summary
GROUP BY priority
--=========================
--Results:
--priority	avg_resolution_time
--1 - Critical	7.62
--2 - High	6.61
--3 - Moderate	7.26
--4 - Low	11.57
--==========================
Business Insights:
--Low priority incidents have longest resolution time at 11.57 days.
--Critical incidents require more time than high priority incidents.
--==========================