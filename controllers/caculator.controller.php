<?php
require_once 'views/calculator.view.php';
require_once 'models/calulator.model.php';
class CalculatorController{
    private $model;
    private $view;
    private function __construct(){
        $this->model= new CalculatorModel();
        $this->view= new CalculatorView();
    }
    public function showCalculator(){
        $this->view->viewCalculator();     
    }
    public function showCreators(){
        $this->model->getCreators();
        $this->view->viewCreator();
    }
}