
--Rank guests based on the number of messages they've exchanged with the hosts. 
--Guests with the same number of messages as other guests should have the same rank. 
--Do not skip rankings if the preceding rankings are identical.
--Output the rank, guest id, and number of total messages they've sent. Order by the 
--highest number of total messages first.

--------------------------------------------------------------------------------------

SELECT
    DENSE_RANK() 
        OVER(ORDER BY sum(n_messages) DESC) Rank_id,
    id_guest,
    sum(n_messages) AS total_messages
FROM airbnb_contacts
GROUP BY id_guest
