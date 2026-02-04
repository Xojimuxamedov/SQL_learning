-- OPERATORS IN SQL

-- COMPARISON OPERATORS
-- =, !=, <>, >, <, >=, <=

SELECT * FROM students;
-- barcha studentlarni korish uchun

SELECT * FROM students
WHERE gpa >= 3.5;
-- gpa si 3.0 yoki undan yuqori bolgan studentlarni korish uchun

SELECT * 
FROM students
WHERE name = 'John Doe';
-- ismi John Doe bolgan studentlarni korish uchun

SELECT *
FROM students
WHERE age <> 30;
-- <> va != teng emas degan ma'noni bildiradi
-- yoshi 30 ga teng bolmagan studentlarni korish uchun


-- LOGICAL OPERATORS
-- AND, OR, NOT

SELECT *
FROM students
WHERE gpa >= 3.0 AND age < 25;
-- gpa si 3.0 yoki undan yuqori va yoshi 25 dan
-- kichik bolgan studentlarni korish uchun

SELECT *
FROM students
WHERE age < 20 OR gpa >= 3.8;
-- yoshi 20 dan kichik yoki gpa si 3.8 yoki undan yuqori bolgan studentlarni korish uchun

SELECT *
FROM students
WHERE NOT gpa < 3.6;
-- gpa si 3.6 dan kichik bolmagan studentlarni korish uchun


-- BETWEEN OPERATOR

SELECT * FROM students
WHERE age BETWEEN 18 AND 22;
-- yoshi 18 dan 22 gacha bolgan studentlarni korish uchun

-- MEMBERSHIP OPERATORS
-- IN, NOT IN

SELECT *
FROM students
WHERE name IN ('Dilshod', 'Jack', 'John Doe');
-- ismi Dilshod, Jack yoki John Doe bolgan studentlarni korish uchun

SELECT *
FROM students
WHERE name NOT IN ('Dilshod', 'Jack', 'John Doe');
-- ismi Dilshod, Jack yoki John Doe bolmagan studentlarni korish uchun


-- SEARCHING OPERATORS
-- LIKE, NOT LIKE

-- % Belgi: Har qanday belgilar ketma-ketligini ifodalaydi
-- % operatordan bitta ishlatsa undan keyingi barcha belgini ichiga oladi

-- _ Belgi: Har qanday bitta belgini ifodalaydi
--_ opearatordan bitta ishlatsa faqat bitta belgini bildiradi


SELECT *
FROM students
WHERE name LIKE 'John%';
-- ismi John bilan boshlanuvchi studentlarni korish uchun

SELECT *
FROM students
WHERE name LIKE '_____Doe';
-- ismi Doe bilan tugaydigan studentlarni korish uchun

SELECT *
FROM students
WHERE name LIKE '%o%';
-- ismi o harfi ichiga kiruvchi studentlarni korish uchun

SELECT *
FROM students
WHERE name NOT LIKE 'A%';
-- ismi A harfi bilan boshlanmaydigan studentlarni korish uchun
