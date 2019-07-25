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
                        
                        <?php 
                        
                        //Adding pages based on condition
                        
                        if(isset($_GET['source'])){
                            
                            $source = $_GET['source'];
                            
                        }else{
                            
                        //Adding an else statement cos $source is an undefined variable.
                            
                            $source = "";
                            
                        }
                        
                        //including post_table using switch statement
                        
                        switch($source){
                    
                            case 'add_post':
                                include "includes/add_posts.php";
                                break;
                                
                            case 'edit_post':
                               include "includes/edit_posts.php";
                                break;
                                
                            default:
                                include "includes/view_all_posts.php";
                                break;
                         
                        }
                        
                        
                        ?>
                        
                       
    
                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->



<?php include "includes/Admin_footer.php"; ?>
