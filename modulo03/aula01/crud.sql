USE db_escola;

----inserir 1 registro----
INSERT INTO tb_professor (nome, email, cpf)
VALUES ('Renata Deodorio', "renatadeodorio@email.com", "12332145678");

----mais de 1 registro----
INSERT INTO tb_professor (nome, email, cpf)
VALUES ('Renan Cardoso', "renancardoso@email.com", "78945612301"),
       ('Rafael Barbieri', "rafaelbarbieri@email.com", "47854796521"),
       ('Ives Tulio', "ives@email.com", "45645245678");

       ---Excluir 1 registro---
       DELETE FROM tb_professor WHERE  id="1";

       --Excluir todos---
       DELETE FROM tb_professor;

       ----Editar dados de 1 registro---
       UPDATE tb_professor SET nome="Ives" WHERE cpf="45645245678";

       -----editar dados de todos os registros /nesse caso todos ficarão com o mesmo nome ---
       UPDATE tb_professor SET nome ="Francisco";

       ---selelcionar todos os dados de todos os professores---
       SELECT * FROM tb_professor;

       ---selecionar todos os dados do professor de id =5 ----
       SELECT * FROM tb_professor WHERE id="5";

       ---selecionar alguns dados de todos os professores---
       SELECT nome, cpf FROM tb_professor;