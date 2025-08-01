-- Analysis: Trends of Movie Releases Over Time
SELECT
    EXTRACT(YEAR FROM release_date) AS release_year,
    COUNT(DISTINCT movie_id) AS movies_released
FROM MOVIELENS.DEV.SEED_MOVIE_RELEASE_DATE
GROUP BY release_year
ORDER BY release_year ASC;
