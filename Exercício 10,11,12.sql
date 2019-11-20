use test;

CREATE TABLE Funcionario (
    Nome VARCHAR(60),
    Salario float,
    Matricula int PRIMARY KEY
);
drop table Entidade_2;
CREATE TABLE Entidade_2 (
    NomeEntidade VARCHAR(60),
    Codigo int PRIMARY KEY,
    fk_Funcionario_Matricula int
);
 
ALTER TABLE Entidade_2 ADD CONSTRAINT FK_Entidade_2_2
    FOREIGN KEY (fk_Funcionario_Matricula)
    REFERENCES Funcionario (Matricula)
    ON DELETE RESTRICT;

select * from Funcionario;
select * from Entidade_2;

select Nome,NomeEntidade From Funcionario,Entidade_2 where Matricula=fk_Funcionario_Matricula Group by Nome;
select NomeEntidade,COUNT(Nome) From Funcionario,Entidade_2 where Matricula=fk_Funcionario_Matricula Group by NomeEntidade;



insert into Entidade_2 Values('rh',4,1);
insert into Entidade_2 Values('adm',6,2);
insert into Entidade_2 Values('ti',1,3);
insert into Entidade_2 Values('gerente',54,4);
insert into Entidade_2 Values('mecanica',42,5);
