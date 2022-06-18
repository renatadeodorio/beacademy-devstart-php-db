<?php

init_set("display_errors", 1);

include "../vendor/autoload.php";

// use App\Connection\Connection;

// $connection = Connection::connection();

// $query = 'SELECT * FROM tb_category;';

// $preparacao = $connection->prepare($query);
// $preparacao->execute(); 

//   while ($registro = $preparacao->fetch()) 
//   var_dump($registro);


$url = explode ("?",$_SERVER["REQUEST_URI"])[0];

if (false === isset($routes[$url])) {
 (new ErrorController())->notFoundAction();
exit;

}
$controllerName= $routes[$url]["controller"];
$methodName= $routes[$url]["method"];

(new $controllerName())-> $methodName();
