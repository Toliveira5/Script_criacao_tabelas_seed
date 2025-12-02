CREATE DATABASE vinhos_db;
USE vinhos_db;

CREATE TABLE tb_regiao (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    localidade_s DECIMAL(10,4),
    localidade_w DECIMAL(10,4),
    descricao VARCHAR(255)
);

CREATE TABLE tb_vinicola (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    fone VARCHAR(20),
    email VARCHAR(100),
    regiao_id INT,
    FOREIGN KEY (regiao_id) REFERENCES tb_regiao(id)
);

CREATE TABLE tb_tipo_vinho (
    id INT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE tb_vinho (
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tipo_id INT,
    preco DECIMAL(10,2),
    vinicola_id INT,
    FOREIGN KEY (tipo_id) REFERENCES tb_tipo_vinho(id),
    FOREIGN KEY (vinicola_id) REFERENCES tb_vinicola(id)
);



INSERT INTO tb_regiao (id, nome, localidade_s, localidade_w, descricao)
VALUES 
(1, 'Vale Central', 33.8088, 70.7644, 'Chile'),
(2, 'Serra Gaúcha', 29.3746, 50.8764, 'Sul do Brasil');


INSERT INTO tb_vinicola (id, nome, descricao, fone, email, regiao_id)
VALUES
(1, 'Santa Rita', 'Localizada no valle del maipo e tem mais de 100 anos de história', NULL, 'santa@gmail.com', 1),
(2, 'Santa Carolina', NULL, '3395-4422', 'carolina@gmail.com', 1),
(3, 'Garibaldi', 'Vinícola situada na serra gaúcha', '9822-3344', 'garibaldi@gmail.com', 2);


INSERT INTO tb_tipo_vinho (id, nome)
VALUES
(1, 'Tinto'),
(2, 'Branco'),
(3, 'Rose'),
(4, 'Bordeaux');


INSERT INTO tb_vinho (id, nome, tipo_id, preco, vinicola_id)
VALUES
(1, 'Amanda', 1, 100.00, 1),
(2, 'Belinha', 2, 200.00, 1),
(3, 'Camila', 4, 65.00, 2),
(4, 'Daniela', 3, 89.00, 2),
(5, 'Eduarda', 1, 55.00, 3),
(6, 'Fernanda', 2, 70.00, 3);
