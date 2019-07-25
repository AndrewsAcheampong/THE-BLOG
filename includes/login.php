<?php include "db.php"; ?>
<?php session_start(); ?>

<?php

//receiving data from the form
if(isset($_POST['login'])){
    
$username = $_POST['username'];
$password = $_POST['password'];
 
mysqli_real_escape_string($conn , $username);
mysqli_real_escape_string($conn , $password);
    
    $query = "SELECT * FROM users where username = '{$username}' ";
    $users_query = mysqli_query($conn , $query);
    
    if(!$users_query){
        
        die("Query Failed!!" . mysqli_error($conn));
        
    }
    
    
    while($row = mysqli_fetch_assoc($users_query)){
        
    $db_user_id = $row['user_id'];
    $db_username = $row['username'];
    $db_user_password = $row['user_password'];
    $db_user_firstname = $row['user_firstname'];
    $db_user_lastname = $row['user_lastname'];
    $db_user_role = $row['user_role']; 
    
    }
    
if($username === $db_username && $password === $db_user_password){
    
    
    //setting  up sessions for all Admins that will login into the Admin page
    $_SESSION['username'] = $db_username;
    $_SESSION['firstname'] = $db_user_firsname;
    $_SESSION['lastname'] = $db_user_lastname;
    $_SESSION['user_role'] = $db_user_role;
    
     header("Location: ../admin");
    
}else{
    
    header("Location : ../index.php");
    
}
    
 


}





?>