
<?php

if(REGISTRATION_ALLOWED == true)
{
// Here will we check if the user is already logged in
if($user->LoggedIn())
{
  $user->redirect('home');
}


if(isset($_POST["captcha"]))

if($_SESSION["captcha"]==$_POST["captcha"])
{
    if(isset($_POST['register']))
    {
        $username = $_POST['name'];
        $password = $_POST['password'];
        $password_verify = $_POST['password2'];
        $profilepin = $_POST['profile_pin'];
        $profilepin_verify = $_POST['profile_pin2'];

        if($profilepin == $profilepin_verify) 
        {
        if($password == $password_verify){
        $register = $user->Register($username, $password, $profilepin);
            foreach($register as $a)
            {
                $type = "";
                if($a['Message_type'] == 'Success') { $type = "success"; }
                else{ $type = "danger"; }
                
                echo '<div class="alert alert-'.$type.'" style="margin-left: auto; margin-right: auto; width: 50%">';
                echo '<center>'.$a['Message_type'].': <strong> <b> '.$a['Message'].' </b> </strong> ';
                echo '</div>';
            }
        }else{
        echo '<div class="alert alert-danger" style="margin-left: auto; margin-right: auto; width: 50%">';
        echo '<center>Error: <strong> <b> The passwords are not equal </b> </strong> ';
        echo '</div>';
                }
        }else{ 
        echo '<div class="alert alert-danger" style="margin-left: auto; margin-right: auto; width: 50%">';
        echo '<center>Error: <strong> <b> The profile pins are not equal </b> </strong> ';
        echo '</div>';

        }
    }
}
else
{
    echo '<div class="alert alert-danger" style="margin-left: auto; margin-right: auto; width: 50%">';
    echo '<center>Error: <strong> <b> Wrong captcha </b> </strong> ';
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
                        <input id="name" type="text" class="form-control" name="name" placeholder="Username">
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i> Password </span>
                        <input id="password" type="password" class="form-control" name="password" placeholder="Password">
                    </div>
                                        <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i> Repeat password </span>
                        <input id="password2" type="password" class="form-control" name="password2" placeholder="Repeat password">
                    </div>
                                        <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i> Pincode </span>
                        <input id="profile_pin" type="password" class="form-control" name="profile_pin" placeholder="Pincode">
                    </div>
                                        <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i> Repeat Pincode </span>
                        <input id="profile_pin2" type="password" class="form-control" name="profile_pin2" placeholder="Repeat pincode">
                    </div>

                    <div class="input-group">
                        <span class="input-group-addon"><i class="glyphicon glyphicon-barcode"></i> Captcha </span>
                        <input id="captcha" type="text" class="form-control" name="captcha" placeholder="Captcha">
                        <span class="input-group-addon img"> <img src="<?php echo SITE_BASE; ?>/captcha/captcha.php" /></span>
                    </div>
                    <div class="input-group button">
                        <button name="register" class="btn btn-default">
                            <span> Register<i class="glyphicon glyphicon-arrow-right"></i></span>
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
        echo '<center><strong> <b>Registration is currently disabled, please try again later  </b> </strong> ';
        echo '</div>';
}

?>