SELECT
    author_id AS id
FROM
    views
WHERE
    author_id = viewer_id AND viewer_id >= 1
GROUP BY
    author_id
ORDER BY
    id ASC
;
