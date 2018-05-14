<?php 
$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "/_app/classes/connection.class.php";

@require_once $path;

$user->Logout();
$user->Redirect("/login");

?>