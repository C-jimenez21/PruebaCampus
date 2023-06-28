<?php
   header("Access-Control-Allow-Origin: *");
     require "../vendor/autoload.php";
     $dotenv = Dotenv\Dotenv::createImmutable("../")->load();
     new \App\connect();
     $router = new \Bramus\Router\Router();

     $router->mount("/camper", function() use($router){
        $router->post("/", function(){
            $_DATA = json_decode(file_get_contents("php://input"));
            $cox = new \App\Connect();
            $res = $cox->con->prepare("INSERT INTO campers (nombreCamper, apellidoCamper, fechaNac, idReg) VALUES (:nom, :ap, :fecha, :idReg)");
            $res->bindParam(":nom", $_DATA->nom);
            $res->bindParam(":ap", $_DATA->ap);
            $res->bindParam(":fecha", $_DATA->fecha);
            $res->bindParam(":idReg", $_DATA->idReg);
            $res->execute();
            print_r($res->rowCount());
        });
        $router->put("/", function (){
            $_DATA = json_decode(file_get_contents("php://input"));
            $cox = new \App\Connect();
            $res = $cox->con->prepare("UPDATE campers SET nombreCampus = :nom, apellidoCamper = :ape, fechaNac = :fecha, idReg = :idReg WHERE idCamper = :id");
            $res->bindParam(':id', $_DATA->id);
            $res->bindParam(':nom', $_DATA->nom);
            $res->bindParam(':ape', $_DATA->ape);
            $res->bindParam(':fecha', $_DATA->fecha);
            $res->bindParam(':idReg', $_DATA->idReg);
            $res->execute();
            print_r($res->rowCount());
        });

        $router->get("/", function(){
            $cox = new \App\Connect();
            $res = $cox->con->prepare("SELECT * FROM campers");
            $res->execute();
           echo json_encode($res->fetchAll(\PDO::FETCH_ASSOC));
        });
        
        $router->delete("/", function(){
            $_DATA = json_decode(file_get_contents("php://input"));
            $cox = new \App\Connect();
            $res = $cox->con->prepare("DELETE FROM campers WHERE idCamper = :id");
            $res->bindParam(":id", $_DATA->id);
            $res->execute();
            print_r($res->rowCount());
        });
        
    });
?>  