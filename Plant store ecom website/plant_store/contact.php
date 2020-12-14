<?php
$active='Contact';
include("includes/header.php");
?>
   
   <div id="content">
       <div class="container">
           <div class="col-md-12">
               
               <ul class="breadcrumb">
                   <li><a href="index.php">Home</a></li>
                   <li>Contact us</li>
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
                              <h2>Feel free to contact us </h2>
                              <p class="text-muted">
                                  If you have any queations, feel free to contact us. our customer service work <strong>24*7</strong>
                              </p>
                          </center>
                          <form action="contact.php" method="post">
                              
                              <div class="form-group">
                                  <label>Name</label>
                                  <input type="text" class="form-control" name="name" required>
                              </div>
                               <div class="form-group">
                                  <label>email</label>
                                  <input type="text" class="form-control" name="email" required>
                              </div>
                               <div class="form-group">
                                  <label>subject</label>
                                  <input type="text" class="form-control" name="subject" required>
                              </div>
                               <div class="form-group">
                                  <label>Message</label>
                                  <textarea name="message" class="form-control"></textarea>
                              </div>
                              <div class="text-center">
                                  <button type="submit" class="btn btn-primary">
                                      
                                  <i class="fa fa-user-md"></i>  Send Message
                                  </button>

                              </div>
                          </form>
                          <?php 
                          if(isset($_POST['submit'])){
                              $sender_name = $_POST['name'];
                              $sender_email = $_POST['email'];
                              $sender_email = $_POST['subject'];
                             $sender_message = $_POST['message'];
                              $receiver_email ="plantstore@gmail.com";
                              mail($receiver_email, $sender_name, $sender_subject,$sender_message, $sender_email);
                              $email =$_POST['email'];
                              $subject = "Welcome to my website";
                              $msg ="Thanks for sending us message, we will get back to you ASAP.";
                              $from = "plantstore@gmail.com";
                              mail($email,$subject,$msg,$from);
                              echo"
                              <h2> Your message has been sent successfully</h2>
                              ";

                          }
                          ?>
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