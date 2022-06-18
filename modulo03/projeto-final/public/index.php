<?php

init_set("display_errors", 1);

include "../vendor/autoload.php";

use App\Connection\Connection;

$connection = Connection::connection();

$query = 'SELECT * FROM tb_category;';

$preparacao = $connection->prepare($query);
$preparacao->execute(); 

  while ($registro = $preparacao->fetch()) 
  var_dump($registro);

// }
//use App\Controller\IndexController;
//use App\Controller\ProductController;
//use App\Controller\ErrorController;

//$url = explode ("?",$_SERVER["REQUEST_URI"])[0];

//function createRoute(string $controllerName, string $methodName) {
  return [
    "controller" => $controllerName,
    "method" => $methodName,
  ];
//}

//$routes = [
 // "/" => createRoute(IndexController::class,"indexAction"), 
  //"/produtos"=>createRoute(ProdutosController::class,"listAction"),
  //"/produtos/novo"=>createRoute(ProdutosController::class,"addAction"),
//];

// if (false === isset($routes[$url])) {
//  (new ErrorController())->notFoundAction();
// exit;

// }
// $controllerName= $routes[$url]["controller"];
// $methodName= $routes[$url]["method"];

// (new $controllerName())-> $methodName();
