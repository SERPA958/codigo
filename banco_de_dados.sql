CREATE DATABASE pequeno_comercio;
USE pequeno_comercio;

CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL
);

CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente VARCHAR(100) NOT NULL,
    produto_id INT NOT NULL,
    quantidade INT NOT NULL,
    data_pedido DATE NOT NULL,
    FOREIGN KEY (produto_id) REFERENCES produtos(id)
);

INSERT INTO produtos (nome, preco, estoque) VALUES 
('Café Expresso', 5.50, 50),
('Livro de Programação', 80.00, 20),
('Bolo de Chocolate', 10.00, 30);


INSERT INTO pedidos (cliente, produto_id, quantidade, data_pedido) VALUES 
('Ana Souza', 1, 2, '2025-04-22'),
('Carlos Mendes', 2, 1, '2025-04-21'),
('Julia Lima', 3, 3, '2025-04-22');

git init
git add banco_de_dados.sql
git commit -m "Inicialização do banco de dados com tabelas produtos e pedidos"
git remote add origin https://github.com/seuusuario/pequeno_comercio.git
git push -u origin main
