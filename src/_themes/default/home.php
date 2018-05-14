<?php 
if(!$user->LoggedIn())
{
  $user->redirect('login');
}
   $_SESSION['filter'] = "ORDER BY id";
                $_SESSION['perPage'] = "6";
                $_SESSION['nofe'] = "off";
?>
<div class="row">
<div class="col-sm-3">
   <div align="left" id="vp" style="width:90%;margin-left:20px;margin-right:20px;">
           <span href="#" style="background: #2b3a40; border-color: #2b3a40;" class="list-group-item active">
           Shop by category:
        </span>
       <div class="catdropdown list-group">
        <?php 
        $array = $site->getCategories(1,0);

        foreach($array as $cato)
        {
            $array2 = $site->getCategories(2,$cato['id']);
            echo ' <div class="catdropdown list-group-item">';
            echo '<input type="checkbox" id="checkbox-dropdown-toggle'.$cato['id'].'">';
            echo ' <label for="checkbox-dropdown-toggle'.$cato['id'].'">' . $cato['cato_name'];
            echo '<span class="glyphicon glyphicon-chevron-right arrow-right"></span>';
            echo '<span class="glyphicon glyphicon-chevron-down arrow-down"></span>';
            echo '   </label>';
            echo '  <ul class="dropdown-ul">';
            foreach($array2 as $sub)
            {
                  echo ' <li class="dropdown-li"><a href="/listings&page=1&sub='.$sub['id'].'">'.$sub['sub_name'].'  <span style="float: right;" class="badge">'.$sub['products'].'</span></a></li>';
            }
            echo '</ul></div>';
        }

        ?>

      </div>
    </div>        
</div>

<div class="col-sm-8">
   <div align="left" id="vp" style="width:110%;margin-left:-15px;margin-right:20px;">

<h2>Welcome to The Amber Road</h2>
<hr>
<?php
  if($user->pgpAuth_Enabled($_SESSION['user_session']) == false)
  {
                    echo '<div class="alert alert-danger" style="margin-left: auto; margin-right: auto; width: 100%">';
                echo '<center><strong> <b> Due to a lot of markets having the issue with phising sites we advice you to enabled two factor authentication on '.SITE_NAME.'</b> </strong> ';
                echo '</div>';   
  }
 ?>

The Amber road focuses itself on being a secure market platform, what makes it impossible for LE to intercept with transactions on Amber Road. We aim to be the most secure darknet market on the darknet.
<br><br>
<div class="col-sm-4">
<hr>
<h4> <img src="<?php echo THEME_REQ; ?>/img/logo.png"  style="height:30px;width:30px"> Verified vendors</h4>
<hr>
In order to make sure the buyer does not get scammed we have a selection of Verified Vendors, these vendors have been around on Amber Road for a long period and have build up a high reputation within the market. These sellers are allowed to sell with FE or Half-FE. 
</div>
<div class="col-sm-4">
<hr>
<h4> <img src="<?php echo THEME_REQ; ?>/img/logo.png"  style="height:30px;width:30px"> Privacy</h4>
<hr>
To ensure the safety of all users on The Amber Road. <strong>All</strong> buyers and vendors need to set their public pgp key, with this we can ensure <strong>if</strong> LE gets involved The Amber Road will leave no trail of any information about the buyer/vendor.
</div>

<div class="col-sm-4">
<hr>
<h4> <img src="<?php echo THEME_REQ; ?>/img/logo.png"  style="height:30px;width:30px"> Dedicated support team</h4>
<hr>
To make sure we can satisfy our users we have set up a dedicated team who actively handles support tickets, if you encounter any issue(s) within the site or with vendors please contact the Support team. And we will help you as fast as possbile.<br><br><br><br>

</div>



</div>
</div>
