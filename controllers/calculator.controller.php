<?php
require_once 'views/calculator.view.php';
require_once 'models/calculator.model.php';
class CalculatorController{
    private $model;
    private $view;
    public function __construct(){
        $this->model= new CalculatorModel();
        $this->view= new CalculatorView();
    }
    public function showCalculator(){
        $this->view->viewCalculator();     
    }
    public function showCreators(){
        $creadores = $this->model->getCreators();
        //funciona! http://localhost/trabajoespecialtio/trabajoEspecialTio/nosotros 
        //por ejemplo, muestra el primer creador
        echo $creadores[0]->creador;
        $this->view->viewCreator($creadores);
    }
}