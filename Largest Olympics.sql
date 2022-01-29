
--Find the Olympics with the highest number of athletes. The Olympics game is a 
--combination of the year and the season, and is found in the 'games' column. Output the 
--Olympics along with the corresponding number of athletes.

----------------------------------------------------------------------------------------

SELECT 
    games,
    count(DISTINCT id) AS total_Athletics
FROM olympics_athletes_events
GROUP BY games
ORDER BY total_Athletics DESC
LIMIT 1
