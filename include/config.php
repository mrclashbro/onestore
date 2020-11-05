<?php
defined('server') ? null : define("server", "localhost");
defined('user') ? null : define ("user","a3001405_clash") ;
defined('pass') ? null : define("pass","AB@gmail.com1");
defined('database_name') ? null : define("database_name", "a3001405_db_ecommerce") ;

$this_file = str_replace('\\', '/', __File__) ;
$doc_root = $_SERVER['DOCUMENT_ROOT'];

$web_root =  str_replace (array($doc_root, "include/config.php") , '' , $this_file);
$server_root = str_replace ('config/config.php' ,'', $this_file);


define ('web_root' , $web_root);
define('server_root' , $server_root);
?>