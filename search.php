<?php include "includes/header.php"; ?>

    <!-- Navigation -->
   <?php include "includes/nav.php"; ?>

    <!-- Page Content -->
    <div class="container">

        <div class="row">

            <!-- Blog Entries Column -->
            <div class="col-md-8">
                
                <?php
                
                //making a custom search
                
                if(isset($_POST['submit'])){
                    
                   $search = $_POST['search'];
                    
            //writing a query to compare search keywords with data in the db 
                    $query = "SELECT * FROM posts WHERE post_tags LIKE '%$search%'";
                    $search_posts = mysqli_query($conn , $query);
                    
                    if(!$search_posts){
                        
                        die("QUERY FAILED" . mysqli_error($conn));
                        
                    }
                    
                    $count = mysqli_num_rows($search_posts);
                    
                    if($count == 0){
                        
                        echo "<h1 style='color:red;'>No Result!!</h1>";
                        
                    }else{
                    
                    while($row = mysqli_fetch_assoc($search_posts)){
                        $post_title = $row['post_title'];
                        $post_author = $row['post_author'];
                        $post_date = $row['post_date'];
                        $post_image = $row['post_image'];
                        $post_content = $row['post_content'];
                        
                        
                        
                        ?>
                        
    
                        
                        <h1 class="page-header">
                    Page Heading
                    <small>Secondary Text</small>
                </h1>

                <!-- First Blog Post -->
                <h2>
                    <a href="#"><?php echo "{$post_title}"; ?></a>
                </h2>
                <p class="lead">
                    by <a href="index.php"><?php echo "{$post_author}"; ?></a>
                </p>
                <p><span class="glyphicon glyphicon-time"></span><?php echo "{$post_date}"; ?></p>
                <hr>
                <img class="img-responsive" src="images/<?php echo $post_image; ?>" alt="">
                <hr>
                <p><?php echo "{$post_content}"; ?></p>
                <a class="btn btn-primary" href="#">Read More <span class="glyphicon glyphicon-chevron-right"></span></a>

                <hr>
                
                
               
                     
             <?php } 
     
                        
                    }
                
                
                }
                
                
                ?>
                
 
            </div>

            <!-- Blog Sidebar Widgets Column -->
            <?php include "includes/sidebar.php"; ?>


        </div>
        <!-- /.row -->

        <hr>

       <?php include "includes/footer.php"; ?>