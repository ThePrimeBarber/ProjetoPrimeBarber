<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Cadastrar Produtos</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/estilo.css">
</head>
<body>
	<form action="produtocadastrar.jsp" method="post">
	<h3>Cadastrar Produtos</h3>
	<input type="text" name="nome" placeholder= "Nome do Produto..." required>		
	<input type="text" name="marca" placeholder="Marca do Produto..." required>
        <input type="text" name="quantidade" placeholder="Quantidade de Produto no estoque..." required>
        <input type="text" name="preco" placeholder="Preço do Produto..." required>
	<input type="submit" value="Enviar">
	</form>
</body>
</html>