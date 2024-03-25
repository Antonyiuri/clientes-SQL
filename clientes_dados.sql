-- Criar o banco de dados
CREATE DATABASE MeuBancoDeDados;

-- Usar o banco de dados
USE MeuBancoDeDados;

-- Criar tabela "Clientes"
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100)
);

-- Inserir dados na tabela Clientes
INSERT INTO Clientes (ClienteID, Nome, Email)
VALUES (1, 'João', 'joao@email.com'),
       (2, 'Maria', 'maria@email.com');

-- Criar tabela "Pedidos"
CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,
    Produto VARCHAR(100),
    Quantidade INT,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Inserir dados na tabela Pedidos
INSERT INTO Pedidos (PedidoID, ClienteID, Produto, Quantidade)
VALUES (1, 1, 'Camiseta', 2),
       (2, 2, 'Calça', 1);

-- Consulta utilizando INNER JOIN para obter os pedidos de cada cliente
SELECT Clientes.Nome, Pedidos.Produto, Pedidos.Quantidade
FROM Clientes
INNER JOIN Pedidos ON Clientes.ClienteID = Pedidos.ClienteID;
