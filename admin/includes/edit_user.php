<?php


if(isset($_GET['edit_user_id'])){
    
    $the_user_id = $_GET['edit_user_id'];
    
    $query = "SELECT * FROM users WHERE user_id = '{$the_user_id}' ";
    
    $user_query = mysqli_query($conn , $query);
    
   if(!$user_query){
       
       die("Query Failed " . mysqli_error($conn));
   }
    
    
    
    while($row = mysqli_fetch_assoc($user_query)){
        
      $user_firstname = $row['user_firstname'];
      $user_lastname = $row['user_lastname'];
      $user_role = $row['user_role'];
      $username = $row['username'];
      $user_email = $row['user_email'];
      $user_password = $row['user_password'];
        
    }    
}





     if(isset($_POST['edit_user'])){
        
         
         $user_firstname = $_POST['user_firstname'];
         $user_lastname = $_POST['user_lastname'];
         $user_role = $_POST['user_role'];
    
//         $post_image = $_FILES['image']['name'];
//         $post_image_temp = $_FILES['image']['tmp_name'];      
    
    
         $username = $_POST['username'];
         $user_email = $_POST['user_email'];
         $user_password = $_POST['user_password'];
         
//       $post_date = date('d-m-y');

        //function for moving uploaded images to a specified location
//        move_uploaded_file($post_image_temp, "../images/$post_image");
    
    
  //query to update the user's information
        $query = "UPDATE users SET ";
        $query .= "user_firstname = '{$user_firstname}' , user_lastname = '{$user_lastname}' , user_role = '{$user_role}' , username = '{$username}' , user_email ='{$user_email}' , user_password = '{$user_password}' ";
         $query .= " WHERE user_id = '{$the_user_id}' ";
    
    $update_users_query = mysqli_query($conn , $query);
    
      confirmQuery($update_users_query);
   
      }
    

?>


<form action="" method="post" enctype="multipart/form-data">


    <div class="form-group">
        <label for="firstname">Firstname </label>
        <input type="text" class="form-control" value="<?php echo $user_firstname; ?>" name="user_firstname">
    </div>
    
    <div class="form-group">
        <label for="lastname">Lastname </label>
        <input type="text" class="form-control" value="<?php echo $user_lastname; ?>" name="user_lastname">
    </div>
    

    
     <div class="form-group">
      
         <select name="user_role" id="post_category">
             
        <?php
             
             $query = "SELECT user_role FROM users ";
             $role_query = mysqli_query($conn , $query);
             
             if(!$role_query){
                 
                 die("QUERY FAILED " . mysqli_error($conn));
             }
             
             while($row = mysqli_fetch_assoc($role_query)){
                 
                 $user_id = $row['user_id'];
                 $user_role = $row['user_role'];
                 
                 echo "<option value='{$user_role}'>{$user_role}</option>";
                
                 
             }
             
             ?>
             
        
         </select>          
    
    </div>
    
    
    
    
    
    
    <!--
     <div class="form-group">
        <label for="post_image">Post Image </label>
         <input type="file" name="image">
    </div>
    -->
    
    
     <div class="form-group">
        <label for="username">Username </label>
         <input type="text" class="form-control" value="<?php echo $username; ?>" name="username">
    </div>
    
    <div class="form-group">
        <label for="user_email">Email </label>
         <input type="email" class="form-control" value="<?php echo $user_email; ?>" name="user_email">
    </div>
    
   
    <div class="form-group">
        <label for="user_password">Password</label>
         <input type="password" class="form-control" value="<?php echo $user_password; ?>" name="user_password">
    </div>
    
    
    
    <div class="form-group">
        <input class="btn btn-primary" type="submit"  name="edit_user" value="Update User">
    </div>
    

    
</form>