SELECT pizza_name,
       zz.name AS pizzeria_name,
       mn.price
FROM menu mn
         LEFT JOIN pizzeria zz on zz.id = mn.pizzeria_id
WHERE pizza_name = 'mushroom pizza'
   OR pizza_name = 'pepperoni pizza'
ORDER BY pizza_name, pizzeria_name;
