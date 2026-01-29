CREATE TABLE persons(
  id  INT,
  name VARCHAR(100) NOT NULL,
  age INT,
  phone VARCHAR(15) NOT NULL,
  CONSTRAINT pk_persons PRIMARY KEY(id)
)
-- SQL  table yasaydi 

SELECT * FROM persons;
-- tableda nima borligini korish uchun

ALTER TABLE persons
ADD email VARCHAR(100);
-- table ustuniga email qo'shish uchun 
-- lekin oxirgi qatorda joylashadi 

DROP TABLE persons;
-- table ni o'chirish uchun