--Listar o nome, email e telefone do usuarios que pegaram emprestado algum livro do sessao id 2 
--(caso não tenha setor id 2 no banco de dados de vocês, substituir por um id existente);

select 
    u.nome,
    u.email,
    u.telefone
from emprestimos as e
inner join usuarios as u on (e.id_usuario = u.id)
inner join emprestimo_livros as el on (e.id = el.id_emprestimo)
inner join livros as l on (el.id_livro = l.id)

where l.id_sessao = 9 

----------------------------------------------------------------------------------------------
--Listar título, nome da sessão e nome do autor dos livros que o usuário id 5 pegou emprestado 
--(mesma lógica da anterior, 
--caso não tenha usuario com id 5, substituir por um id de usuario existente)

select 
    l.titulo,
    l.nome_autor,
    s.nome_sessao
from emprestimo as e
inner join emprestimo_livros as el on (el.id_emprestimo = e.id)
inner join livros as l on (el.id_livro = l.id)
inner join sessao as s on (l.id_sessao = s.id)
where e.id_usuario = 10

---------------------------------------------------------------------------------------
--Listar o título e data de publicação dos livros emprestados para usuarios com DDD (55)

select 
    l.titulo,
    l.publicacao
from emprestimo as e
inner join usuario as u on (e.id_usuario = u.id)
inner join emprestimo_livros as el on ()
inner join 

where u.telefone like '(49)%'