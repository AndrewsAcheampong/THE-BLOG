
<?php

//connecting the blog to the created database;

/* Storing all needed values in an array */

$db["db_Host"] = "localhost";
$db["db_User"] = "root";
$db["db_Pass"] = "";
$db["db_Name"] = "cms";

/* Using foreach loop to loop through the array to make the key a constant and uppercase it */ 

foreach($db as $key => $value){
    
    define(strtoupper($key), $value);
}

$conn = mysqli_connect(DB_HOST, DB_USER, DB_PASS, DB_NAME);

if(!$conn){
    
  die("Query Failed!!" . mysqli_error($conn));
    
}






?>
    
    