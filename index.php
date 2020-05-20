<?php
require_once 'controllers/calculator.controller.php';
    define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');
    if (empty($_GET['action'])) {
        $_GET['action'] = 'home';
    } 
    $accion = $_GET['action']; 
    $parametros = explode('/', $accion);
    switch ($parametros[0]) {
        case 'home':
            $controller = new CalculatorController();
            $controller->showCalculator();
        break;
        case 'nosotros':
            $controller = new CalculatorController();
            $controller->showCreators();
        break;
        case 'ayuda':
            $controller = new CalculatorController();
            $controller->showHelp();
        break;
        default: 
            echo "404 not found";
        break;
    }