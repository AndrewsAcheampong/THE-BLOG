<?php 


function confirmQuery($result){
    global $conn;
    
     if(!$result){
        
        die(" QUERY FAILED " . mysqli_error($conn));
        
    }
    
}


function insert_categories() {
    global $conn;
    
     if(isset($_POST['submit'])){
                                
$cat_title = $_POST['cat_title'];
                              
//validating to make sure form is not empty
if($cat_title == "" || empty($cat_title)){
 echo "<div style='color:white;background-color:red;width:200px;padding:10px;'> This field cannot be empty </div>";
                                    
}else{
                                    
$query="INSERT INTO categories(cat_title)";
$query.="VALUES('{$cat_title}')";
                                    
$cat_insert_query = mysqli_query($conn , $query);
                                    
if(!$cat_insert_query){
                                        
    die("Query Failed!!!" . mysqli_error($conn));
            }                      
      }        
   }
}


function GetAllCategories() {
    
    global $conn;
    
$query = "SELECT * FROM categories";
$select_sidebar_categories = mysqli_query($conn , $query);
                                   
while($row = mysqli_fetch_assoc($select_sidebar_categories)){
$cat_id = $row['cat_id'];
$cat_title = $row['cat_title'];
                            
echo "<tr>";
echo "<td>{$cat_id}</td>";
echo "<td>{$cat_title}</td>";
                            
//this is a get activity that outputs the index of the category to delete    
echo "<td><a href='categories.php?delete={$cat_id}'>Delete</a></td>";      
echo "<td><a href='categories.php?edit={$cat_id}'>Edit</a></td>";                   
echo "</tr>";
                              
  }               
}

function deleteData(){
    global $conn;
   
if(isset($_GET['delete'])){
                                
$the_cat_id = $_GET['delete'];
                                
$query="DELETE FROM categories WHERE cat_id = {$the_cat_id}";
$the_cat_query = mysqli_query($conn, $query);
header("Location: categories.php"); 
      }
           
}




?>