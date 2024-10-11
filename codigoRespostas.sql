-- 1
SELECT Nome, Ano FROM Filmes

-- 2
SELECT Nome, Ano FROM Filmes
ORDER BY Ano

-- 3
SELECT * FROM Filmes
WHERE Nome = 'De Volta para o Futuro'


-- 4
SELECT * FROM Filmes
WHERE Ano = 1997

-- 5
SELECT * FROM Filmes
WHERE Ano >= 2000


-- 6
SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150 
ORDER BY Duracao

-- 7
SELECT Ano, COUNT(Ano) Quantidade FROM filmes
GROUP BY Ano
ORDER BY Quantidade DESC

--8
SELECT * FROM Atores
WHERE Genero = 'M'


--9
SELECT * FROM Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome


-- 10
SELECT Nome, Genero FROM Filmes f
JOIN FilmesGenero ON f.Id = IdFilme
JOIN Generos g ON IdGenero = g.Id


-- 11
SELECT Nome, Genero FROM Filmes f
JOIN FilmesGenero ON f.Id = IdFilme
JOIN Generos g ON IdGenero = g.Id
WHERE Genero = 'Mistério'

-- 12
SELECT Nome, PrimeiroNome, UltimoNome, Papel FROM Filmes f
JOIN ElencoFilme ON f.Id = IdFilme
JOIN Atores a ON a.Id = IdAtor
