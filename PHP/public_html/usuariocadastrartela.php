<?php
session_start();

if(!isset ($_SESSION['username']) || !isset ($_SESSION['acesso']))
{
  unset($_SESSION['username']);
  unset($_SESSION['acesso']);
  header('location:index.php');
  exit;
}

$logado = $_SESSION['username'];
$acesso = $_SESSION['acesso'];
?>
<html>
<head>
<title>Cadasatro Usuario</title>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/tabelaprodutos.css">
</head>
<body>

<?php

include 'menu.php';
?>

<?php
//Só administrador pode acessar o programa.
if($_SESSION['acesso']=="Admin"){

	if(isset($_GET["erro"])){
		if ($_GET["erro"]==1){
			echo "<h2>Caracter Proibido</h2>";
		}
		if ($_GET["erro"]==2){
			echo "<h2>Email já cadastrado</h2>";
		}
		
	}
?>
	<form action="usuariocadastrarcodigo.php" method="post">
	<h3>Cadastrar Usuários</h3>
	<input type="text" name="nome" placeholder="Seu nome..." required>		
	<input type="email" name="email" placeholder="Seu e-mail..." required>
	<input type="password" name="senha" placeholder="Sua senha..." pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="A senha deve conter pelo menos um caracter maiúsculo, um minúsculo, um número e no mínimo oito caracteres" required>		
	<input class="botao-radio" type="radio" name="acesso" value="Comum" required><label>Comum</label>
	<input class="botao-radio" type="radio" name="acesso" value="Admin"><label>Admin</label>	
	<input type="submit" value="Enviar">
	</form>

<?php
}else{
	echo "Você não tem acesso a esta função.";
}
?>

</body>
</html>