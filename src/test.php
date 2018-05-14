<?php 

$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "/_app/classes/connection.class.php";

@require $path;
var_dump($forum->CreateTopic('<script alert("test">', 'teste', 'dongsdongs', '1'));
