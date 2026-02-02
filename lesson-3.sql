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