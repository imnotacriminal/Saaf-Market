
<?php
$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "/_app/classes/connection.class.php";

@require $path;

// Here will we check if the user is already logged in
if($user->LoggedIn())
{
  $user->redirect('home');
}


if(isset($_POST["captcha"]))

if($_SESSION["captcha"]==$_POST["captcha"])
{
    if(isset($_POST['submit1']))
    {

    $usr = $_POST['inputUsername'];
    $pincode = $_POST['inputCode'];
    $pass = $_POST['inputPassword'];
    $recover = $user->RecoverUser($usr, $pass, $pincode);   

		foreach($recover as $a){
		$type = "";
		if($a['Message_type'] == 'Success') { $type = "success"; }
		else{ $type = "danger"; }
                
		echo '<div class="alert alert-'.$type.'" style="margin-left: auto; margin-right: auto; width: 50%">';
		echo '<center>'.$a['Message_type'].': <strong> <b> '.$a['Message'].' </b> </strong> ';
		echo '</div>';
		}       
    }
 }else{
        echo '<div class="alert alert-danger" style="margin-left: auto; margin-right: auto; width: 50%">';
        echo '<center>Error: <strong> <b> The captcha is wrong </b> </strong> ';
        echo '</div>';
}
?>


<div class="container-fluid">
    <div class="content-wrapper"> 
        <div class="item-container">  
            <div class="containerX">
                <div class="col-md-3"></div>
                           <div class="twofaLogin">
                <div class="Login col-md-6">
                <form method="POST">
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i> Username </span>
                        <input id="inputUsername" type="text" class="form-control" name="inputUsername" placeholder="Username">
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i> New password </span>
                        <input id="inputPassword" type="password" class="form-control" name="inputPassword" placeholder="Password">
                    </div>
                                        <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i> Pincode </span>
                        <input id="inputCode" type="text" class="form-control" name="inputCode" placeholder="Pincode">
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i> Captcha </span>
                        <input id="captcha" type="text" class="form-control" name="captcha" placeholder="Captcha">
                        <span class="input-group-addon img"> <img src="<?php echo SITE_BASE; ?>/captcha/captcha.php" /></span>
                    </div>
                    <div class="input-group button">
                        <button name="submit1" class="btn btn-default">
                            <span>Recover<i class="glyphicon glyphicon-arrow-right"></i></span>
                        </button>
                    </div>
                </form>
                </div>
                <div class="col-md-3"></div>
            </div>
        </div>
    </div>
</div>  

