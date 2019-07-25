
<table class="table table-bordered table-stripped table-hover ">
                             <thead>
                                 <tr>
                                     <th>Id</th>
                                     <th>Author</th>
                                     <th>Title</th>
                                     <th>Category</th>
                                     <th>Status</th>
                                     <th>Images</th>
                                     <th>Tags</th>
                                     <th>Comments</th>
                                     <th>Date</th> 
                                 </tr>
                            </thead>  
                            <tbody>
                                

     <!-- Query to fetch data from the database -->
     <?php

      $query ="SELECT * FROM posts";
      $post_query = mysqli_query($conn , $query);

     if(!$post_query){

         die("Query Failed!!" . mysqli_error($conn));

     }else{

             while($row = mysqli_fetch_assoc($post_query)){
             $post_id = $row['post_id'];
             $post_author = $row['post_author'];
             $post_title = $row['post_title'];
             $post_category_id = $row['post_category_id'];
             $post_status = $row['post_status'];
             $post_image = $row['post_image'];
             $post_tags = $row['post_tags'];
             $post_comments = $row['post_comment_count'];
             $post_date = $row['post_date'];
 


            echo  "<tr>";

             echo "<td>{$post_id}</td>";
             echo "<td>{$post_author}</td>";
             echo "<td>{$post_title}</td>";
                 
                // query to select category title from the database to the post
              $query = "SELECT * FROM categories WHERE cat_id = '{$post_category_id}' ";
              $select_cat_id = mysqli_query($conn , $query);
                                   
              while($row = mysqli_fetch_assoc($select_cat_id)){
              $cat_id = $row['cat_id'];
              $cat_title = $row['cat_title'];
       
             echo "<td>{$cat_title}</td>";
        
                 
             echo "<td>{$post_status}</td>";
             echo "<td><img src='../images/{$post_image}' height='50px'; alt='image'></td>";
             echo "<td>{$post_tags}</td>";
             echo "<td>{$post_comments}</td>";
             echo "<td>{$post_date}</td>";
             echo "<td><a href='posts.php?source=edit_post&p_id={$post_id}'> Edit </a></td>";
             echo "<td><a href='posts.php?delete={$post_id}'> Delete </a></td>";
            

             echo "</tr>";

                      }
                  }
                       
     }
            ?>
                            </tbody>
                        </table>

<!-- Code that is deleting the posts -->

<?php

  if(isset($_GET['delete'])){
    
    $delete_query_id = $_GET['delete'];
    
    $query = "DELETE FROM posts WHERE post_id =  $delete_query_id ";
    $post_delete_query = mysqli_query($conn , $query);
    
    
}



?>


