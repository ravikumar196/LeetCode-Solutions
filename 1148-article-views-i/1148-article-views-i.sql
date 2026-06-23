# Write your MySQL query statement below

SELECT distinct author_id AS id
FROM Views
WHERE Viewer_id = author_id
ORDER BY author_id Asc;

