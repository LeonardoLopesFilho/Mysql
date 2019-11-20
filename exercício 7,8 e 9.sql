use test;
CREATE TABLE disciplina (
    nomed varchar(30),
    Codigo int PRIMARY KEY,
    fk_professor_matricula int
);

CREATE TABLE professor (
    nomep varchar(30),
    matricula int PRIMARY KEY
);
 
ALTER TABLE disciplina ADD CONSTRAINT FK_disciplina_2
    FOREIGN KEY (fk_professor_matricula)
    REFERENCES professor (matricula)
    ON DELETE RESTRICT;

SELECT * FROM disciplina;
SELECT * FROM professor;

insert into professor values("joao",1);
insert into professor values("caio",2);
insert into professor values("claudinho",3);

insert into disciplina values("matematica",10,1);
insert into disciplina values("portugues",20,2);
insert into disciplina values("fisica",30,3);

select * from professor,disciplina where matricula=fk_professor_matricula
group by nomep;


select nomep,count(codigo) from professor,disciplina where matricula=fk_professor_matricula
group by nomep;



