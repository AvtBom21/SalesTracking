<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "SalesTracking";

function get_connection()
    {
        $conn = new mysqli(HOST, USER, PASS, DB);
        if ($conn->connect_errno) {
            $resultjs = array('code'=>1,'error'=> 'can not connect to database');
            die(json_encode($resultjs));
        }
        $conn->set_charset("utf8");
        return $conn;
    }
?>
