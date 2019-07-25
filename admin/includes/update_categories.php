
<!-- form to read values in a database --> 
                            
                             <form action="" method="post">
                            <label for="cat-title"> Update Category </label>
                                 
                                 <?php
                                 
                                 if(isset($_GET['edit'])){
                                     
                                     $cat_id = $_GET['edit'];
                                     
                        $query = "SELECT * FROM categories WHERE cat_id = '{$cat_id}' ";
                        $select_cat_id = mysqli_query($conn , $query);
                                   
                        while($row = mysqli_fetch_assoc($select_cat_id)){
                        $cat_id = $row['cat_id'];
                        $cat_title = $row['cat_title'];
                            
                            ?>
                                 
                        <input value="<?php if(isset($cat_title)){echo $cat_title;} ?>" type="text" class="form-control" name="cat_title">
                                 
                                 <?php }} ?> 
                                 
                                 <!-- Update form --> 
                                 
                                 <?php
                                 
                                 //Updating data in the database
                                   if(isset($_POST['update_category'])){    
                                $the_cat_title = $_POST['cat_title'];    
                                $query="UPDATE categories SET cat_title = '{$the_cat_title}' WHERE cat_id = {$cat_id}";
                                $update_cat_query = mysqli_query($conn, $query);
                                       
                                       if(!$update_cat_query){
                                           
                                           die("QUERY FAILED!!" . mysqli_error($conn));
                                       }
                              
                                   }
                                 ?>
                                 <div class="form-group">
                                 
                                 </div>

                            <div class="form-group">    
                                 <input class="btn btn-primary" type="Submit" name="update_category" value="Update Category">
                            </div>    
                            
                        </form>
                            
                            
                            