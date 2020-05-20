<?php
    require_once ('libs/Smarty.class.php');
    class CalculatorView{
        private $smarty;
        public function __construct(){
            $this->smarty = new Smarty();
            $this->smarty->assign('base_url', BASE_URL);
            $this->smarty->assign('title','Calculadora');
        }
        public function viewCalculator(){
            $this->smarty->display('calculadora.tpl');
        }
        public function viewCreator($creators){
            $this->smarty->assign('creadores', $creators);
            $this->smarty->display('quienesSomos.tpl');
        }
        public function viewHelp(){
            $this->smarty->display('ayuda.tpl'); 
        }
}