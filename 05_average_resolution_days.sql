--==============================
--Query: Average resolution time
--By: Parul Sharma
--Business Question:
--What is the average resolution time?
--=========================
SELECT(ROUND(
			avg(julianday(resolved_at)-julianday(opened_at)),2)) AS average_resolution_days
FROM incident_summary
--==========================
--average_resolution_days
--7.39
--==========================