-- No Joins
SELECT * FROM persons;
SELECT * FROM orders;


-- Inner Join
SELECT id, name, age, product_name, price, email FROM persons
INNER JOIN orders 
ON persons.id = orders.person_id;


-- Left Join
SELECT 
  p.id, 
  p.name,
  p.age,
  a.city,
  a.district
FROM persons as p
LEFT JOIN addresses as a
ON p.id = a.person_id;

-- Right Join lar ham Left Join bilan bir xil ishlaydi
-- faqat farqi qaysi bir tableni birinchi olishimizda
-- ya'ni o'ng tomondagi jadvalni birinchi olsak 
-- Left Join bilan Right Join ni ishlatgan bo'lamiz

-- Full Join
SELECT
  p.id,
  p.name,
  p.age,
  p.phone,
  s.email,
  s.gpa
FROM persons AS p
FULL JOIN students AS s
ON p.id = s.id;