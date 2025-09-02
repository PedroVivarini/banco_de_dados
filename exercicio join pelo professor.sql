

--Liste o nome do usuário e o título do livro de todos os empréstimos realizados, utilizando um JOIN.


select u.nome,l.titulo from emprestimo
inner join usuario u on emprestimo.id_usuario = u.id 		
inner join livro l on l.id = emprestimo.id_livro			
															
;

--Selecione todos os empréstimos que ainda não foram devolvidos (status = 'emprestado'). exer 3

select * from emprestimo where status = 'emprestado';

--Liste todos os autores e os livros que eles escreveram. exer 4

select autor, titulo from livro;

--Crie uma consulta que mostre todos os usuários e os livros que já pegaram emprestado, 
--incluindo usuários que nunca pegaram livros. exer 5 


select * from usuario u 
left join emprestimo e on u.id = e.id_usuario
left join livro l on l.id = e.id_livro;