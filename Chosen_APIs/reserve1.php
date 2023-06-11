<?php
    session_start();
    header("Access-Control-Allow-Origin: *");
    $rest_json = file_get_contents("php://input");
    $_POST = json_decode($rest_json, true);

    if ($_POST){
        if (isset($_POST['reserve'])){
            $_SESSION['del_date'] = $_POST['del_date'];
            $_SESSION['del_time'] = $_POST['del_time'];
            $_SESSION['size'] = $_POST['size'];
            $_SESSION['notes'] = $_POST['notes'];
            header("Location: next2.js"); // Replace "next2.js" with the name of react menu page
            die();
        }
    }