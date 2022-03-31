<?php

conexion();

function conexion(){

    $server = 'proyecto.crjusbphwqe8.us-east-1.rds.amazonaws.com';
    $user = 'admin';
    $pass = '30.m.CIAG.1.j';
    $db = 'mantenimiento_reparacion';

    $conectar = mysqli_connect($server, $user, $pass, $db) or die ("Error en la conexion");
    
    return $conectar;

}

?>