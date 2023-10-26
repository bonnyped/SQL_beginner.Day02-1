WITH fact_visit AS (SELECT zz.name AS pizzeria_name
                    FROM person_visits pv
                             JOIN person p ON p.id = pv.person_id
                             JOIN pizzeria zz ON zz.id = pv.pizzeria_id
                    WHERE p.name = 'Dmitriy'
                      AND pv.visit_date = '2022-01-08'),
     cheapest_pizzerias AS (SELECT zz.name
                            FROM menu mn
                                     JOIN pizzeria zz ON zz.id = mn.pizzeria_id
                            WHERE mn.price < 800)
SELECT fv.pizzeria_name
FROM fact_visit fv
UNION ALL
SELECT cp.name
FROM cheapest_pizzerias cp;