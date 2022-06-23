CREATE DATABASE db_store;

---selecionar o banco---
USE db_store;

CREATE TABLE tb_category (
  id INT(100) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  description VARCHAR(100) NOT NULL
 
);

CREATE TABLE tb_product (
  id INT(100) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  description VARCHAR(100) NOT NULL,
  photo VARCHAR(255) NOT NULL,
  value FLOAT(5,2) NOT NULL,
  category_id INT(100) NOT NULL,
  quantity INT(15) NOT NULL,
  create_at DATETIME NOT NULL
 
);

INSERT INTO tb_category (name, description) 
VALUES
("Quadros", "Quadros que contam histórias"),
("Modelos dos quadros", " Quadros redondos e quadrados"),
("Tamanho dos quadros", "Tamanho padrão: 40cm X 40cm , outros tamanhos a combinar");

INSERT INTO tb_product(name, description, photo, value,category_id ,quantity, create_at)
VALUES
("Quadro 1", "Quadro Los Hermanos","https://lh3.googleusercontent.com/p/AF1QipOtJdcyZ7xQma3V9bzn-bsrOg4a27Pu6RLa0HsV=w960-h960-n-o-v1", 250.00,1, 50, "2022-05-10 09:30:34"),
("Quadro 2", "Quadro Variados","https://lh3.googleusercontent.com/p/AF1QipPRwTaImYWz9pCIZTCrPoSZNHF3HnsFzuA5COor=w960-h960-n-o-v1", 450.00,2, 50, "2022-05-12 09:50:34"),
("Quadro 3", "Quadro Personalzado","https://www.google.com/maps/uv?pb=!1s0x49d369dd544b827%3A0x84fb647ba3b6fdbf!3m1!7e131!4s!5sDeodorio%27s%20home!15sCgIgAQ&hl=pt-BR&imagekey=!1e10!2sAF1QipPIDxObaSO4MA0Pv1OD97grkLh7efmiyf44lKgs#", 250.00,1, 50, "2022-05-10 09:30:34"),
("Placas 4", "Placas Personalizadas","https://www.google.com/maps/uv?pb=!1s0x49d369dd544b827%3A0x84fb647ba3b6fdbf!3m1!7e131!4s!5sDeodorio%27s%20home!15sCgIgAQ&hl=pt-BR&imagekey=!1e10!2sAF1QipO1ejcHdFoTC4aPoGtyZqEmmEvMuZn1eAco3Bas", 450.00,2, 50, "2022-05-12 09:50:34");

