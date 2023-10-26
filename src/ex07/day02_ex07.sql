SELECT zz.name AS pizzeria_name
FROM person_visits pv
         JOIN person p ON p.id = pv.person_id
         JOIN pizzeria zz ON zz.id = pv.pizzeria_id
         JOIN menu mn ON mn.pizzeria_id = zz.id
WHERE p.name = 'Dmitriy'
  AND pv.visit_date = '2022-01-08'
  AND mn.price < 800;
