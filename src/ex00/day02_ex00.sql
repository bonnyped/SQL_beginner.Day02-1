SELECT zz.name,
       zz.rating
FROM person_visits pv
RIGHT JOIN pizzeria zz ON zz.id = pv.pizzeria_id
WHERE pv.visit_date IS NULL;