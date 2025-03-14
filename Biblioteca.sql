CREATE DATABASE Biblioteca_system;
-- drop database Biblioteca_system
USE Biblioteca_system;

CREATE TABLE  livro(
	id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255),
    isbn VARCHAR(20),
    descricao TEXT
);

CREATE TABLE associacao(
	id_associcao INT AUTO_INCREMENT PRIMARY KEY,
    nivel VARCHAR(255)
);

CREATE TABLE  usuario(
	id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    email VARCHAR(255),
	data_de_registro DATE,
    FOREIGN KEY (id_usuario) REFERENCES associacao(id_associcao)
);

CREATE TABLE  autor(
	id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
	data_de_nascimento DATE,
    biografia TEXT
);

CREATE TABLE  emprestimos(
	id_emprestimo INT AUTO_INCREMENT PRIMARY KEY,
    data_de_inicio DATE,
    data_de_retorno DATE,
    id_usuario INT NOT NULL,
    FOREIGN KEY  (id_usuario) REFERENCES usuario(id_usuario)
);

CREATE TABLE categoria(
	id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    tipos_de_categoria VARCHAR(255)
    
);

CREATE TABLE  autor_has_livro(
	id_autor_has_livro INT AUTO_INCREMENT PRIMARY KEY,
	id_autor INT NOT NULL,
    id_livro INT NOT NULL,
    FOREIGN KEY (id_autor) REFERENCES autor(id_autor),
	FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);



CREATE TABLE  categoria_has_livro(
	id_categoria_has_livro INT AUTO_INCREMENT PRIMARY KEY,
	id_categoria INT NOT NULL,
    id_livro INT NOT NULL,
    FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria),
	FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
);
-- 1
INSERT INTO livro(titulo, isbn, descricao)
VALUES
('O Grande Gatsby', '978-0743273565', 'Romance sobre a decadência e os sonhos de riqueza na América dos anos 1920, com o enigmático Jay Gatsby como protagonista.'),
('1984', '978-0451524935', 'Distopia que explora um regime totalitário e a vigilância estatal, com foco na luta pela liberdade individual.'),
('Matar a Saudade ', '978-8576576873', 'Uma reflexão melancólica sobre memória e perda, acompanhando um homem que revisita o passado.'),
('A Revolução dos Bichos ', '978-0451526342', 'Fábula que critica o totalitarismo e os excessos do poder através de animais que tomam o controle de uma fazenda.'),
('Dom Quixote', '978-8520910540', ' A história de um cavaleiro enlouquecido que luta contra gigantes imaginários, desafiando a realidade e os ideais de honra.'),
('O Alquimista ', '978-0062315007', 'Fábula inspiradora sobre a busca pessoal por sonhos e a descoberta de um tesouro interior.');

-- 2
INSERT INTO associacao(nivel)
VALUES
('Ouro'),
('Prata'),
('Bronze');


-- 3
INSERT INTO usuario(nome, email, data_de_registro)
VALUES
('Nicolas', 'bqbvoibovn@gmail.com', '10-03-2025'),
('Fran', 'hshshghbbgw@gmai.com', '10-03-2025'),
('Gigi', 'ncwncipqx@gmail.com', '10-03-2025'),
('Adrian', 'sbvrebiqofb@gmail.com', '10-03-2025'),
('Bruno', 'iwnxjqurowe@gmail.com', '10-03-2025'),
('Marcia', 'qwfbwttr@gmail.com', '10-03-2025');

-- 4
INSERT INTO autor(nome, data_de_nascimento, biografia)
VALUES
('William Shakespeare', '23-04-1564', 'Dramaturgo e poeta inglês, considerado um dos maiores escritores da língua inglesa. Suas obras mais famosas incluem Hamlet, Romeu e Julieta e Macbeth.'),
('Jane Austen', '16-12-1775', 'Escritora inglesa conhecida por suas críticas sociais e romances que exploram as relações de classe e casamento, como Orgulho e Preconceito e Razão e Sensibilidade.'),
('Franz Kafka', ' 03-07-1883', 'Escritor tcheco de origem judaica, suas obras são famosas por seus temas existenciais e surrealistas. Destacam-se A Metamorfose e O Processo.'),
('Gabriel García Márquez', '06-03-1927', ' Escritor colombiano, vencedor do Prêmio Nobel de Literatura, conhecido por seu estilo de realismo mágico. Sua obra mais famosa é Cem Anos de Solidão.'),
('Clarice Lispector', '10-12-1920', 'Escritora brasileira de origem ucraniana, conhecida por suas narrativas introspectivas e complexas, como em A Hora da Estrela e Perto do Coração Selvagem.'),
('George Orwell', ' 25-06-1903', 'Escritor e jornalista britânico, famoso por suas obras políticas e distópicas, como 1984 e A Revolução dos Bichos, que critiquem totalitarismos e autoritarismos.');

-- 5
INSERT INTO emprestimos(data_de_inicio, data_de_retorno, descricao)
VALUES
('10-02-2025', '20-02-2025'),
('10-02-2025', '20-02-2025'),
('11-02-2025', '21-02-2025'),
('20-02-2025', '27-02-2025'),
('05-02-2025', '15-02-2025'),
('02-02-2025', '10-02-2025');

-- 6
INSERT INTO categoria(tipo_de_categoria)
VALUES
('Romance'),
('Ação'),
('Suspense'),
('Ficção'),
('documentario'),
('infantil');


SELECT * from Biblioteca_system

