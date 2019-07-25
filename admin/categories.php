<?php include "includes/Admin_header.php"; ?>


    <div id="wrapper">

        <!-- Navigation -->
  <?php include "includes/Admin_nav.php"; ?>
        

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                           Welcome to Admin
                            <small>Author</small>
                        </h1>
                        
                        <!-- Add Category form -->            
                        <div class="col-xs-6">
                        
                            <!-- calling insert_categories from functions.php -->
                            <?php insert_categories(); ?>
                            
                          <!-- Adding category to database -->  
                           
                      <form action="" method="post">
                            <label for="cat-title"> Add Category </label>
                           <div class="form-group">    
                                 <input type="text" class="form-control" name="cat_title">
                            </div>
                            
                            <div class="form-group">    
                                 <input class="btn btn-primary" type="Submit" name="submit" value="Add Category">
                            </div>    
                            
                        </form>
                            
                            <?php
                            
                            if(isset($_GET['edit'])){
                                
//We are getting the $_GET['edit'] that is sent from the edit link and has been set to the $cat_id variable that is found in the query of the Update_category php file
                                $cat_id = $_GET['edit'];
                                
                                include "includes/update_categories.php";
                            }
                    
                            ?>
                            
               
                        </div>
                        
                        <!-- retrieving data from the databases -->
                     
                        <div class="col-xs-6">
                            <table class="table table-bordered table-hover">
                               <thead>
                                   <tr>
                                       <th>Id</th>
                                       <th>Category Title</th>
                                   </tr>
                               </thead>
                               <tbody>
                                   
                                   
                    <!-- Getting all categories from the database to the page -->      
                                <?php
                            GetAllCategories(); 
                            ?>
                             
 <!-- A get code to accept the GET request and delete a data from the db based on id of the databasel -->
                        <?php
                        deleteData();
                        ?> 
     
                               </tbody>
                            </table>
                        
                        </div>
            
                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->



<?php include "includes/Admin_footer.php"; ?>
