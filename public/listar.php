<?php
try {
    $pdo = new PDO('mysql:host=localhost;dbname=registros','root','udc');
    $pdo->setAttribute(PDO::ATTR_EMULATE_PREPARES, TRUE);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $pdo->exec("SET NAMES UTF8");
    
$apellido = isset($_GET['term']) ? $_GET['term'] : null;
//falta validar, etc. etc.
if(!$apellido)
{
    http_response_code(400);
    die();
}
$apellido = strtoupper("%$apellido%");
$sql =""
        . "select id, "
        . "concat_ws(' ', nombre, apellido) as label, "
        . "concat_ws(' ', nombre, apellido) as value "
        . "from ubook.users where upper(apellido) like :apellido limit 10";
$stmt = $pdo->prepare($sql);
$stmt->setFetchMode(PDO::FETCH_ASSOC);
$stmt->bindParam(':apellido', $apellido);
$stmt->execute();
$results = $stmt->fetchAll();
//COMIENZA EL WEB SERVICE
header('Content-Type: application/json; charset=UTF-8');
echo json_encode($results, true);
} catch (PDOException $e) {
	 
    die('Error de conexion: ' . $e->getMessage());
}