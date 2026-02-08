-- LEFT ANTI JOIN
SELECT *
FROM person AS p
LEFT JOIN orders AS o
ON p.id = o.person_id
WHERE o.person_id IS NULL;


-- RIGHT ANTI JOIN
SELECT *
FROM person AS p
RIGHT JOIN orders AS o
ON p.id = o.person_id
WHERE p.id IS NULL;
-- Bu left join bilan bir hil ishlaydi
-- faqat birinchi jadvlar o'rniga ikkinchi 
-- jadvalni qo'ysa bo'ldi


-- FULL ANTI JOIN
SELECT *
FROM persons AS p
FULL JOIN orders AS o
ON p.id = o.person_id
WHERE
  p.id IS NULL
  OR o.person_id IS NULL;