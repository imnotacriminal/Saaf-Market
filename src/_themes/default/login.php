
<?php

if(LOGIN_ALLOWED == TRUE)
{
if($user->LoggedIn())
{
 $user->Redirect("/home");
}


if(isset($_POST["captcha"]))

if($_SESSION["captcha"]==$_POST["captcha"])
{
    if(isset($_POST['login']))
    {
    $usr = $_POST['inputUsername'];
    $pass = $_POST['inputPassword'];
    $eh = $user->login($usr,$pass, 'normal', 'no2fa');

            if(is_array($eh))
            {
             foreach($eh as $a)
                {
                echo '<div class="alert alert-danger" style="margin-left: auto; margin-right: auto; width: 50%">';
                echo '<center>'.$a['Message_type'].': <strong> <b> '.$a['Message'].'</b> </strong> ';
                echo '</div>';   
                }

            }


    }
}

else
{
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
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i> Password </span>
                        <input id="inputPassword" type="password" class="form-control" name="inputPassword" placeholder="Password">
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i> Captcha </span>
                        <input id="captcha" type="text" class="form-control" name="captcha" placeholder="Captcha">
                        <span class="input-group-addon img"> <img src="<?php echo SITE_BASE; ?>/captcha/captcha.php" /></span>
                    </div>
                    <div class="input-group button">
                        <button name="login" class="btn btn-default">
                            <span> Sign In <i class="glyphicon glyphicon-arrow-right"></i></span>
                        </button>
                    </div>
                </form>
                </div>
                <div class="col-md-3"></div>
            </div>
        </div>
    </div>
</div>
      

<?php 
}else{
        echo '<div class="alert alert-danger" style="margin-left: auto; margin-right: auto; width: 50%">';
        echo '<center><strong> <b>Logging in is currently disabled, please try again later  </b> </strong> ';
        echo '</div>';
    
}
?>