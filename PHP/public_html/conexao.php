<?php
// Parâmetros para criar a conexão
$servername = "";
$username = "id18855989_theprimebarber";
$password = "#Kj!]HZPT-ntlz2k";
$dbname = "id18855989_site2022";

// Criando a conexão
$conn = new mysqli($servername, $username, $password, $dbname);

// Checando a conexão
if ($conn->connect_error) {
  die("Você se deu mal: " . $conn->connect_error);

    
}
?>