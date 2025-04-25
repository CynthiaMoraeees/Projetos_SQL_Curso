USE PlataformaJogos;
-- Consulta 1: Usuários cadastrados após 01 de março de 2023
SELECT * FROM Usuario
WHERE data_cadastro > '2023-03-01';

-- Consulta 2: Jogos com preço superior a 100.00
SELECT * FROM Jogo
WHERE preco > 100.00;

-- Consulta 3: Desenvolvedoras fundadas depois do ano 2000
SELECT * FROM Desenvolvedora
WHERE ano_fundacao > 2000;

-- Consulta 4: Jogos da desenvolvedora "Valve Corporation"
SELECT Jogo.*
FROM Jogo
JOIN Desenvolvedora ON Jogo.id_desenvolvedora = Desenvolvedora.id
WHERE Desenvolvedora.nome = 'Valve Corporation';

-- Consulta 5: Preço médio dos jogos na plataforma
SELECT AVG(preco) AS preco_medio
FROM Jogo;

-- Consulta 6: Preço total dos jogos comprados pelo usuário "Carlos Silva"
SELECT SUM(Jogo.preco) AS total_gasto
FROM Biblioteca
JOIN Usuario ON Biblioteca.id_usuario = Usuario.id
JOIN Jogo ON Biblioteca.id_jogo = Jogo.id
WHERE Usuario.nome = 'Carlos Silva';

-- Consulta 7: Jogo mais caro da desenvolvedora "Rockstar Games"
SELECT Jogo.*
FROM Jogo
JOIN Desenvolvedora ON Jogo.id_desenvolvedora = Desenvolvedora.id
WHERE Desenvolvedora.nome = 'Rockstar Games'
ORDER BY preco DESC
LIMIT 1;

-- Consulta 8: Jogos da categoria "RPG"
SELECT Jogo.*
FROM Jogo
JOIN JogoCategoria ON Jogo.id = JogoCategoria.id_jogo
JOIN Categoria ON JogoCategoria.id_categoria = Categoria.id
WHERE Categoria.nome = 'RPG';

-- Consulta 9: Usuários e os jogos que eles possuem na biblioteca
SELECT Usuario.nome AS usuario, Jogo.titulo AS jogo
FROM Biblioteca
JOIN Usuario ON Biblioteca.id_usuario = Usuario.id
JOIN Jogo ON Biblioteca.id_jogo = Jogo.id;

-- Consulta 10: Total de jogos na plataforma desenvolvidos por estúdios dos EUA
SELECT COUNT(*) AS total_jogos_eua
FROM Jogo
JOIN Desenvolvedora ON Jogo.id_desenvolvedora = Desenvolvedora.id
WHERE Desenvolvedora.pais = 'EUA';
