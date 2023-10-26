WITH tmp1 AS (
    SELECT pv.visit_date
    FROM person_visits pv
    WHERE pv.person_id BETWEEN 1 AND 2
),
     tmp2 AS (SELECT(ds::date) AS missing_date
              FROM generate_series(date '2022-01-01', date '2022-01-10', '1 day') AS ds)

SELECT tmp2.missing_date
FROM tmp2
         FULL JOIN tmp1 ON tmp1.visit_date = tmp2.missing_date
WHERE tmp1.visit_date IS NULL;
