SELECT nome, CASE WHEN(bairro) IS NOT NULL
THEN 
rua+ ' - '+ CAST(Nº AS VARCHAR(5))+ ' - ' bairro
ELSE
rua+ ' - ' + CAST(Nº AS VARCHAR(5))+
END AS end_completo
FROM paciente
WHERE (data_nasc < GETDATE())


SELECT especialidade
FROM medico
WHERE nome = 'Carolina Oliveira'

SELECT medicamento
FROM prontuario
WHERE diagnostico = 'Reumatismo'

SELECT diagnostico, medicamento
FROM prontuario
WHERE cpf IN
	(
	SELECT nome
	FROM paciente
	WHERE nome = 'José Rubens'
	)

SELECT nome, SUBSTRING(especialidade,1,3) + '.' AS especialidade
FROM medico
WHERE nome IN
	(
	SELECT nome
	FROM paciente
	WHERE nome = 'José Rubens'


SELECT nome, SUBSTRING(cpf,1,3) + '.' + SUBSTRING(cpf,4,3)+ '.'+ SUBSTRING(cpf,5,3)+ '-' + SUBSTRING(cpf,6,2)
AS CPF, 
   CASE WHEN(bairro) IS NOT NULL
THEN 
rua+ ', '+ CAST(Nº AS VARCHAR(5))+ ' - ' bairro
ELSE
rua+ ', ' + CAST(Nº AS VARCHAR(5))+
END AS end_completo,
 CASE WHEN(telefone) IS NOT NULL
THEN 
telefone
ELSE
'-'
   FROM paciente
   WHERE nome IN
   (
   SELECT nome
   FROM medico
   WHERE nome LIKE 'Vinicius%'
   )


   SELECT DATEDIFF(DAY,data, GETDATE()) AS data_consulta
   FROM prontuario
   WHERE cpf IN 
   (
   SELECT nome
   FROM paciente
   WHERE nome LIKE 'Maria%'
   )

   UPDATE paciente
   SET telefone = 98345621
   WHERE nome LIKE 'Maria%'

   UPDATE paciente
   SET rua = 'Voluntarios da Pátria' 
   AND Nº = 1980 
   AND bairro = 'Jd.Aeroporto'
   WHERE nome LIKE 'Joana%'