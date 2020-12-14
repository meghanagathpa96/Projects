<div class="box">
<?php
    $session_email = $_SESSION['customer_email'];
    $select_customer = "select * from customers where customer_email='$session_email'";
    $run_customer = mysqli_query($con,$select_customer);
    $row_customer = mysqli_fetch_array($run_customer);
    $customer_id=$row_customer['customer_id'];
    
    ?>
<h1 class="text-center">Payment options for you </h1>
   <p class="lead text-center">
       <a href="orders.php?c_id=<?php echo $customer_id ?>"></a>
   </p>
   <center>
       <p class="lead">
           
           <a href="order.php?c_id=<?php echo $customer_id ?>">
               PayPall Payment
               <img class="image-responsive" src="images/paypall_img.png" alt="img-paypall">
           </a>
       </p>
       
   </center>
    
</div>