use avaliacao_22b;

insert into Livros (titulo, autor, ano_publicacao, disponivel, categoria, isbn, editora, quantidade_paginas, idioma) 
values ('As Crônicas de Nárnia', 'C.S Lewis', 1950, TRUE, 'Fantasia', '978-006447190', 'HarperCollins', 768, 'Inglês');

update Livros
set disponivel = false
where ano_publicacao <= 2000;

update Livros
set editora = 'Plume Books'
where titulo = '1984';

delete from Livros where idioma = 'Francês' and ano_publicacao < 1970;

select * 
from Livros
where quantidade_paginas >= 500;

select  count(categoria) as LivrosPorCategoria, categoria as Categorias
from Livros
group by categoria;

select * 
from livros
limit 0, 5;

select avg(ano_publicacao) as MediaAnoPublicacao
from Livros;

select *
from Livros
order by ano_publicacao DESC;

select * 
from Livros
where ano_publicacao >= 1980 and ano_publicacao <= 2000 and titulo like 'A%';