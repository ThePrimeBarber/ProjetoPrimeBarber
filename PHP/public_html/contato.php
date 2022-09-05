<?php
session_start();

$logado='';
if(isset($_SESSION['acesso'])){
    $logado = $_SESSION['username'];
}
?>

<html>
<head>
 <title> Prime Barber | Contato </title>
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.2/font/bootstrap-icons.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" type="image/x-icon" href="/imagens/Artboard-1-copy-3-8.ico">
<link rel="stylesheet" href="css/menu.css">
<link rel="stylesheet" href="css/contato.css">
<meta charset="UTF-8">
       <link rel="apple-touch-icon" sizes="57x57" href="imagens/logos/apple-icon-57x57.png">
<link rel="apple-touch-icon" sizes="60x60" href="imagens/logos/apple-icon-60x60.png">
<link rel="apple-touch-icon" sizes="72x72" href="imagens/logos/apple-icon-72x72.png">
<link rel="apple-touch-icon" sizes="76x76" href="imagens/logos/apple-icon-76x76.png">
<link rel="apple-touch-icon" sizes="114x114" href="imagens/logos/apple-icon-114x114.png">
<link rel="apple-touch-icon" sizes="120x120" href="imagens/logos/apple-icon-120x120.png">
<link rel="apple-touch-icon" sizes="144x144" href="imagens/logos/apple-icon-144x144.png">
<link rel="apple-touch-icon" sizes="152x152" href="imagens/logos/apple-icon-152x152.png">
<link rel="apple-touch-icon" sizes="180x180" href="imagens/logos/apple-icon-180x180.png">
<link rel="icon" type="image/png" sizes="192x192"  href="imagens/logos/android-icon-192x192.png">
<link rel="icon" type="image/png" sizes="32x32" href="imagens/logos/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="96x96" href="imagens/logos/favicon-96x96.png">
<link rel="icon" type="image/png" sizes="16x16" href="imagens/logos/favicon-16x16.png">
<link rel="manifest" href="imagens/logos/manifest.json">
<meta name="msapplication-TileColor" content="#ffffff">
<meta name="msapplication-TileImage" content="imagens/logos/ms-icon-144x144.png">
<meta name="theme-color" content="#ffffff">
</head>

<body>


<?php
include 'menu.php';
?>


<br><h1 style="text-align: center;"><ins> Fale com a gente </ins></h1><br>
<h3> Formulário de contato</h3>
 <div class="body">
     <div class="formulario">
       <form action="TelaContatoEfetuado.html">
         <label for="nome" id="nome">Nome:</label>
         <input type="text" name="nome" size="60" placeholder="Digite aqui" required><br><br>
         <label for="email" id="email">Email:</label>
         <input type="email" name="email" size="60" placeholder="Digite aqui" required><br><br>
         <label for="mensagem" id="mensagem">Dúvida:</label><br>
         <textarea class="area" name="mensagem" rows="10" cols="59" style="border:2px solid gray;" required></textarea><br><br>
         <input type="submit" class="enviar" value="Enviar" style="background-color: black; color: white; width: 30%;">
       </form> 
     </div>

     <div class="logo"><img src="imagens/logos/Logo_Principal.png" width="500" height="500"></div>
 </div>
     <div class="Wpp">
       <h2><i class="bi bi-whatsapp"></i> +55 (21) 99569-9545</h2>
       <h4><a href="https://wa.me/5521995699545"> Converse conosco no Whatsapp</a></h4>
     </div>
</body>
</html>