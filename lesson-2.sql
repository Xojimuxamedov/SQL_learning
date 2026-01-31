INSERT INTO persons (id, name, age, phone, email)
VALUES (1, 'Dilshod', 21, '+998950447724', 'dilshodxdxd@gmail.com'),
       (2, 'John Doe', 30, '+1234567890', null),
       (3, 'Jack', 30, '+1234567891', null);
-- table ga malumot kiritish uchun

SELECT * FROM persons;
-- table dagi malumotlarni korish uchun

ALTER TABLE persons DROP COLUMN gpa;
-- table dan gpa ustunini ochirish uchun

SELECT * FROM students;
-- students table dagi malumotlarni korish uchun

INSERT INTO   students (id, name, age, email, gpa)
SELECT id, name, age, email, 0.0 FROM persons;
-- persons table dan students table ga malumot ko'chirish uchun

UPDATE students
SET gpa = 3.1
WHERE name = 'Jack' OR age = 21;
-- students table dagi malumotni yangilash uchun

DELETE FROM students
WHERE id = 2;
-- students table dan malumot o'chirish uchun