SELECT CONVERT(CHAR(10), data, 103) AS Data
FROM venda
WHERE codigo = 4


ALTER TABLE fornecedor
ADD telefone     VARCHAR(11)       NULL


UPDATE fornecedor
SET telefone = 7216-5371
WHERE id = 1

UPDATE fornecedor
SET telefone = 8715-3738
WHERE id = 2

UPDATE fornecedor
SET telefone = 3654-6289
WHERE id = 4


SELECT nome, CASE WHEN(bairro) IS NOT NULL
THEN
logradouro + ', '+ CAST(Nº AS VACHAR(5)) + ' - ' + bairro
ELSE
logradouro + ', '+ CAST(Nº AS VACHAR(5))+
END AS end_completo,
CASE WHEN (telefone) IS NOT NULL
THEN
telefone
ELSE
'NULL'
END AS tel
FROM fornecedor
ORDER BY nome ASC

SELECT produto, quantidade, valor total
FROM venda
WHERE cliente IN
	(
	SELECT nome
	FROM cliente
	WHERE nome LIKE 'Julio%'
	)



SELECT CONVERT(CHAR(10), data, 103) AS Data, valor total
FROM venda
WHERE cliente IN
		(
	SELECT nome
	FROM cliente
	WHERE nome LIKE 'Paulo%'
	)


