
<table class="table table-bordered table-stripped table-hover ">
                             <thead>
                                 <tr>
                                     <th>Id</th>
                                     <th>Author</th>
                                     <th>Comment</th>
                                     <th>Email</th>
                                     <th>Status</th>
                                     <th>In Response</th>
                                     <th>Date</th>
                                     <th>Approved</th>
                                     <th>Unapproved</th>   
                                     <th>Delete</th> 
                                 </tr>
                            </thead>  
                            <tbody>
                                

     <!-- Query to fetch data from the database -->
     <?php

      $query ="SELECT * FROM comments";
      $comment_query = mysqli_query($conn , $query);

     if(! $comment_query){

         die("Query Failed!!" . mysqli_error($conn));

     }else{

             while($row = mysqli_fetch_assoc($comment_query)){
             $comment_id  = $row['comment_id'];
             $comment_post_id  = $row['comment_post_id'];
             $comment_author = $row['comment_author'];
             $comment_content  = $row['comment_content'];
             $comment_email  = $row['comment_email'];
             $comment_status = $row['comment_status'];
             $comment_date = $row['comment_date'];
            


            echo  "<tr>";

             echo "<td>{$comment_id}</td>";
             echo "<td>{$comment_author}</td>";
             echo "<td>{$comment_content}</td>";
                 
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
                 
             echo "<td>{$comment_email}</td>";
             echo "<td>{$comment_status}</td>";
                 
                 //catching a get_super_global here
                 
                 
                 //query to select the title of the post
                 $query = "SELECT * FROM posts WHERE post_id =  $comment_post_id ";
                 
                 $post_query = mysqli_query($conn , $query);
                 
                 while($row = mysqli_fetch_assoc($post_query)){
                     
                     $post_id = $row['post_id'];
                     $post_title = $row['post_title'];
                     
           echo "<td><a href='../post.php?p_id=$post_id'>$post_title</a></td>";               
                 
                 }
                 
                     
            
             echo "<td>{$comment_date}</td>";
             echo "<td><a href='comments.php?approved=$comment_id'>Approve</a></td>";
             echo "<td><a href='comments.php?unapproved=$comment_id'> Unapprove </a></td>";
             echo "<td><a href='comments.php?delete=$comment_id'> Delete </a></td>";
            

             echo "</tr>";

                      }
           }
                       
    // }
            ?>
                            </tbody>
                        </table>

<!-- Code that is deleting the posts -->

<?php



//making querries to approved for posting  
if(isset($_GET['approved'])){
    
    $delete_query_id = $_GET['approved'];
    
    $query = "UPDATE comments SET comment_status =  'Approved' WHERE comment_id = $delete_query_id  ";
    $post_delete_query = mysqli_query($conn , $query);
      header("Location: comments.php");


}





//making querries to unapprove 
if(isset($_GET['unapproved'])){
    
    $delete_query_id = $_GET['unapproved'];
    
    $query = "UPDATE comments SET comment_status =  'Unapproved' WHERE comment_id = $delete_query_id    ";
    $post_delete_query = mysqli_query($conn , $query);
      header("Location: comments.php");


}

  if(isset($_GET['delete'])){
    
    $delete_query_id = $_GET['delete'];
    
    $query = "DELETE FROM comments WHERE comment_id =  $delete_query_id ";
    $post_delete_query = mysqli_query($conn , $query);
      header("Location: comments.php");
    
}



?>


