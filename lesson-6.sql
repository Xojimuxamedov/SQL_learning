--Joining Multiple Tables
SELECT 
  p.id AS person_id,
  p.name AS person_name,
  p.email AS person_email,
  o.price AS order_price,
  o.product_name AS order_product,
  a.city AS address_city,
  a.district AS address_district
FROM persons AS p

JOIN orders AS o
ON p.id = o.person_id

JOIN addresses AS a
ON o.order_id = a.address_id;


-- FULL JOIN bilan hamma shaxslar va 
-- ularning buyurtmalari va manzillari 
-- ko'rsatiladi, agar buyurtma yoki manzil 
-- mavjud bo'lmasa, u holda NULL qiymatlar
-- ko'rsatiladi.
SELECT 
  p.id AS person_id,
  p.name AS person_name,
  p.email AS person_email,
  o.price AS order_price,
  o.product_name AS order_product,
  a.city AS address_city,
  a.district AS address_district
FROM persons AS p
LEFT JOIN orders AS o
ON p.id = o.person_id
FULL JOIN addresses AS a
ON o.order_id = a.address_id
ORDER BY p.id DESC;
