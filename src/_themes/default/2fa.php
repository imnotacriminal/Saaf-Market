
<?php
$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "/_app/classes/connection.class.php";

@require $path;

if(LOGIN_ALLOWED == true)
{
  if($user->LoggedIn())
  {
  $user->redirect('home');
  }

  if(isset($_POST["captcha"]))

    if($_SESSION["captcha"]==$_POST["captcha"])
    {
      if(isset($_POST['login']))
      {
        $usr = $_POST['inputUsername'];
        $pass = $_POST['inputPassword'];
        $eh = $user->login($usr,$pass, 'pgp', 'no2fa');

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
      }else{
        echo '<div class="alert alert-danger" style="margin-left: auto; margin-right: auto; width: 50%">';
        echo '<center>Error: <strong> <b> The captcha is wrong </b> </strong> ';
        echo '</div>';
      }

?>
 
  
    
  <?php if(@!$_SESSION['temp_name'])
  {  
   ?> 
   <div class="container-fluid">
    <div class="content-wrapper"> 
        <div class="item-container">  
            <div class="containerX">
                    <div class="twofaLogin">
          <div class="title">
            <h2>2FA Login</h2>
          </div>
                <div class="col-md-3"></div>
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
      
<?php } else { 


if($_SERVER['REQUEST_METHOD'] == 'POST' and isset($_POST['pgp1'])){
    
    if($pgp->verifySecret($_POST['inputDecrypted'])){
                if($user->login($_SESSION['temp_name'],$_SESSION['temp_pass'], 'normal', 'done'))
        {
        	unset($_SESSION['temp_name']);
        	unset($_SESSION['temp_pass']);
            header("Refresh:0");
            header('Location: home');
        }else{
        header("Refresh: 3");
        session_destroy();
		echo '<div class="alert alert-danger" style="margin-left: auto; margin-right: auto; width: 50%">';
        echo '<center>Error: <strong> <b>Something went wrong, please try again</b> </strong> ';
        echo '</div>';
        }
    }else{

        header("Refresh: 3");
        session_destroy();
		echo '<div class="alert alert-danger" style="margin-left: auto; margin-right: auto; width: 50%">';
        echo '<center>Error: <strong> <b>2FA code incorrect, please try again</b> </strong> ';
        echo '</div>';

    }
    
    
} 
    $pgp->generateSecret();
    $pgpmessage = $pgp->encryptSecret($pgp->GetPGPkey($_SESSION['temp_name']));
   
	?>     
<div class="container-fluid">
  <div class="content-wrapper"> 
    <div class="item-container">  
      <div class="containerX">
        <div class="col-md-3"></div> <!-- moet er zeker bij -->
        <!-- style based on this div -->
        <div class="twofaLogin col-md-6">
          <div class="title">
            <h2>2FA Login</h2>
          </div>
          <form method="POST" >
            <div class="pgpmsg">
              <span>
          <pre><?php echo $pgpmessage; ?></pre>
              </span>
            </div>
            <div class="input-group input">
              <span class="input-group-addon"><i class="fa fa-unlock-alt"></i> Decrypted Text </span>
              <input id="inputDecrypted" type="text" class="form-control" name="inputDecrypted" placeholder="Put Decrypted Text Here...">
            </div>
            <div class="input-group button">
              <button name="pgp1" class="btn btn-default">
                <span> Verify <i class="glyphicon glyphicon-ok"></i></span>
              </button>
            </div>
          </form>
          </div>
          <div class="col-md-3"></div> 
      </div>
    </div>
  </div>
</div>
<?php } ?>


        </div>


    </div>
</div>

 </div>

<?php }else{
          echo '<div class="alert alert-danger" style="margin-left: auto; margin-right: auto; width: 50%">';
        echo '<center><strong> <b>Logging in is currently disabled, please try again later  </b> </strong> ';
        echo '</div>';
}
?>