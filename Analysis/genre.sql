SELECT 
    genre.value::string AS genre, 
    AVG(r.rating) AS average_rating, 
    COUNT(DISTINCT m.movie_id) AS total_movies
FROM MOVIELENS.DEV.DIM_MOVIES m
JOIN MOVIELENS.DEV.FCT_RATINGS r 
    ON m.movie_id = r.movie_id
, LATERAL FLATTEN(input => m.genre_array) AS genre
GROUP BY genre.value
ORDER BY average_rating DESC;
