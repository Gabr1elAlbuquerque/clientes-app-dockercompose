CREATE DATABASE IF NOT EXISTS clientes_db 
  CHARACTER SET utf8mb4 
  COLLATE utf8mb4_general_ci;

USE clientes_db;

CREATE TABLE IF NOT EXISTS Clientes (
    Id_Cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nome VARCHAR(100) NOT NULL,
    Endereco VARCHAR(150),
    Cidade VARCHAR(100),
    Telefone VARCHAR(20)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO Clientes (Nome, Endereco, Cidade, Telefone) VALUES
('João Silva', 'Rua A, 123', 'São Paulo', '11999990001'),
('Maria Souza', 'Rua B, 456', 'Rio de Janeiro', '21999990002'),
('Carlos Lima', 'Av. Central, 789', 'Belo Horizonte', '31999990003'),
('Ana Costa', 'Rua C, 321', 'Curitiba', '41999990004'),
('Pedro Santos', 'Rua D, 654', 'Porto Alegre', '51999990005'),
('Lucas Rocha', 'Av. Paulista, 1000', 'São Paulo', '11999990006'),
('Fernanda Alves', 'Rua E, 222', 'Campinas', '19999990007'),
('Rafael Melo', 'Rua F, 333', 'Recife', '81999990008'),
('Juliana Ramos', 'Rua G, 444', 'Fortaleza', '85999990009'),
('Bruno Martins', 'Rua H, 555', 'Salvador', '71999990010'),
('Amanda Ferreira', 'Rua I, 666', 'Goiânia', '62999990011'),
('Rodrigo Dias', 'Rua J, 777', 'Manaus', '92999990012'),
('Paula Barbosa', 'Rua K, 888', 'Natal', '84999990013'),
('Thiago Cardoso', 'Rua L, 999', 'Belém', '91999990014'),
('Camila Moura', 'Rua M, 111', 'São Luís', '98999990015'),
('Eduardo Nunes', 'Rua N, 222', 'Teresina', '86999990016'),
('Larissa Pires', 'Rua O, 333', 'João Pessoa', '83999990017'),
('Gabriel Oliveira', 'Rua P, 444', 'Aracaju', '79999990018'),
('Beatriz Correia', 'Rua Q, 555', 'Maceió', '82999990019'),
('Marcelo Batista', 'Rua R, 666', 'Campo Grande', '67999990020'),
('Renata Gomes', 'Rua S, 777', 'Cuiabá', '65999990021'),
('Felipe Duarte', 'Rua T, 888', 'Florianópolis', '48999990022'),
('Patrícia Faria', 'Rua U, 999', 'Vitória', '27999990023'),
('André Teixeira', 'Rua V, 111', 'Macapá', '96999990024'),
('Carolina Azevedo', 'Rua W, 222', 'Rio Branco', '68999990025'),
('Vinícius Prado', 'Rua X, 333', 'Palmas', '63999990026'),
('Sofia Lima', 'Rua Y, 444', 'Boa Vista', '95999990027'),
('Mateus Silva', 'Rua Z, 555', 'Porto Velho', '69999990028'),
('Isabela Rocha', 'Rua Alfa, 666', 'São Paulo', '11999990029'),
('Diego Moreira', 'Rua Beta, 777', 'Rio de Janeiro', '21999990030');
