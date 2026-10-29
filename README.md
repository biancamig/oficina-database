Projeto de Banco de Dados — Oficina Mecânica

Descrição
O projeto consiste na criação de um banco de dados relacional para gerenciar uma oficina mecânica, incluindo clientes, veículos, mecânicos, ordens de serviço e serviços realizados.

Modelo lógico
O banco é composto por seis tabelas:

- Cliente: dados dos clientes.
- Veiculo: informações dos veículos e seus proprietários.
- Mecanico: dados dos mecânicos e suas especialidades.
- OrdemServico: registro das ordens de serviço.
- Servico: catálogo de serviços e preços.
- ItemOrdemServico: relaciona os serviços às ordens, armazenando quantidade e preço unitário.

O modelo utiliza chaves primárias, chaves estrangeiras e relacionamentos para garantir a integridade dos dados.

Tecnologias utilizadas
- MySQL
- MySQL Workbench
- SQL
- GitHub

Arquivos do projeto
- `schema.sql`: criação do banco e das tabelas.
- `data.sql`: inserção de dados para testes.
- `queries.sql`: consultas SQL.
- `diagrama oficina.png`: diagrama do modelo lógico.

Consultas SQL
Foram desenvolvidas consultas utilizando SELECT, WHERE, atributos derivados, ORDER BY, GROUP BY, HAVING e JOIN para analisar os dados da oficina.

Como executar
1. Execute `schema.sql` no MySQL Workbench.
2. Execute `data.sql` para inserir os dados.
3. Execute `queries.sql` para testar as consultas.

Conclusão
O projeto aplica os conceitos de modelagem relacional e SQL para organizar e consultar informações de uma oficina mecânica.