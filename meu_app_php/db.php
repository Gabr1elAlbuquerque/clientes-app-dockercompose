<?php
$servername = getenv('DB_HOST') ?: 'db';
$username   = getenv('DB_USER') ?: 'appuser';
$password   = getenv('DB_PASS') ?: 'app_pass';
$dbname     = getenv('DB_NAME') ?: 'clientes_db';
$port       = getenv('DB_PORT') ?: 3306;

$conn = new mysqli($servername, $username, $password, $dbname, $port);

if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}

// Define charset para evitar problemas de acentuação
$conn->set_charset("utf8mb4");
?>
