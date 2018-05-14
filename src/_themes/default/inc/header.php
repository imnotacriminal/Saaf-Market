

<?php
$path = $_SERVER['DOCUMENT_ROOT'];
$path .= "/_app/classes/connection.class.php";

@require $path;
 if($user->LoggedIn())
{

?>

<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <title><?php echo SITE_NAME; ?></title>
      <link rel="stylesheet" href="<?php echo THEME_REQ; ?>css/bootstrap.min.css">
      <link rel="stylesheet" href="<?php echo THEME_REQ; ?>css/font-awesome.css">
            <link rel="stylesheet" href="<?php echo THEME_REQ; ?>css/menu.css">
      <link rel="stylesheet" href="<?php echo THEME_REQ; ?>css/style.css">
   </head>
   <body>

<div class="header">
      ﻿
      <div align="center"  style="margin-top:-15">
            <div title="<?php echo SITE_NAME;   ?>" align="center" id="imgm" style="display:inline-block">
                   <img src="<?php echo THEME_REQ; ?>/img/logo.png" style="height:70px;width:70px">
              <br>
              <b style="color:#333"><?php echo SITE_NAME; ?></b>
              <br>
              <span style="font-size:12px;font-weight:bold"><?php echo SITE_MOTTO; ?></span>
            </div>
      </div>
    <div class="wsmain">
      <nav class="wsmenu clearfix">
        <ul class="mobile-sub wsmenu-list">
          <li class="rightmenu">
        <?php
          if(isset($_POST['searchBTN']))
          {
             header("Location: /listings&page=1&search=".$_POST['search']."");
          }
        ?>
         <form method="post" class="topmenusearch" style="position: absolute; right: 1px;">
              <input name="search" placeholder="Search...">
              <button name="searchBTN" class="btnstyle"><span class="glyphicon glyphicon-search" aria-hidden="false"></span></button>
            </form>
          </li>
        <li><a href="<?php echo SITE_BASE; ?>/home"><span class=" glyphicon glyphicon-home"></span> Home</a>
        <li><a href="<?php echo SITE_BASE; ?>/listings&page=1"><span class="glyphicon glyphicon-shopping-cart"></span> Listings</a>
        <li><a href="<?php echo SITE_BASE; ?>/account"><span class="glyphicon glyphicon-user"></span> Account </a>
        <li><a href="<?php echo SITE_BASE; ?>/messages"><span class="glyphicon glyphicon-inbox"></span> Messages(<?php echo $user->getUnreadMessages($_SESSION['user_session']); ?>)</a>
         <li><a href="<?php echo SITE_BASE; ?>/news"><span class="glyphicon glyphicon-bell"></span> Forum</a>
         <li><a href="<?php echo SITE_BASE; ?>/support"><span class="glyphicon glyphicon-bullhorn"></span> Support</a>
        <?php if($user->isAdmin($_SESSION['user_session'])) { echo '<li><a href="'.SITE_BASE.'/'.SITE_ADMIN_PATH.'/"><span class="glyphicon glyphicon-tasks"></span> Admin Panel</a>'; } ?>
         <?php if($user->isVendor($_SESSION['user_session'])) { echo '<li><a href="'.SITE_BASE.'/'.SITE_VENDOR_PATH.'/"><span class="glyphicon glyphicon-briefcase"></span> Vendor Panel</a>'; } ?>
             <li><a href="<?php echo SITE_BASE; ?>/logout"><span class="glyphicon glyphicon-log-out"></span> Logout</a>
 </li>
        </ul>
         </nav>

        </div>
         <div class="wrapper">
        <Br>
                <?php if(MAINTENANCE_MODE == TRUE){

        echo '<div class="alert alert-danger" style="margin-left: auto; margin-right: auto; width: 50%">';
        echo '<center><strong> <b>'.SITE_NAME.' is currently ongoing maintenance, please try again later  </b> </strong> ';
        echo '</div>';
        die();
}

  ?>

<?php }else { ?>



<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8">
      <title><?php echo SITE_NAME; ?></title>
      <link rel="stylesheet" href="<?php echo THEME_REQ; ?>css/bootstrap.min.css">
          <link rel="stylesheet" href="<?php echo THEME_REQ; ?>css/menu.css">
      <link rel="stylesheet" href="<?php echo THEME_REQ; ?>css/style.css">
            <link rel="stylesheet" href="<?php echo THEME_REQ; ?>css/font-awesome.css">
   </head>
   <body>
      <div align="center">

<div class="header">
          <div align="center">
      <div id="b" align="left">
      ﻿
      <div align="center" id="d" style="margin-top:-15">
            <div title="<?php echo SITE_NAME;   ?>" align="center" id="imgm" style="display:inline-block">
                  <img src="<?php echo THEME_REQ; ?>/img/logo.png" style="height:70px;width:70px">
              <br>
              <b style="color:#333"><?php echo SITE_NAME; ?></b>
              <br>
              <span style="font-size:12px;font-weight:bold"><?php echo SITE_MOTTO; ?></span>
            </div>
      </div>

    <div class="wsmain">

      <nav class="wsmenu clearfix">
        <ul class="mobile-sub wsmenu-list">
          <li class="rightmenu">



          </li>

        <li><a href="<?php echo SITE_BASE; ?>/login"><span class="glyphicon glyphicon-log-in"></span> Login</a>
        <li><a href="<?php echo SITE_BASE; ?>/2fa"><span class="glyphicon glyphicon-log-in"></span> 2FA </a>
        <li><a href="<?php echo SITE_BASE; ?>/recover"><span class="glyphicon glyphicon-wrench"></span> Recover </a>
        <li><a href="<?php echo SITE_BASE; ?>/register"><span class=" glyphicon glyphicon-pencil"></span> Register </a>
        </ul>
         </nav>

        </div>
       <div class="wrapper">
        <Br>
        <?php if(MAINTENANCE_MODE == TRUE){

        echo '<div class="alert alert-danger" style="margin-left: auto; margin-right: auto; width: 50%">';
        echo '<center><strong> <b>'.SITE_NAME.' is currently ongoing maintenance, please try again later  </b> </strong> ';
        echo '</div>';
        die();
        }
  }
?>
