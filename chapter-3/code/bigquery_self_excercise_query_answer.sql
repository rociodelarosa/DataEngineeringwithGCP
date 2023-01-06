SELECT
name as region_name, total_trips
FROM `rocio-packt-gcp-data-eng.dwh_bikesharing.fact_region_gender_daily`fact
JOIN `rocio-packt-gcp-data-eng.dwh_bikesharing.dim_regions` dim
ON fact.region_id = dim.region_id
WHERE DATE(trip_date) = DATE('2018-01-02')
AND member_gender = 'Female'
ORDER BY total_trips desc
LIMIT 3;
