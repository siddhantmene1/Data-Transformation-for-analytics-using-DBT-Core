-- Analysis: Tag Relevance Analysis
SELECT
    t.tag_name,
    AVG(gs.relevance_score) AS avg_relevance,
    COUNT(DISTINCT gs.movie_id) AS movies_tagged
FROM MOVIELENS.DEV.FCT_GENOME_SCORES gs
JOIN MOVIELENS.DEV.DIM_GENOME_TAGS t 
    ON gs.tag_id = t.tag_id
GROUP BY t.tag_name
ORDER BY avg_relevance DESC;
