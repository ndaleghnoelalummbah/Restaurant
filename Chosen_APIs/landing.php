<?php
    session_start();
    header("Access-Control-Allow-Origin: *");
    $rest_json = file_get_contents("php://input");
    $_POST = json_decode($rest_json, true);

    if ($_POST){
        if (isset($_POST['order'])){
            $_SESSION['branch'] = $_POST['branch'];
            $_SESSION['type'] = "order";
            header("Location: next2.js"); // Replace "next2.js" with the name of react menu page
            die();
        }

        else if (isset($_POST['reserve'])){
            $_SESSION['branch'] = $_POST['branch'];
            $_SESSION['type'] = "reserve";
            header("Location: next2.js"); // Replace "next2.js" with the name of react reserve details page
            die();
        }
        /*else{
            $_SESSION['branch'] = $_POST['branch'];
            $_SESSION['type'] = "cater";
            header("Location: next2.js"); // Replace "next2.js" with the name of react landing page
            die();
        }*/
    }
?>