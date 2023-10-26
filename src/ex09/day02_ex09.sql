WITH name_and_cheese_pizza AS (SELECT p.id,
                                      p.name
FROM person p
JOIN person_order po ON po.person_id = p.id
JOIN menu mn ON mn.id = po.menu_id
WHERE gender = 'female' AND pizza_name = 'cheese pizza'),
      name_and_pepperoni_pizza AS (SELECT p.id,
                                          p.name
FROM person p
JOIN person_order po ON po.person_id = p.id
JOIN menu mn ON mn.id = po.menu_id
WHERE gender = 'female' AND pizza_name = 'pepperoni pizza')

SELECT nacp.name AS person_name
FROM name_and_cheese_pizza nacp
JOIN name_and_pepperoni_pizza napp ON napp.id = nacp.id
ORDER BY person_name;