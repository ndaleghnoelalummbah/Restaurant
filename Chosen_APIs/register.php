<?php
    session_start();
    header("Access-Control-Allow-Origin: http://localhost:3000");
    $rest_json = file_get_contents("php://input");
    $_POST = json_decode($rest_json, true);

    // Make sure form is not missing one value
    if (empty($_POST['cname']) && empty($_POST['email']) 
    && empty($_POST['tel']) && empty($_POST['passwd']) 
    && empty($_POST['cpasswd'])) 
    die();

    if ($_POST){
        // Compare password and confirm password entries
        if(strcmp($_POST['passwd'], $_POST['cpasswd']) == 0){
            require_once "connect.php";
            $sql1 = "INSERT INTO Customer(CustName, Email, Tel, CustLocation) VALUES ('$_POST['cname']', '$_POST['email']', '$_POST['tel']', 'Buea')";
            $sql2 = "SELECT CustID FROM Customer WHERE Email = '$_POST['email']'";
            $sql3 = "INSERT INTO Logging(CustID, cpasswd) VALUES ('$CustID', '$_POST['cpasswd']')";

            if(mysqli_query($conn, $sql1)){ //Insert into Customer table successfully before proceeding

                while($row = mysqli_fetch_assoc(mysqli_query($conn, $sql2))){ //Get the auto generated CustID
                    $CustID = $row['CustID'];
                }

                if(mysqli_query($conn, $sql3)){ // Insert into Logging table
                    header("Location: https://localhost:3000/Login.jsx"); // Replace "next.js" with the name of react login page
                    die();
                }
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