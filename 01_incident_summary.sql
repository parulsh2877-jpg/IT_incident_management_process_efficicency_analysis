CREATE TABLE incident_summary AS
SELECT 
	number,
	MIN(opened_at) AS opened_at,
	MAX(resolved_at) AS resolved_at,
	MAX(priority) AS priority,
	MAX(reassignment_count) AS reassignment_count,
	Max(reopen_count) AS reopen_count,
	MAX(sys_mod_count) AS sys_mod_count
FROM incident_event_log
GROUP BY number