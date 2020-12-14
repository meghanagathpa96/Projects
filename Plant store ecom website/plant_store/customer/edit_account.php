<h1 align="center" > Edit your account</h1>
<form action="" method="post" enctype="multipart/form-data">
    <div class="form-group">
        <label> Customer name :</label>
        <input type="text" name="c_name" class="form-control" required>
    </div>
    <div class="form-group">
        <label> Customer email :</label>
        <input type="text" name="c_email" class="form-control" required>
    </div>
    <div class="form-group">
        <label> Customer country :</label>
        <input type="text" name="c_country" class="form-control" required>
    </div>
    <div class="form-group">
        <label> Customer city :</label>
        <input type="text" name="c_city" class="form-control" required>
    </div>
    <div class="form-group">
        <label> Customer contact :</label>
        <input type="text" name="c_contact" class="form-control" required>
    </div>
    <div class="form-group">
        <label> Customer address :</label> 
        <input type="text" name="c_address" class="form-control" required>
    
    </div>
    <div class="form-group " >
        <label> Customer photo :</label>
        <input type="file" name="c_images" class="form-control form-height-customs" required>
        <img class="img-responsive" src="customer_images/" alt="Phpto to be insertd">
    </div>
    <div class="text-center">
        <button name="update" class="btn btn-primary">
           <i class="fa fa-user-md"></i> update now
            
        </button>
    </div>
</form>