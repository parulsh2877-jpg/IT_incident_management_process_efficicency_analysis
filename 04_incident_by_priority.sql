--==============================
--Query: No. of incidents by priority
--By: Parul Sharma
--Business Question:
--What is the distribution of incidents across different priority levels?
--===============================
SELECT priority, COUNT(number) AS incidents
FROM incident_summary
GROUP BY priority
--===============================
--Results:
--priority	incidents
--1 - Critical	125
--2 - High	301
--3 - Moderate	23707
--4 - Low	785
--================================
--Business Insights:
--Moderate incidents are nearly 95 % of the total incidents.
--Critical incidents are the least no. of incidents ar 125
--followed by High priority incidents at 301.
--================================