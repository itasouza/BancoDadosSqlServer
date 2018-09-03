--3 PARTE NEGA-DENY
--NEGANDO Acesso DE ATUALIZACAO UsrTeste.
DENY UPDATE ON FUNCIONARIOS TO UsrTeste; 

-- NEGANDO Acesso DE ATUALIZACAO UsrTeste.
DENY INSERT ON FUNCIONARIOS TO UsrTeste;
 
-- NEGANDO Acesso DE Leitura UsrTeste.
DENY SELECT ON FUNCIONARIOS TO UsrTeste;

--NEGA ACESSO A EXECUSSAO DE PROCEDURE
DENY EXECUTE ON testproc TO UsrTeste  

--VERIFICANDO USUARIO LOGADO
select CURRENT_USER

--ALTERANDO USUARIO LOGADO
SETUSER 'UsrTeste'

--VERIFICANDO USUARIO LOGADO
select CURRENT_USER

--EXECUTANDO PROCEDURE COM USUARIO UsrTeste
EXEC testproc

--TESTANDO SELECT
SELECT  * from FUNCIONARIOS

--TESTANDO INSERT
INSERT into FUNCIONARIOS values ('Maria','1000','TI')

--TESTANDO UPDATE
UPDATE FUNCIONARIOS set nome='Marilia'
where id='7'

--TESTANDO DELETE
DELETE FROM FUNCIONARIOS
WHERE ID='7'

