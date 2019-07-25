            <div class="col-md-4">
                
                <!-- Blog Search Well -->
                <div class="well">
                    <h4>Search Tag</h4>
                    <form action="search.php" method="post">  
                    <div class="input-group">
                        <input name="search" type="text" class="form-control" autocomplete="off">
                        <span class="input-group-btn">
                            <button name="submit" class="btn btn-default" type="submit">
                                <span class="glyphicon glyphicon-search"></span>
                        </button>
                        </span>
                    </div>
                        </form>
                        
                    <!-- /.input-group -->
                </div>
                
                
                
                  <!-- Login form -->
                <div class="well">
                    <h4>Login </h4>
                    <p style="color:red;">For Admins only</p>
                    
                    <form action="includes/login.php" method="POST">  
                    <div class="form-group">
                        <input name="username" type="text" class="form-control" placeholder="Enter Username" autocomplete="off">
                    </div>
                        
                    <div class="input-group">
                        <input name="password" type="password" class="form-control" placeholder="Enter Password">
                        <span class="input-group-btn">
                        <button class="btn btn-primary" name="login" type="submit" >
                            Login
                        </button>

                        </span>
                    </div>
                        
                        
                        </form>
                        
                    <!-- /.input-group -->
                </div>
                
                
                

                <!-- Blog Categories Well -->
                
                <?php 
                
                  $query = "SELECT * FROM categories";
                  $select_sidebar_categories = mysqli_query($conn , $query);
                ?>
                
                
                <div class="well">
                    <h4>Blog Categories</h4>
                    <div class="row">
                        <div class="col-lg-6">
                            <ul class="list-unstyled">
                                
                                <?php
                                
                                  while($row = mysqli_fetch_assoc($select_sidebar_categories)){
                                    $cat_title = $row['cat_title'];
                                    $cat_id = $row['cat_id'];
                        
                        echo "<li><a href='category.php?category=$cat_id'>{$cat_title}</a></li>";
                                  
                                  }
                                      
                                      ?>
                          
                        </div>
                 
                    </div>
                    <!-- /.row -->
                </div>

                <!-- Side Widget Well -->
               <?php include "widget.php"; ?>

            </div>