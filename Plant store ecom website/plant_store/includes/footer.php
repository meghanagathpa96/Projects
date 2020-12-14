<div id="footer">
    <div class="container">
        <div class="row">
            <div class="col-sm-6 col-md-3">
                <h4>pages</h4>
                   <ul>
                    <li><a href="cart.php">Shopping cart</a></li>
                    <li><a href="contact.php">Shop</a></li>
                    <li><a href="shop.php">Contact us</a></li>
                    <li><a href="customer/my_account.php">My account</a></li>
                </ul>
                <hr>
                <h4> User Section</h4>
                <ul>
                       <?php 
                           if(!isset($_SESSION['customer_email'])){
                               
                               echo"<a href='checkout.php'> Login </a>";
                               
                           }else{
                               
                             echo"<a href='my_account.php?my_orders'>My Account </a>";
   
                           }
                  
                           ?>    
                            <li> 
                            <?php 
                           if(!isset($_SESSION['customer_email'])){
                               
                               echo"<a href='checkout.php'> Login </a>";
                               
                           }else{
                               
                             echo"<a href='my_account.php?edit_account'>edit Account </a>";
   
                           }
                  
                           ?>  </li>
                 </ul>
                      
        <hr class="hidden-md hidden-lg hidden-sm">              
                       
          </div>
          <div class="com-sm-6 col-md-3">
              <h4>top products categories</h4>
              <ul>
                  <?php
                  $get_p_cats = "select * from product_categories";
                  $run_p_cats = mysqli_query($con,$get_p_cats);
                  
                  while($row_p_cats=mysqli_fetch_array($run_p_cats)){
                      $p_cat_id = $row_p_cats['p_cat_id'];                                           $p_cat_title = $row_p_cats['p_cat_title'];
                      echo"
                      <li>
                      <a href='../shop.php?p_cat=$p_cat_id'>

                      $p_cat_title
                      </a>
                      </li>
                      
                      ";
 
                  }
                  ?>

              </ul>
              
              
                      <hr class="hidden-md hidden-lg ">              

          </div>
          <div class="col-sm-6 col-md-3">
              
              
              <h4>Find us : </h4>
              <p>
                  <strong>O2 plant inc.</strong>
                  <br/>University of South alabama
                  <br/>Shelby Hall
                  <br/>(251)123-4567
                  <br/>mg1926@jagmail.southalabama.edu
                  <br/><strong>Meghana Reddy Gathpa</strong>
              </p>
              <a href="../contact.php">Check our contact page</a>
                      <hr class="hidden-md hidden-lg ">              
        
                    
          </div>
          <div class="col-sm-6 col-md-3">
              <h4>Get the news</h4>
              <p class="text-muted">
                  hello welcome to the store this is just a check 
              </p>
              <form action="" method="post" name="">
                  <div class="input-group">
                      <input type="text" class="form-control" name="email">
                      <span class="input-group-btn">
                          <input type="submit" value="subscribe" class="btn btn-default">
                      </span>
                  </div>
              </form>
              <hr>
              <h4>Keep in touch</h4>
              <p class="social">
                  <a href="#" class="fa fa-facebook"></a>
                  <a href="#" class="fa fa-twitter"></a>
                  <a href="#" class="fa fa-instagram"></a>
              </p>
          </div>
        </div>
    </div>
</div>