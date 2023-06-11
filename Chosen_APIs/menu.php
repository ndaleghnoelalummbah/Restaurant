<?php
    session_start();
    require_once "connect.php";
    
    $branch = $_SESSION['branch'];
    $date = date("Y-m-d");

    $sql = "SELECT MenuItems.ItemName AS iname, MenuItems.Price AS price, MenuItems.ItemImage AS iimage 
    FROM MenuItems INNER JOIN MenuList ON MenuItems.ItemName = MenuList.ItemName 
    WHERE (MenuList.MenuDate >= '$date' AND MenuList.Branch = '$branch')";

    $result = mysqli_query($conn, $sql);

    if ($result) {
        // fetch the result set into an array
        $rows = mysqli_fetch_all($result, MYSQLI_ASSOC);
        // loop through the rows and process each one

        // convert the array to JSON
        $json_data = json_encode($rows);
  
        // send the JSON data to the React page
        echo "<script>const data = " . $json_data . ";</script>";
    }
    else {
        // handle the error if the query was not successful
        echo "Error executing query: " . mysqli_error($conn);
    }
?>