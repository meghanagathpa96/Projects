
<?php
$active='Account';
    include("includes/header.php");
?>
   
   
   <div id="content">
       <div class="container">
           <div class="col-md-12">
               
               <ul class="breadcrumb">
                   <li><a href="index.php">Home</a></li>
                   <li>register</li>
               </ul>
           </div>
           <div class="col-md-3">
              
               
    <?php 
    include("includes/sidebar.php");
    ?>
    
           </div>
           <div class="col-md-9">
                  <div class="box">
                      
                      <div class="box-header">
                          <center>
                              <h2>register here ! </h2>
                              
                          </center>
                          <form action="customer_register.php" method="post" enctype="multipart/form-data">
                              
                              <div class="form-group">
                                  <label> your Name</label>
                                  <input type="text" class="form-control" name="c_name" required>
                              </div>
                               <div class="form-group">
                                  <label>email</label>
                                  <input type="text" class="form-control" name="c_email" required>
                              </div>
                               <div class="form-group">
                                  <label>your password</label>
                                  <input type="password" class="form-control" name="c_pass" required>
                              </div>
                                
                              <div class="form-group">
                                  <label>your country</label>
                                  <input type="text" class="form-control" name="c_country" required>
                              </div>
                                 <div class="form-group">
                                  <label>your city</label>
                                  <input type="text" class="form-control" name="c_city" required>
                              </div>
                              <div class="form-group">
                                  <label>your contact</label>
                                  <input type="text" class="form-control" name="c_contact" required>
                              </div>
                              <div class="form-group">
                                  <label>your address</label>
                                  <input type="text" class="form-control" name="c_address" required>
                              </div>
                              <div class="form-group">
                                  <label>your picture</label>
                                  <input type="file" class="form-control form-height-custom" name="c_img" required>
                              </div>
                              <div class="text-center">
                                  <button type="submit" name="register" class="btn btn-primary">
                                      
                                  <i class="fa fa-user-md"></i>  Register
                                  </button>

                              </div>
                          </form>
                      </div>
                  </div>
              </div>
            </div>
   </div>
  <?php 
    include("includes/footer.php");
    ?> 
    <script src="js/jquery-331.min.js"></script>
    <script src="js/bootstrap-337.min.js"></script>
    
    
</body>
</html>


<?php 
if(isset($_POST['register'])){
$c_name = $_POST['c_name'];
$c_email = $_POST['c_email'];
$c_pass = $_POST['c_pass'];
$c_country = $_POST['c_country'];
$c_city = $_POST['c_city'];
$c_contact = $_POST['c_contact'];
$c_address = $_POST['c_address'];
    $c_img = $_FILES['c_img']['name'];

$c_img_tmp = $_FILES['c_img']['tmp_name'];
    $c_ip = getRealIpuser();
    move_uploaded_file($c_img_tmp,"customer/customer_images/$c_img");
    $insert_customer = "insert into customers (customer_name,customer_email,customer_pass,customer_country, customer_city,customer_contact,customer_address,customer_image,customer_ip ) values ('$c_name','$c_email','$c_pass','$c_country','$c_city','$c_contact','$c_address','$c_img','$c_ip')";
    $run_customer = mysqli_query($con,$insert_customer);
    $sel_cart = "select * from cart where ip_add='$c_ip'";
    $run_cart = mysqli_query($con,$sel_cart);
    $check_cart = mysqli_num_rows($run_cart);
    
    if($check_cart>0){
        $_SESSION['customer_email']= $c_email;
        
        echo"
        <script>alert('You have been Registered successfully')</script>";
        echo "<script>window.open('checkout.php','_self')</script>";
    }
    else{
         $_SESSION['customer_email']= $c_email;
        
        echo"
        <script>alert('You have been Registered successfully')</script>";
        echo "<script>window.open('index.php','_self')</script>";
        
    }
}

?>