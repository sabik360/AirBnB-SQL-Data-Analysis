SELECT host_name,host_id,
CAST(REPLACE(Price,'$','') AS UNSIGNED) AS price_modified,
(365 - availability_365) AS booked_365 , 
CAST(REPLACE(Price,'$','') AS UNSIGNED)*(365 - availability_365) / beds AS revenue_365
FROM listings 
ORDER BY revenue_365 
DESC LIMIT 10; 
