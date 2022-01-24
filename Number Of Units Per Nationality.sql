
--Find the number of apartments per nationality that are owned by people under 30 years 
--old.
--Output the nationality along with the number of apartments.
--Sort records by the apartments count in descending order.

---------------------------------------------------------------------------------------

SELECT 
    a.nationality,
    count(*) AS number
FROM airbnb_hosts a
LEFT JOIN airbnb_units b
ON a.host_id = b.host_id
WHERE a.age < 30 AND
      b.unit_type = 'Apartment'
GROUP BY a.nationality
ORDER BY number DESC
