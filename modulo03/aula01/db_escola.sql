--Para criar um banco de dos--
CREATE DATABASE db_escola;

--selecionar o banco de dados--
USE db_escola;

---Excluir tabela--
DROP TABLE tb_professor;

--Criar tabela--
CREATE TABLE tb_professor (
  id INT(11) PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
cpf CHAR(11) UNIQUE NOT NULL,
email VARCHAR(255) UNIQUE NOT NULL
);

CREATE TABLE tb_aluno (
nome VARCHAR(100) NOT NULL,
cpf CHAR(11) NOT NULL,
email VARCHAR(255) NOT NULL,
matricula VARCHAR(10) NOT NULL
);

--inserir dados--
INSERT INTO tb_professor (nome, email, cpf)
VALUES (
  "Renata","renata@email.com","12312312312"
  );

  INSERT INTO tb_professor (nome, email, cpf)
VALUES (
  "Renan","renan@email.com","12345678901"
  );

    INSERT INTO tb_professor (nome, email, cpf)
VALUES (
  "Rafael","rafael@email.com","98765432109"
  );

  --Selecionar os dados--
  SELECT *FROM tb_professor;