
--Count the number of user events performed by MacBookPro users.
--Output the result along with the event name.
--Sort the result based on the event count in the descending order.

---------------------------------------------------------------------------

SELECT 
    event_name,
    count(*) AS count_event
FROM playbook_events
WHERE device = 'macbook pro'
GROUP BY event_name
ORDER BY count_event DESC
