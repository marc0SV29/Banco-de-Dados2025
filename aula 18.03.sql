use clinica;

select *
from medicos;

select distinct especialidade 
from medicos;

-- Exemplos de uso do "count"

select count(*)
from medicos;

select count(*)
from medicos
where especialidade = 'ortopedia';

select nome, idade
from medicos
order by idade;
-- Exemplos de uso do "like"
select cpf, nome 
from medicos 
where nome like 'M%';

-- Exemplo de uso do "betwenn"

select * from medicos 
where idade between 30 and 40;

select *
from medicos 
where idade >=30 and idade <=40;

-- Exemplo de uso do "IN"

select *
from medicos 
where especialidade in ('ortopedia','neurologia');

select *
from medicos 
where especialidade = 'ortopedia' or 
	especialidade = 'neurologia';
    
    -- lista de exercicio 
    SELECT nome, cpf
FROM medicos
WHERE idade < 40 or especialidade != 'traumatologia';
    
    select * 
    from consultas 
    where data > '2006-06-19' and hora > '12:00';
    
    select nome, idade 
    from pacientes
    where cidade !='florianopolis';
    
    select hora 
    from consultas
    where data between '2006-06-14' and '2006-06-20';
    
    select nome,idade*12
    from pacientes; 
    
select cidade 
from funcionarios;

select min(salario) 
from funcionarios 
where 'florianopolis';

select max(hora)
from consulta 
where data = '2006-06-14';

select nome,codf,salario - (salario * 0.20)
from funcionarios; 

select nome 
from funcionario 
where nome like '%a';

select nome,cpf
from funcionarios 
where cpf not like '0000';

select nome, especialidade 
from medicos 
where nome like '_o%' and '%o';

SELECT codp, nome
FROM pacientes
WHERE idade > 25
AND (doenca LIKE '%tendinite%' OR doenca LIKE '%fratura%' 
     OR doenca LIKE '%gripe%' OR doenca LIKE '%sarampo%');

    
    
    
    
    
    
