<?php

/*****************
Site Config
****************/
define("SITE_BASE", "http://192.168.33.10");
define("SITE_THEME", "default");

define("SITE_NAME", "Amber Road");
define("SITE_MOTTO", "anonymous market");
define("SITE_404", "404, page not found");
define("SITE_FOOTER", "loldongs");


define("DEBUG_MODE", true); // Echoes pgp secret using 2fa
define("MAINTENANCE_MODE", false);
define("REGISTRATION_ALLOWED", true);
define("LOGIN_ALLOWED", true);
/*****************
Mysql Config
****************/
Define("MYSQL_HOST", "127.0.0.1");
Define("MYSQL_USER", "root");
Define("MYSQL_PASS", "root");
Define("MYSQL_DB",   "saaf");

/*****************
Theme setup
****************/
define("THEME_REQ", SITE_BASE . "/_themes/" . SITE_THEME . "/");
define("THEME_PATH", "_themes/" . SITE_THEME);
define("SITE_ADMIN_PATH", "ewaewa");
define("SITE_VENDOR_PATH", "vendor");
