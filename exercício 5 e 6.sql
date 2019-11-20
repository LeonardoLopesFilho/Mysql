use test;
CREATE TABLE veiculo (
    modelo varchar(30),
    marca varchar(30),
    placa varchar(10) PRIMARY KEY,
    cor varchar(10),
    ipva int,
    fk_proprietario_codigo int
);

CREATE TABLE proprietario (
    cpf int,
    nome  varchar(30),
    codigo int PRIMARY KEY
);
 
ALTER TABLE veiculo ADD CONSTRAINT FK_veiculo_2
    FOREIGN KEY (fk_proprietario_codigo)
    REFERENCES proprietario (codigo)
    ON DELETE RESTRICT;
    
SELECT * FROM veiculo;
SELECT * FROM proprietario;

insert into proprietario values(01231456,"Kataprima",1);
insert into proprietario values(12345690,"morgana",2);
insert into proprietario values(83791231,"Zoio",3);

insert into veiculo values("Sandeiro","renaut","mgk2132","branco","423",1);
insert into veiculo values("GTR","nissan","dsa6452","rosa","6213",2);
insert into veiculo values("civic","honda","tse5332","azul","123",3);
insert into veiculo values("city","honda","asd3231","prata","231",3);

select nome,modelo,marca,codigo from proprietario,veiculo where codigo=fk_proprietario_codigo
group by codigo;

select nome,cpf,sum(ipva)from proprietario,veiculo where codigo=fk_proprietario_codigo
group by cpf;


