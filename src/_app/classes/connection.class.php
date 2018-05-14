<?php
$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "/_app/conf.inc.php";
require($path);

	try{
		$dbh = new PDO("mysql:host=".MYSQL_HOST.";dbname=".MYSQL_DB."", MYSQL_USER, MYSQL_PASS);
	}catch(PDOException $e) {
		die("Error cannot connect to the database<br>" . $e->getMessage());
	}
	
	require_once('user.class.php');
	require_once('pgp.class.php');
	include_once('site.class.php'); 
	include_once('forum.class.php'); 

	$pgp = new PGP($dbh);
	$user = new User($dbh, $pgp);
	$pgp->setUser($user);

	$site = new Site($dbh, $user);	
	$forum = new Forum($dbh, $user);	