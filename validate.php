<?php

if(isset($_POST['Submit'])){
    
$name = array("Andrews","Victor", "Elizabeth" , "Kofi" , "Fiona");
$Pass = array("And","Vic", "Eli" , "Kofi" , "Fio");

    
 $username = $_POST['username'];
 $password = $_POST['Pass']; 

    
 if(!in_array($username , $name)){
     
     die("You are not allowed to get to the page");
         
 }else{
     
     if(!in_array($password , $Pass)){
         
          die("You cannot enter the page");
         
     }else{
         
         
         header("Location: page.php");
         
     }
     
    
     
 }
    
    
    
}





?>