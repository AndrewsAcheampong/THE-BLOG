<table class="table table-bordered table-stripped table-hover ">
                             <thead>
                                 <tr>
                                     <th>Id</th>
                                     <th>Username</th>
                                     <th>Firstname</th>
                                     <th>Lastname</th>
                                     <th>Email</th>
                                     <th>Role</th>
                                     <th>Admin</th>
                                     <th>Subscriber</th>
                                     <th>Edit</th>
                                     <th>Delete</th>
                                     
                                     
                                 </tr>
                            </thead>  
                            <tbody>
                                

     <!-- Query to fetch data from the database -->
     <?php

      $query ="SELECT * FROM users";
      $users_query = mysqli_query($conn , $query);

     if(!$users_query){

         die("Query Failed!!" . mysqli_error($conn));

     }else{

             while($row = mysqli_fetch_assoc($users_query)){
             $user_id  = $row['user_id'];
             $username  = $row['username'];
             $user_password = $row['user_password'];
             $user_firstname = $row['user_firstname'];
             $user_lastname  = $row['user_lastname'];
             $user_email  = $row['user_email'];
             $user_image = $row['user_image'];
             $user_role = $row['user_role'];

            


            echo  "<tr>";

             echo "<td>{$user_id}</td>";
             echo "<td>{$username}</td>";
             echo "<td>{$user_firstname}</td>";
                 
//                // query to select category title from the database to the post
//              $query = "SELECT * FROM categories WHERE cat_id = '{$post_category_id}' ";
//              $select_cat_id = mysqli_query($conn , $query);
//                                   
//              while($row = mysqli_fetch_assoc($select_cat_id)){
//              $cat_id = $row['cat_id'];
//              $cat_title = $row['cat_title'];
//       
//             echo "<td>{$cat_title}</td>";
//        
                 
             echo "<td>{$user_lastname}</td>";
             echo "<td>{$user_email}</td>";
             echo "<td>{$user_role}</td>";
                 
                 //catching a get_super_global here
                 
                 
                 //query to select the title of the post
//                 $query = "SELECT * FROM posts WHERE post_id =  $comment_post_id ";
//                 
//                 $post_query = mysqli_query($conn , $query);
//                 
//                 while($row = mysqli_fetch_assoc($post_query)){
//                     
//                     $post_id = $row['post_id'];
//                     $post_title = $row['post_title'];
//                     
//           echo "<td><a href='../post.php?p_id=$post_id'>$post_title</a></td>";               
//                 
//                 }
//                 
                     
            
             
             echo "<td><a href='users.php?admin=$user_id'>Admin</a></td>";
             echo "<td><a href='users.php?subscriber=$user_id'> Subscriber </a></td>";
             echo "<td><a href='users.php?source=edit_user&edit_user_id={$user_id}'>Edit</a></td>";
             echo "<td><a href='users.php?delete=$user_id'> Delete </a></td>";
            

             echo "</tr>";

                      }
           }
                       
   
            ?>
                            </tbody>
                        </table>

<!-- Code that is deleting the posts -->

<?php



//making querries to approved for posting  
if(isset($_GET['admin'])){
    
    $user_role_id = $_GET['admin'];
    
    $query = "UPDATE users SET user_role = 'Admin' WHERE user_id = $user_role_id ";
    $user_role_query = mysqli_query($conn , $query);
      header("Location: users.php");


}





//making querries to unapprove 
if(isset($_GET['subscriber'])){
    
    $user_role_id  = $_GET['subscriber'];
    
    $query = "UPDATE users SET user_role = 'Subscriber' WHERE user_id = $user_role_id ";
    $user_role_query = mysqli_query($conn , $query);
      header("Location: users.php");


}

  if(isset($_GET['delete'])){
    
    $user_role_id  = $_GET['delete'];
    
    $query = "DELETE FROM users WHERE user_id = $user_role_id  ";
    $users_delete_query = mysqli_query($conn , $query);
      header("Location: users.php");
    
}



?>


