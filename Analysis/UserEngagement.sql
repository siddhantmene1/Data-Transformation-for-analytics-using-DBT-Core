SELECT
    user_id,
    COUNT(*) AS number_of_ratings,
    AVG(rating) AS average_rating_given
FROM MOVIELENS.DEV.FCT_RATINGS
GROUP BY user_id
ORDER BY number_of_ratings DESC;
