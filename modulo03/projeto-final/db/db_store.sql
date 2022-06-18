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
("Quadro", "Quadro Los Hermanos","https://lh3.googleusercontent.com/p/AF1QipOtJdcyZ7xQma3V9bzn-bsrOg4a27Pu6RLa0HsV=w960-h960-n-o-v1", 250.00,1, 50, "2022-05-10 09:30:34"),
("Quadro 2", "Quadro Variados","https://lh3.googleusercontent.com/p/AF1QipPRwTaImYWz9pCIZTCrPoSZNHF3HnsFzuA5COor=w960-h960-n-o-v1", 450.00,2, 50, "2022-05-12 09:50:34");


