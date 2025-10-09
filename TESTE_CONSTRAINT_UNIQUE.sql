USE SISTEMA_PEDIDOS

SELECT *
FROM TB_EMPREGADO

INSERT INTO TB_EMPREGADO(CODFUN,NOME,NUM_DEPEND
                        ,DATA_NASCIMENTO,COD_DEPTO
                        ,COD_CARGO,DATA_ADMISSAO,SALARIO
                        ,PREMIO_MENSAL,SINDICALIZADO
                        ,OBS,FOTO,COD_SUPERVISOR,CPF)
VALUES(2,'JOSE REIS',6
      ,'1952/10/09'
      ,2
      ,5
      ,'1987/05/02'
      ,600
      ,1250
      ,'S'
      ,'N/A'
      ,'N/A'
      ,2
      ,34523343454)
------------------------------------------------------------------
INSERT INTO TB_EMPREGADO(CODFUN,NOME,NUM_DEPEND
                        ,DATA_NASCIMENTO,COD_DEPTO
                        ,COD_CARGO,DATA_ADMISSAO,SALARIO
                        ,PREMIO_MENSAL,SINDICALIZADO
                        ,OBS,FOTO,COD_SUPERVISOR,CPF)
VALUES(3,'MARCELO SOARES',1
      ,'1950/06/06'
      ,5
      ,2
      ,'1986/10/05'
      ,2400
      ,1200
      ,'S'
      ,'N/A'
      ,'N/A'
      ,2
      ,14513348934)

SELECT *
FROM TB_EMPREGADO
------------------------------------------------------------------
--TESTE CONSTRAINT UNIQUE(CPF)
--VIZUALIZA A ESTRUTURA DA TABELA TB_EMPREGADO

EXEC SP_HELP TB_EMPREGADO
INSERT INTO TB_EMPREGADO(CODFUN,NOME,NUM_DEPEND
                        ,DATA_NASCIMENTO,COD_DEPTO
                        ,COD_CARGO,DATA_ADMISSAO,SALARIO
                        ,PREMIO_MENSAL,SINDICALIZADO
                        ,OBS,FOTO,COD_SUPERVISOR,CPF)
VALUES(4,'PAULO CESAR JUNIOR',2
      ,'1952/19/06',5,2
      ,'1987/06/05',600,1250,'S'
      ,'N/A','N/A',1,14513348934) --COM UM MESMO CPF O SCRIPT DARÁ ERRO, POIS O CPF É CHAVE UNIQUE

--CORREÇÃO DO SCRIPT ANTERIOR, INSERINDO UM CPF NOVO

INSERT INTO TB_EMPREGADO(CODFUN,NOME,NUM_DEPEND
                        ,DATA_NASCIMENTO,COD_DEPTO
                        ,COD_CARGO,DATA_ADMISSAO,SALARIO
                        ,PREMIO_MENSAL,SINDICALIZADO
                        ,OBS,FOTO,COD_SUPERVISOR,CPF)
VALUES(4,'PAULO CESAR JUNIOR',2
      ,'1952/19/06',5,2
      ,'1987/06/05',600,1250,'S'
      ,'N/A','N/A',1,20714548900)

SELECT *
FROM TB_EMPREGADO