<?php
    // Development connection
    // $host='127.0.0.1';
    // $db ='ekapa';
    // $user ='root';
    // $pass = '';
    // $charset ='utf8mb4';

    // Remote Connection
    $host='remotemysql.com';
    $db ='Oguh7B6vmh';
    $user ='Oguh7B6vmh';
    $pass = 'gY1vz81z8J';
    $charset ='utf8mb4';

    $dsn ="mysql:host=$host;dbname=$db;charset=$charset";

    try{
        $pdo = new PDO($dsn, $user, $pass);
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    } catch(PDOException $e) {
        throw new PDOException(($e->getMessage()));
    }

    require_once'crud.php';
    $crud = new crud($pdo);

?>