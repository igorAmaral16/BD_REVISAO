SELECT telefone		
FROM Cliente		
WHERE carro  IN		
       	 (	
	SELECT modelo, cor	
	FROM carro	
	WHERE modelo = "ka" 
	AND 	
	marca = "Azul"	
)		
		
		
SELECT CASE WHEN (bairro) IS NOT NULL		
THEN		
Logradouro+ ', ' + CAST(Nº AS VARCHAR (5))+	' - '+ bairro		
ELSE		
logradouro+ ', ' + CAST(Nº AS VARCHAR (5))+
	
END AS Endereco_completo		
FROM cliente		
Where carro IN
	(
	SELECT Data
	FROM servico
	WHERE = '02/08/2009'
	)


	SELECT placa
	FROM carro
	WHERE ano < 2001


	SELECT  marca + ', ' + modelo + ', ' + cor AS dados 
	FROM carro
	WHERE ano > 2005


	SELECT codigo, nome
	FROM pecas
	WHERE valor < 80