<?php
    session_start();
    header("Access-Control-Allow-Origin: *");
    $rest_json = file_get_contents("php://input");
    $_POST = json_decode($rest_json, true);

    if (empty($_POST['method'])) 
    die();

    if ($_POST){
        require_once "connect.php";
        $amount = $_SESSION['tot_price'];
        $Orderid = $_SESSION['OrderID'];
        $method = $_POST['method'];
        $district = $_POST['district'];
        $address = $_POST['address'];
        $location = $district . ' ' . $address;

        $sql = "INSERT INTO Payment(OrderID, Amount, Payment_type) VALUES('$Orderid', '$amount', '$method')";
        if(mysqli_query($conn, $sql)){
            header("Location: next.js"); // Replace "next.js" with the name of react landing page
            die();
        }
    }
?>