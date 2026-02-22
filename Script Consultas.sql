-- 1 Nome e ano dos filmes
select 
  nome,
  ano
from Filmes;


-- 2
select 
  nome,
  ano
from Filmes
order by ano;

-- 3
select
  nome,
  ano,
  duracao
from Filmes
where lower(nome) = 'de volta para o futuro';

-- 4
select
  nome,
  ano,
  duracao
from Filmes
where ano = 1997;

-- 5
select
  nome,
  ano,
  duracao
from filmes
where ano > 2000;

-- 6
select 
  nome,
  ano,
  duracao
from Filmes
where duracao > 100 and duracao < 150
order by duracao;

-- 7
select 
  ano,
  count(ano) quantidade
from filmes
group by ano
order by quantidade desc;

-- 8
select 
  PrimeiroNome,
  UltimoNome,
  Genero 
from atores
where genero = 'M';

-- 9
select 
  PrimeiroNome,
  UltimoNome,
  Genero 
from atores
where genero = 'F'
order by PrimeiroNome ;

-- 10
select f.Nome, g.Genero 
from Filmes f
  join FilmesGenero fg on f.Id = fg.IdFilme 
  join Generos g on fg.IdGenero = g.Id;

-- 11
select f.Nome, g.Genero , g.Id 
from Filmes f
  join FilmesGenero fg on f.Id = fg.IdFilme 
  join Generos g on fg.IdGenero = g.Id
where g.Id = 10;

--12
select f.Nome, a.PrimeiroNome, a.UltimoNome , ef.Papel
from Filmes f
  join ElencoFilme ef on f.Id = ef.IdFilme
  join Atores a on ef.IdAtor = a.Id;
