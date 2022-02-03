
--Find the top 5 businesses with most reviews. Assume that each row has a unique 
--business_id such that the total reviews for each business is listed on each row. Output 
--the business name along with the total number of reviews and order your results by the 
--total reviews in descending order.

-----------------------------------------------------------------------------------------

SELECT 
    name,
    review_count AS total_review
FROM yelp_business
ORDER BY total_review DESC
LIMIT 5
