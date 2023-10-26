SELECT pizza_name,
       zz.name AS pizzeria_name
FROM person_order po
         JOIN menu mn ON mn.id = po.menu_id
         JOIN pizzeria zz ON zz.id = mn.pizzeria_id
WHERE po.person_id = 1
   OR po.person_id = 4
ORDER BY 1,2;