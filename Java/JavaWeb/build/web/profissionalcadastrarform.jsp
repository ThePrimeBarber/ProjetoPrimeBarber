<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>Cadastrar Profissional</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/estilo.css">
</head>
<body>
	<form action="profissionalcadastrar.jsp" method="post">
	<h3>Cadastrar Profissional</h3>
	<input type="text" name="nome" placeholder="Seu nome..." required>		
	<input type="email" name="email" placeholder="Seu e-mail..." required>
	<input type="password" name="senha" placeholder="Sua senha..." pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="A senha deve conter pelo menos um caracter maiúsculo, um minúsculo, um número e no mínimo oito caracteres" required>		
	<input type="text" name="funções" placeholder="Sua função..." required>
        <input type="radio" name="acesso" value="Comum" required><label>Comum</label>
	<input type="radio" name="acesso" value="Admin"><label>Admin</label>	
	<input type="submit" value="Enviar">
	</form>
</body>
</html>