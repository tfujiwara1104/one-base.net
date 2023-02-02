<?

include_once("{$_SERVER['SERVER_ROOT']}/inc/def.inc");

$filename = isset($_GET["filename"]) ? $_GET["filename"] : 0 ;
$filepath = "{$_SERVER['SERVER_ROOT']}/json/{$filename}";
if(!file_exists($filepath)){ header("HTTP/1.0 404 Not Found"); exit; }
header("Content-Type: application/json; charset=utf-8");
readfile($filepath);
