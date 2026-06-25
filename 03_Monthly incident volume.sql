--==============================
--Query: No. of incidents per month
--By: Parul Sharma
--Business Question:
--What are the no. of incidents each month?
--=========================
SELECT strftime('%Y-%m',opened_at) AS month, COUNT(*) AS incidents
FROM incident_summary
GROUP BY month
ORDER BY month
--==========================
--Results:
--month	incidents
--2016-02	207
--2016-03	8995
--2016-04	7934
--2016-05	7508
--2016-06	5
--2016-07	14
--2016-08	15
--2016-09	12
--2016-10	16
--2016-11	26
--2016-12	37
--2017-01	94
--2017-02	55
--============================
--Business Insights:
--No. of incidents peak around march, april and may months only.
--============================