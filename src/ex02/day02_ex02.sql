WITH period AS (
    SELECT pv.person_id,
           pv.pizzeria_id,
           pv.visit_date
    FROM person_visits pv
    WHERE pv.visit_date BETWEEN '2022-01-01' AND '2022-01-03'
),
     all_pizzerias AS (SELECT prd.person_id,
                              prd.visit_date,
                              zz.name
                       FROM pizzeria zz
                                FULL OUTER JOIN period prd ON prd.pizzeria_id = zz.id
     )

SELECT COALESCE(res.person_name, '-') AS person_name,
       res.visit_date,
       COALESCE(res.pizzeria_name, '-') AS pizzeria_name
FROM (SELECT p.name  person_name,
             ap.visit_date,
             ap.name pizzeria_name
      FROM person p
               FULL OUTER JOIN all_pizzerias ap ON p.id = ap.person_id) AS res
ORDER BY 1, 2, 3;