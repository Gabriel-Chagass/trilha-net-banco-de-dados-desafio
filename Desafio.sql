--Etapa 1
SELECT Nome, Ano FROM filmes
--Etapa 2
SELECT Nome, Ano FROM filmes ORDER BY Ano
--Etapa 3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'de volta para o futuro'
--Etapa 4
SELECT Nome, Ano, Duracao FROM Filmes WHERE ano = 1997
--Etapa 5
SELECT Nome, Ano, Duracao FROM Filmes WHERE ano > 2000
--Etapa 6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao
--Etapa 7
SELECT Ano, COUNT(*) Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC
--Etapa 8
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'
--Etapa 9
SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome
--Etapa 10
SELECT Filmes.Nome, Generos.Genero
FROM FilmesGenero 
INNER JOIN Filmes 
ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos
ON FilmesGenero.IdGenero = Generos.Id
--Etapa 11
SELECT Filmes.Nome, Generos.Genero
FROM FilmesGenero 
INNER JOIN Filmes 
ON FilmesGenero.IdFilme = Filmes.Id
INNER JOIN Generos
ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério'
--Etapa 12
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM ElencoFilme
INNER JOIN Atores
ON ElencoFilme.IdAtor = Atores.Id
INNER JOIN Filmes
ON ElencoFilme.IdFilme = Filmes.Id