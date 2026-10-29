CREATE DATABASE IF NOT EXISTS oficina_mecanica;
USE oficina_mecanica;

CREATE TABLE Cliente (
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Veiculo (
    idVeiculo INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10) NOT NULL UNIQUE,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    ano INT,
    idCliente INT NOT NULL,
    CONSTRAINT fk_veiculo_cliente
        FOREIGN KEY (idCliente)
        REFERENCES Cliente(idCliente)
);

CREATE TABLE Mecanico (
    idMecanico INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100)
);

CREATE TABLE OrdemServico (
    idOrdemServico INT AUTO_INCREMENT PRIMARY KEY,
    dataAbertura DATE NOT NULL,
    status VARCHAR(30) NOT NULL,
    idVeiculo INT NOT NULL,
    idMecanico INT NOT NULL,
    CONSTRAINT fk_os_veiculo
        FOREIGN KEY (idVeiculo)
        REFERENCES Veiculo(idVeiculo),
    CONSTRAINT fk_os_mecanico
        FOREIGN KEY (idMecanico)
        REFERENCES Mecanico(idMecanico)
);

CREATE TABLE Servico (
    idServico INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL
);

CREATE TABLE ItemOrdemServico (
    idOrdemServico INT NOT NULL,
    idServico INT NOT NULL,
    quantidade INT NOT NULL DEFAULT 1,
    precoUnitario DECIMAL(10,2) NOT NULL,
    PRIMARY KEY (idOrdemServico, idServico),
    CONSTRAINT fk_item_ordem
        FOREIGN KEY (idOrdemServico)
        REFERENCES OrdemServico(idOrdemServico),
    CONSTRAINT fk_item_servico
        FOREIGN KEY (idServico)
        REFERENCES Servico(idServico)
);