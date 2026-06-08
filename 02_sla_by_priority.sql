SELECT priority, (ROUND(100 * SUM(CASE
				WHEN made_sla = 'TRUE' THEN 1 ELSE 0 END) / COUNT(*) , 2)) AS sla_compliance
FROM incident_event_log
GROUP BY priority
ORDER BY priority;

--======================================
--Result:
--
--priority	sla_compliance
--1 - Critical	88
--2 - High	86
--3 - Moderate	93
--4 - Low	96
