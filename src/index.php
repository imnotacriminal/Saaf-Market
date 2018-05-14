<?php
ob_start();
session_start();
define("PATH_ROOT", dirname(__FILE__));
require PATH_ROOT . "/_app/conf.inc.php";


$GetURL = @filter_input(INPUT_GET, 'url', FILTER_DEFAULT);
$SetURL = @(empty($GetURL) ? 'index' : $GetURL);
$URL = @explode('/', strtolower($SetURL));
            if(empty($URL[1]))
        {
         header("Location: home");
        }   
        if(!empty($URL[2]) && !empty($URL[1]))
        {
         if (file_exists(THEME_PATH . '/'.$URL[1].'/inc/header.php')):
                  require_once THEME_PATH . '/'.$URL[1].'/inc/header.php';
            else:
                  if (file_exists(THEME_PATH . '/inc/header.php')):
                  require_once THEME_PATH . '/inc/header.php';
                  else:
                    trigger_error('Can\'t find page  "/inc/header.php"');
                    endif;
            endif;
        }else{
            if (file_exists(THEME_PATH . '/inc/header.php')):
                  require_once THEME_PATH . '/inc/header.php';
            else:
                trigger_error('Can\'t find page  "/inc/header.php"');
            endif;

        }
        
            if (file_exists(THEME_PATH . "/{$URL[1]}.php")):
                require_once THEME_PATH . "/{$URL[1]}.php";
            else:
            if (@file_exists(THEME_PATH . "/". $URL[1] ."/{$URL[2]}.php")):
                @require_once THEME_PATH . "/" . $URL[1] . "/{$URL[2]}.php";
            else:   
                if (file_exists(THEME_PATH . '/404.php')):
                    require_once THEME_PATH . '/404.php';
                else:
                    trigger_error('Can\'t find page "404.php"');
                endif;
        endif;
        endif; 


        if (file_exists(THEME_PATH . '/inc/footer.php')):
            require_once THEME_PATH . '/inc/footer.php';
        else:
            trigger_error('Can\'t find page  "/inc/footer.php"');
        endif;



        ?>

