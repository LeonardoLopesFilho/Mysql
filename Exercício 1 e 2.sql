use aula;

drop table FUNCIONARIO;

CREATE TABLE FUNCIONARIO (
    NOMEF VARCHAR(40),
    MATRICULA INT PRIMARY KEY
);

CREATE TABLE DEPENDENTE (
    CODIGO INT PRIMARY KEY,
    NOMED VARCHAR(40),
    FK_FUNCIONARIO_MATRICULA INT
);
 
ALTER TABLE DEPENDENTE ADD CONSTRAINT FK_DEPENDENTE_2
    FOREIGN KEY (FK_FUNCIONARIO_MATRICULA)
    REFERENCES FUNCIONARIO (MATRICULA)
    ON DELETE RESTRICT;
    
SELECT * FROM FUNCIONARIO;
SELECT * FROM DEPENDENTE ;

insert into FUNCIONARIO VALUES("morgana",3);
insert into FUNCIONARIO VALUES("blitz",4);
insert into FUNCIONARIO VALUES("leona",5);
insert into FUNCIONARIO VALUES("ezreal",8);
insert into FUNCIONARIO VALUES("darius",7);




insert into DEPENDENTE Values(10,"Kayle",3);
insert into DEPENDENTE Values(20,"tristana",1);
insert into DEPENDENTE Values(30,"katarina",2);
insert into DEPENDENTE Values(40,"corki",4);
insert into DEPENDENTE Values(50,"tristana",5);
insert into DEPENDENTE Values(60,"leonardo",6);
insert into DEPENDENTE Values(70,"garen",7);
insert into DEPENDENTE Values(80,"ahri",8);
insert into DEPENDENTE Values(90,"Cabrito",5);


select NOMED, NOMEF from DEPENDENTE,FUNCIONARIO where MATRICULA = FK_FUNCIONARIO_MATRICULA;

select NOMEF, count(FK_FUNCIONARIO_MATRICULA)  from DEPENDENTE,FUNCIONARIO WHERE MATRICULA = FK_FUNCIONARIO_MATRICULA  group by NOMEF

