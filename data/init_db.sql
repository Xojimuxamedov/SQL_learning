-- 1. Persons jadvali
CREATE TABLE persons (
    id INT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT,
    phone VARCHAR(15) NOT NULL,
    email VARCHAR(100)
);

-- 2. Students jadvali
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    email VARCHAR(100),
    gpa DECIMAL(3, 2)
);

-- 3. Orders jadvali
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    person_id INT,
    product_name VARCHAR(100),
    price DECIMAL(10, 2),
    CONSTRAINT fk_person FOREIGN KEY(person_id) REFERENCES persons(id)
);

-- 4. Addresses jadvali
CREATE TABLE addresses (
    address_id INT PRIMARY KEY,
    person_id INT,
    city VARCHAR(50),
    district VARCHAR(50),
    CONSTRAINT fk_person_addr FOREIGN KEY(person_id) REFERENCES persons(id)
);





-- Persons ma'lumotlari
INSERT INTO persons (id, name, age, phone, email) VALUES 
(1, 'Dilshod', 21, '+998950447724', 'dilshodxdxd@gmail.com'),
(2, 'John Doe', 30, '+1234567890', 'john@example.com'),
(3, 'Jack', 30, '+1234567891', 'jack@mail.com'),
(4, 'Ali', 19, '+998901234567', 'ali@test.com');

-- Students ma'lumotlari (Persons'dan ko'chirish va qo'shimcha)
INSERT INTO students (id, name, age, email, gpa)
SELECT id, name, age, email, 3.5 FROM persons WHERE id <= 3;

-- Orders (Buyurtmalar)
INSERT INTO orders (person_id, product_name, price) VALUES 
(1, 'iPhone 15', 1200.00),
(1, 'AirPods', 250.00),
(2, 'MacBook Air', 1500.00),
(3, 'Samsung S23', 900.00);

-- Addresses (Manzillar)
INSERT INTO addresses (address_id, person_id, city, district) VALUES 
(1, 1, 'Toshkent', 'Chilonzor'),
(2, 2, 'New York', 'Manhattan'),
(3, 3, 'London', 'Westminster');