
--Find songs that have ranked in the top position. Output the track name and the number 
--of times it ranked at the top. Sort your records by the number of times the song was in 
--the top position in descending order.

-------------------------------------------------------------------------------------------

SELECT 
    trackname,
    count(*) AS count_toprank
FROM spotify_worldwide_daily_song_ranking
WHERE position = 1
GROUP BY trackname
ORDER BY count_toprank DESC
