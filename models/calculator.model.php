<?php
class CalculatorModel{

    private function createConection() {
        $host = 'localhost'; 
        $userName = 'root'; 
        $password = '';
        $database = 'db_creadores'; // nombre de la base de datos
        try {
            $pdo = new PDO("mysql:host=$host;dbname=$database;charset=utf8", $userName, $password);
            $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_WARNING);
        } catch (Exception $e) {
            var_dump($e);
        }
        return $pdo;
    }
    public function getCreators(){
        $db = $this->createConection();
        
           
        $sentencia = $db->prepare("SELECT * FROM creadores"); 
        $sentencia->execute();
        $usuarios = $sentencia->fetchAll(PDO::FETCH_OBJ); 
        
        return $usuarios;
    }
}