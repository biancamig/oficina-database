SELECT * FROM Servico;

SELECT idOrdemServico, dataAbertura, status
FROM OrdemServico
WHERE status = 'Concluída';

SELECT
    idOrdemServico,
    SUM(quantidade * precoUnitario) AS valorTotal
FROM ItemOrdemServico
GROUP BY idOrdemServico;

SELECT descricao, preco
FROM Servico
ORDER BY preco DESC;

SELECT
    c.idCliente,
    c.nome,
    COUNT(v.idVeiculo) AS totalVeiculos
FROM Cliente c
INNER JOIN Veiculo v
    ON c.idCliente = v.idCliente
GROUP BY c.idCliente, c.nome
HAVING COUNT(v.idVeiculo) >= 2;

SELECT
    c.nome AS cliente,
    v.modelo AS veiculo,
    os.idOrdemServico,
    s.descricao AS servico,
    ios.quantidade,
    ios.precoUnitario,
    (ios.quantidade * ios.precoUnitario) AS subtotal
FROM Cliente c
INNER JOIN Veiculo v
    ON c.idCliente = v.idCliente
INNER JOIN OrdemServico os
    ON v.idVeiculo = os.idVeiculo
INNER JOIN ItemOrdemServico ios
    ON os.idOrdemServico = ios.idOrdemServico
INNER JOIN Servico s
    ON ios.idServico = s.idServico
ORDER BY os.idOrdemServico;

SELECT
    os.idOrdemServico,
    m.nome AS mecanico,
    os.status,
    SUM(ios.quantidade * ios.precoUnitario) AS valorTotal
FROM OrdemServico os
INNER JOIN Mecanico m
    ON os.idMecanico = m.idMecanico
INNER JOIN ItemOrdemServico ios
    ON os.idOrdemServico = ios.idOrdemServico
GROUP BY
    os.idOrdemServico,
    m.nome,
    os.status
ORDER BY valorTotal DESC;

SELECT
    m.nome AS mecanico,
    COUNT(os.idOrdemServico) AS totalOrdens
FROM Mecanico m
INNER JOIN OrdemServico os
    ON m.idMecanico = os.idMecanico
GROUP BY m.idMecanico, m.nome
HAVING COUNT(os.idOrdemServico) > 1
ORDER BY totalOrdens DESC;

SELECT
    os.idOrdemServico,
    c.nome AS cliente,
    SUM(ios.quantidade * ios.precoUnitario) AS valorTotal
FROM OrdemServico os
INNER JOIN Veiculo v
    ON os.idVeiculo = v.idVeiculo
INNER JOIN Cliente c
    ON v.idCliente = c.idCliente
INNER JOIN ItemOrdemServico ios
    ON os.idOrdemServico = ios.idOrdemServico
GROUP BY os.idOrdemServico, c.nome
HAVING SUM(ios.quantidade * ios.precoUnitario) > 300
ORDER BY valorTotal DESC;