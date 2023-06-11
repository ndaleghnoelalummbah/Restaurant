<?php
    session_start();
    header("Access-Control-Allow-Origin: *");
    $rest_json = file_get_contents("php://input");
    $_POST = json_decode($rest_json, true);

    // Make sure form is not missing one value
    if (empty($_POST['email']) && empty($_POST['passwd']) 
    && empty($_POST['cpasswd'])) 
    die();

    if ($_POST){
        // Compare password and confirm password entries
        if(strcmp($_POST['passwd'], $_POST['cpasswd']) == 0){
            require_once "connect.php";
            $sql = "SELECT * FROM Customer INNER JOIN Logging ON Logging.CustID = Customer.CustID WHERE ( Customer.Email = '$_POST['email']' AND Logging.Passwd = '$_POST['cpasswd']' )";
            $sql2 = "SELECT CustID FROM Customer WHERE Email = '$_POST['email']'";

            if(mysqli_query($conn, $sql)){ // Validate login credentials
                while($row = mysqli_fetch_assoc(mysqli_query($conn, $sql2))){ //Get CustID and stamp in session
                    $CustID = $row['CustID'];
                }
                $_SESSION['ID'] = $CustID
                header("Location: next1.js"); // Replace "next1.js" with the name of react landing page
                die();
            }
        }
        else{ // tell user about unmatching passwords inputed
            echojson_encode(["sent" => false, "message" => "Unmatching passwords"]);
        }
    }
    else{ // tell the user about error
        echojson_encode(["sent" => false, "message" => "Something went wrong"]);
    }    
?>