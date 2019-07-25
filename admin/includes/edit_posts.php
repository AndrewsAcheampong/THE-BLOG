<?php

if(isset($_GET['p_id'])){
   
    $post_id = $_GET['p_id'];
    
    


      $query ="SELECT * FROM posts WHERE post_id = '{$post_id}' ";
      $post_query_edit = mysqli_query($conn , $query);

     while($row = mysqli_fetch_assoc($post_query_edit)){
         
  
     $post_author = $row['post_author'];
     $post_title = $row['post_title'];
     $post_category = $row['post_category_id'];
     $post_status = $row['post_status'];
     $post_image = $row['post_image'];
     $post_content = $row['post_content']; 
     $post_tags = $row['post_tags'];
     $post_comments = $row['post_comment_count'];
     $post_date = $row['post_date'];
     
     }

        }
//Query to update data in the post database

if(isset($_POST['update_post'])){
    
         $post_title = $_POST['post_title'];
         $post_author = $_POST['post_author'];
         $post_category_id = $_POST['post_category_id'];
         $post_status = $_POST['post_status'];
         $post_image = $_FILES['image']['name'];
         $post_image_temp = $_FILES['image']['tmp_name'];      
         $post_tags = $_POST['post_tags'];
         $post_content = $_POST['post_content'];
    
    
    //moving image file from it's temporal location to it's permanent location
    move_uploaded_file($post_image_temp , "../images/$post_image");
     
    
    //if the image folder is empty result in showing image using the code below
    if(empty($post_image)){
        
        $query = "SELECT * FROM posts WHERE  post_id = {$post_id} ";
        $select_image = mysqli_query($conn , $query);
        
        while($row = mysqli_fetch_assoc($select_image)){
            
            $post_image = $row['post_image'];
        }
    }

    
    //query to update the individual fields
    $query="UPDATE posts SET post_title = '{$post_title}' , post_category_id = {$post_category_id} , post_author = '{$post_author}' , post_status = '{$post_status}' , post_image = '{$post_image}' , post_tags = '{$post_tags}' , post_content = '{$post_content}' , post_date = now()  WHERE post_id = {$post_id} ";
    
    $post_update_query = mysqli_query($conn , $query);
    
  confirmQuery($post_update_query);
    
}

?>


<form action="" method="post" enctype="multipart/form-data">
    <div class="form-group">
          <label for="title">Post Title </label>
    <input type="text" value="<?php echo $post_title; ?>" class="form-control" name="post_title">
    </div>
    
     <div class="form-group">
      
         <select name="post_category_id" id="post_category">
         
         <?php
             
//query to select categories from the database and add it up to the category 
    $query = "SELECT * FROM categories ";
    $select_categories = mysqli_query($conn , $query);
             
    confirmQuery($select_categories);

    while($row = mysqli_fetch_assoc($select_categories)){
    $cat_id = $row['cat_id'];
    $cat_title = $row['cat_title'];
        
        
        echo "<option value='{$cat_id}'>{$cat_title}</option>";

    }
             ?>
      
         
         </select>
                    
    
    </div>
    
     <div class="form-group">
        <label for="author">Post Author </label>
         <input type="text" value="<?php echo  $post_author; ?>" class="form-control" name="post_author">
    </div>
    
    <div class="form-group">
        <label for="post_status">Post Status </label>
         <input type="text" value="<?php echo $post_status; ?>"  class="form-control" name="post_status">
    </div>
    
    <div class="form-group">
        <img src="../images/<?php echo $post_image; ?>" width="100px" style="margin-bottom:10px;">
         <input type="file"   name="image">
    </div>
     
    <div class="form-group">
        <label for="post_tags">Post Tags </label>
         <input type="text" value="<?php echo  $post_tags; ?>" class="form-control" name="post_tags">
    </div>
    
     <div class="form-group">
        <label for="post_content">Post Content </label>
             <textarea class="form-control" name="post_content" id="" cols="30" rows="10"> 
                    <?php echo $post_content; ?>
             </textarea> 
    </div>
    
    <div class="form-group">
        <input class="btn btn-primary" type="submit" name="update_post" value="Publish Post">
    </div>
    
                  

    
</form>




