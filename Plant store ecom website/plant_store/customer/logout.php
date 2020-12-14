 <?php 
   
   if(!isset($_SESSION['customer_email']))
   {
   echo" <a href='checkout.php'> Login </a>";
    }
    else{
   echo "<a href='logout.php'>LOg out </a>";
  }
                           
?>