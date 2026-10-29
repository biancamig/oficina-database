USE oficina_mecanica;

INSERT INTO Cliente (nome, telefone, email) VALUES
('Ana Souza', '11999990001', 'ana@email.com'),
('Carlos Lima', '11999990002', 'carlos@email.com'),
('Mariana Alves', '11999990003', 'mariana@email.com'),
('Pedro Santos', '11999990004', 'pedro@email.com');

INSERT INTO Veiculo (placa, marca, modelo, ano, idCliente) VALUES
('ABC1234', 'Toyota', 'Corolla', 2022, 1),
('DEF5678', 'Honda', 'Civic', 2020, 2),
('GHI9012', 'Chevrolet', 'Onix', 2023, 1),
('JKL3456', 'Volkswagen', 'Polo', 2021, 3),
('MNO7890', 'Fiat', 'Argo', 2019, 4);

INSERT INTO Mecanico (nome, especialidade) VALUES
('João Ferreira', 'Motor'),
('Lucas Martins', 'Freios'),
('Rafael Costa', 'Revisão geral');

INSERT INTO OrdemServico
(dataAbertura, status, idVeiculo, idMecanico) VALUES
('2026-10-01', 'Concluída', 1, 1),
('2026-10-05', 'Em andamento', 2, 2),
('2026-10-10', 'Concluída', 3, 3),
('2026-10-15', 'Aberta', 4, 1),
('2026-10-20', 'Concluída', 5, 2),
('2026-10-22', 'Concluída', 1, 3);

INSERT INTO Servico (descricao, preco) VALUES
('Troca de óleo', 180.00),
('Revisão de freios', 350.00),
('Alinhamento', 120.00),
('Revisão de motor', 800.00);

INSERT INTO ItemOrdemServico
(idOrdemServico, idServico, quantidade, precoUnitario) VALUES
(1, 1, 1, 180.00),
(1, 3, 1, 120.00),
(2, 2, 1, 350.00),
(3, 4, 1, 800.00),
(3, 1, 1, 180.00),
(4, 3, 1, 120.00),
(5, 1, 2, 170.00),
(6, 2, 1, 350.00),
(6, 3, 1, 120.00);