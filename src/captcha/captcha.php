<?php
session_start();
header("Expires: Mon, 26 Jul 1997 05:00:00 GMT"); 
header("Last-Modified: " . gmdate("D, d M Y H:i:s") . " GMT"); 
header("Cache-Control: no-store, no-cache, must-revalidate"); 
header("Cache-Control: post-check=0, pre-check=0", false);
header("Pragma: no-cache"); 

function _generateRandom($length=6)
{
	$_rand_src = array(
		array(48,57) //digits
		, array(97,122) //lowercase chars
//		, array(65,90) //uppercase chars
	);
	srand ((double) microtime() * 1000000);
	$random_string = "";
	for($i=0;$i<$length;$i++){
		$i1=rand(0,sizeof($_rand_src)-1);
		$random_string .= chr(rand($_rand_src[$i1][0],$_rand_src[$i1][1]));
	}
	return $random_string;
}

$im = @imagecreatefromjpeg("captcha.jpg"); 
$color = ImageColorAllocate($im, 255,255,255);
$rand = _generateRandom(3);
$_SESSION['captcha'] = $rand;
ImageString($im, 100, 35, 15, $rand[0]." ".$rand[1]." ".$rand[2]." ", ImageColorAllocate ($im, 255, 255, 255));

//$rand = _generateRandom(3);
//ImageString($im, 1000000, 75, 30, " ".$rand[0]." ".$rand[1]." ".$rand[2], ImageColorAllocate ($im, 100, 0, 0));
Header ('Content-type: image/jpeg');
imagejpeg($im,NULL,65);
ImageDestroy($im);
?>