<!--
   <div class="panel panel-default sidebar-menu">
    <div class="panel-heading">
        <h3 class="panel-title">product categories</h3>
    </div>
    <div class="panel-body">
        <ul class="nav nav-pills nav-stacked category-menu">
            <li><a href="#">Jacket </a></li>
            <li><a href="#">Accessories</a></li>
            <li><a href="#">Shop</a></li>
            <li><a href="#">Coats</a></li>
            <li><a href="#">t- shirts</a></li>
            
        </ul>
    </div>
</div>
<div class="panel panel-default sidebar-menu">
    <div class="panel-heading">
        <h3 class="panel-title">product categories</h3>
    </div>
    <div class="panel-body">
        <ul class="nav nav-pills nav-stacked category-menu">
            <li><a href="#">men </a></li>
            <li><a href="#">women</a></li>
            <li><a href="#">kids</a></li>
            <li><a href="#">other</a></li>            
        </ul>
    </div>
</div>
-->

<div class="panel panel-default sidebar-menu">
    <div class="panel-heading">
        <?php 
        $customer_session =$_SESSION['customer_email'];
        $get_customer = "select * from customers where customer_email='$customer_session'";
        $run_customer = mysqli_query($con,$get_customer);
        $row_customer = mysqli_fetch_array($run_customer);
        $customer_image = $row_customer['customer_image'];
        $customer_name = $row_customer['customer_name'];
        if(!isset($_SESSION['customer_email'])){
            
        }else{
            
            echo"
            <center>
            <img src='customer_images/$customer_image' class='img-responsive'>
            </center>
            <br/>
            <h3 class='panel_title' align='center'>
            Name : $customer_name
            </h3>
            ";
        }

        ?>
        
        
    </div>
    <div class="panel-body">
        <ul class="nav-pills nav-stacked-nav">
            
            <li class="<?php if(isset($_GET['my_orders'])){echo"active";}?>">
                <a href="my_account.php?my_orders">
                    <i class="fa fa-list"></i> Check My orders 
                    </a>
                    <br>
            </li>
            
            <li class="<?php if(isset($_GET['edit_account'])){echo"active";}?>">
                <a href="my_account.php?edit_account">
                    <i class="fa fa-pencil"></i> Edit My account details </a>
                    <br>
                
            </li>
            
            
             <li class="<?php if(isset($_GET['pay_offline'])){echo"active";}?>">
                <a href="my_account.php?pay_offline">
                    <i class="fa fa-bolt"></i>  Checkout and pay      
              </a>
                
            </li>
            
            
             <li class="<?php if(isset($_GET['change_pass'])){echo"active";}?>">
                <a href="my_account.php?change_pass">
                    <i class="fa fa-user"></i>  Change Password
              </a>
                
            </li>
            <li class="<?php if(isset($_GET['delete_account'])){echo"active";}?>">
                <a href="my_account.php?delete_account">
                    <i class="fa fa-trash-o"></i> Delete My Account 
                    </a>
                
            </li>
             <li >
                <a href="logout.php">
                    <i class="fa fa-sign-out"></i>  Log Out
              </a>
                
            </li>
            
        </ul>
    </div>
</div>