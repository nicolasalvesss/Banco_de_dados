CREATE DATABASE Atividade_system;
-- DROP DATABASE Atividade_system; 
USE Atividade_system;

CREATE TABLE Curso(
	id_curso INT AUTO_INCREMENT PRIMARY KEY,
    curso VARCHAR(255),
    turno VARCHAR(255)
);

CREATE TABLE Aluno(
	id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    matricula INT,
    id_curso INT NOT NULL,
    FOREIGN KEY (id_curso)REFERENCES Curso(id_curso)
);

CREATE TABLE Disciplina(
	id_disciplina INT AUTO_INCREMENT PRIMARY KEY,
    disciplina VARCHAR(255),
    carga_hora INT,
    id_curso INT NOT NULL,
	FOREIGN KEY (id_curso)REFERENCES Curso(id_curso)
);

ALTER TABLE Atividade_system.Curso ADD ano INT;

ALTER TABLE Atividade_system.Disciplina ADD sala VARCHAR(50);

INSERT INTO Curso(curso,turno, ano)
VALUES
	('Desenvolvimento de Sistemas','Manhã/Tarde',2008),
    ('Mecatronica','Manhã/Tarde',2009),
    ('Administração','Manhã/Tarde',2020);
    
INSERT INTO Disciplina(disciplina,carga_hora, id_curso)
VALUES
	('POO',30,1),
    ('Usinagem simples',130,2),
    ('Excel',200,3);
    

INSERT INTO Aluno(nome,matricula,id_curso)
VALUES
	('Nicolas Vilela',1234567,3),
    ('Giovana Cristina',6435432,2),
    ('Abacate tomate',4367321,1);
    
SELECT * FROM Curso;

SELECT * FROM Disciplina;

SELECT * FROM Aluno;