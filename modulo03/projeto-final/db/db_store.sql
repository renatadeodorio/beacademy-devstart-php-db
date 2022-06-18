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
  valor FLOAT(5,2) NOT NULL,
  categoria_id INT(100) NOT NULL,
  create_at DATETIME NOT NULL
 
);

INSERT INTO tb_category (name, description) 
VALUES
("Quadros", "Quadros que contam histórias"),
("Modelos dos quadros", " Quadros redondos e quadrados"),
("Tamanho dos quadros", "Tamanho padrão: 40cm X 40cm , outros tamanhos a combinar");


