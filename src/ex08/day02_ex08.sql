WITH name_and_pizza AS (SELECT name,
                          pizza_name
                   FROM person p
                            JOIN person_order po on p.id = po.person_id
                            JOIN menu mn ON mn.id = po.menu_id
                   WHERE gender = 'male'
                       AND address = 'Moscow'
                      OR address = 'Samara')
SELECT name
FROM name_and_pizza
WHERE pizza_name = 'mushroom pizza' OR pizza_name = 'pepperoni pizza'
ORDER BY name DESC;