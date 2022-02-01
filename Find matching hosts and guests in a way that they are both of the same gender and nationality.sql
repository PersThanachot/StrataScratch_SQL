
--Find matching hosts and guests pairs in a way that they are both of the same gender and 
--nationality.
--Output the host id and the guest id of matched pair.

------------------------------------------------------------------------------------------

SELECT 
    a.host_id,
    b.guest_id
FROM airbnb_hosts a
INNER JOIN airbnb_guests b
ON a.nationality = b.nationality AND 
   a.gender = b.gender
