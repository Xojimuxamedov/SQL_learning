SELECT * 
FROM persons;

SELECT * 
FROM students;

SELECT * 
FROM orders;

SELECT * 
FROM addresses;

SELECT
  p.name AS person_name,
  p.age AS person_age,
  o.product_name AS order_product_name,
  o.price AS order_price,
  a.city AS address_city,
  a.district AS address_street
FROM persons AS p
LEFT JOIN orders AS o
ON p.id = o.person_id
LEFT JOIN addresses AS a
ON p.id = a.person_id;