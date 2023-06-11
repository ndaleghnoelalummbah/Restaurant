<?php
session_start();
header("Access-Control-Allow-Origin: *");
$rest_json = file_get_contents("php://input");
$_POST = json_decode($rest_json, true);

if(strcmp($_SESSION['type'], "order") == 0){
    if ($_POST){
        require_once "connect.php";
        $date = date("Y-m-d");
        $tot_price = 0;
        $number = 0;        
        // Code to get the number of meals ordered and total price of the order
        foreach($_POST['meal']){
            $sql = "SELECT Price FROM MenuItems WHERE ItemName = '$_POST['meal']'";
            while($row = mysqli_fetch_assoc(mysqli_query($conn, $sql))){
                $Price = $row['Price'];
            }
            $number = $number + 1;
            $tot_price = $tot_price + $Price;
        }
        // Stamp total price value in session
        $_SESSION['tot_price'] = $tot_price;
        // Convert total price variable to JSON string
        $json_data = json_encode($tot_price);
        // Create an API endpoint that returns the JSON data
        header('Content-Type: application/json');
        echo $json_data;

        // Code to insert into Orders table giving the OrderDate, Quantity, TotalPrice and CustID of order
        $sql1 = "INSERT INTO Orders(OrderDate, Quantity, TotalPrice, CustID) 
        VALUES ('$date', '$number', '$tot_price', '$_SESSION['ID']')";
        
        if(mysqli_query($conn, $sql1)){
            $sql2 = "SELECT OrderID FROM Orders WHERE Email = '$_POST['email']'";
            while($row = mysqli_fetch_assoc(mysqli_query($conn, $sql2))){ 
                //Get OrderID and stamp in session
                $OrderID = $row['OrderID'];
            }
            // Stamp OrderID in session
            $_SESSION['OrderID'] = $OrderID;
            foreach($_POST['meal']){ 
                //Code to insert into OrderMenuContent table giving the referenced OrderID and ItemName
                $sql1 = "INSERT INTO OrderMenuContent(OrderID, ItemName) 
                VALUES ('$OrderID', '$_POST['meal']')";
            }// Redirect to payment page
            header("Location: next.js"); // Replace "next.js" with the name of react payment page
            die();
        }
    }
    else{ // tell the user about error
        echojson_encode(["sent" => false, "message" => "Something went wrong"]);
    }
}

if(strcmp($_SESSION['type'], "reserve") == 0){
    if ($_POST){
        require_once "connect.php";
        $date = date("Y-m-d");
        $tot_price = 0;
        $number = 0;        
        // Code to get the number of meals ordered and total price of the order
        foreach($_POST['meal']){
            $sql = "SELECT Price FROM MenuItems WHERE ItemName = '$_POST['meal']'";
            while($row = mysqli_fetch_assoc(mysqli_query($conn, $sql))){
                $Price = $row['Price'];
            }
            $number = $number + 1;
            $tot_price = $tot_price + $Price;
        }
        // Stamp total price value in session
        $total_price = $tot_price + ($_SESSION['size'] * 1000);
        $_SESSION['tot_price'] = $total_price;
        // Convert total price variable to JSON string
        $json_data = json_encode($_SESSION_['tot_price']);
        // Create an API endpoint that returns the JSON data
        header('Content-Type: application/json');
        echo $json_data;

        // Code to insert into Orders table giving the OrderDate, Quantity, TotalPrice and CustID of order
        $sql1 = "INSERT INTO Orders(OrderDate, DeliveryDate, Quantity, TotalPrice, Delivery_Time, CustID) 
        VALUES ('$date', '$_SESSION['del_date']', '$number', '$total_price', '$_SESSION['del_time']', '$_SESSION['ID']')";
        
        if(mysqli_query($conn, $sql1)){
            $sql2 = "SELECT OrderID FROM Orders WHERE Email = '$_POST['email']'";
            while($row = mysqli_fetch_assoc(mysqli_query($conn, $sql2))){ 
                //Get OrderID and stamp in session
                $OrderID = $row['OrderID'];
            }
            // Stamp OrderID in session
            $_SESSION['OrderID'] = $OrderID;
            // Code to insert into Reservation table
            $sql3 = "INSERT INTO Reservation(OrderID, Reservation_size) VALUES('$OrderID', '$_SESSION['size']')";
            foreach($_POST['meal']){ 
                //Code to insert into OrderMenuContent table giving the referenced OrderID and ItemName
                $sql1 = "INSERT INTO OrderMenuContent(OrderID, ItemName) 
                VALUES ('$OrderID', '$_POST['meal']')";
            }
            // Code to write to a file, the contents of the special notes for that particular reservation
            $myfile = fopen("Reservation No_".$OrderID.".txt", "w") or die("Unable to open file!");
            fwrite($myfile, "CustomerID: ".$CustID."\n"."Reservation No: ".$OrderID."\n\n"."Message:"."\n".$_SESSION['notes']);

            // Redirect to payment page
            header("Location: next.js"); // Replace "next.js" with the name of react payment page
            die();
        }
    }
    else{ // tell the user about error
        echojson_encode(["sent" => false, "message" => "Something went wrong"]);
    }
}
?>