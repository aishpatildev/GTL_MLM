<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Responsive Collapsible Sidebar with Navbar</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <style>


/* General Styles */
body {
    background-color: #f3f6fa;
    font-family: Arial, sans-serif;
    color: #333;
}

/* Container and Form Header */
.container {
    max-width: 95%;
    background-color: #fff;
    padding: 2rem;
    border-radius: 8px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    
}

h2 {
    color: #004f74;
    font-weight: 700;
}

h5 {
    color: #0077a3;
    font-weight: 600;
    border-bottom: 2px solid #00c7c7;
    padding-bottom: 0.3rem;
    margin-top: 1.5rem;
}

/* Form Labels and Inputs */
.form-label {
    font-weight: 600;
    color: #555;
    font-size: 0.95rem;
}

input[type="text"],
input[type="date"],
input[type="email"],
input[type="number"],
select,
textarea {
    font-size: 0.9rem;
    color: #555;
    border-radius: 6px;
    border: 1px solid #d9dee4;
    padding: 0.6rem;
    transition: border-color 0.3s;
}

input[type="text"]:focus,
input[type="date"]:focus,
input[type="email"]:focus,
input[type="number"]:focus,
select:focus,
textarea:focus {
    border-color: #00a2a2;
    box-shadow: 0 0 0 0.2rem rgba(0, 194, 194, 0.2);
    outline: none;
}

textarea.form-control {
    resize: vertical;
    min-height: 60px;
}

/* Radio Buttons Styling */
input[type="radio"] {
    margin-right: 0.5rem;
}

label {
    margin-right: 1rem;
    font-size: 0.9rem;
    color: #666;
}

/* Button Styles */
.btn-primary {
    background-color: #00c7c7;
    border: none;
    padding: 0.6rem 1.5rem;
    font-weight: 600;
    border-radius: 6px;
    transition: background-color 0.3s;
}

.btn-primary:hover {
    background-color: #009999;
}

.btn-secondary {
    background-color: #e0e0e0;
    color: #333;
    border: none;
    padding: 0.6rem 1.5rem;
    font-weight: 600;
    border-radius: 6px;
    transition: background-color 0.3s;
}

.btn-secondary:hover {
    background-color: #c2c2c2;
}

/* Placeholder Color */
::placeholder {
    color: #b0b3b8;
}

/* Section Spacing */
.row {
    margin-bottom: 1.5rem;
}

.text-center {
    margin-top: 1.5rem;
}

/* Responsive Design Adjustments */
@media (max-width: 768px) {
    h2, h5 {
        text-align: center;
    }

    .container {
        padding: 1.5rem;
    }
}

.header {
  padding: 15px; /* optional padding for better alignment */
}

.header .breadcrumb,
.header .title {
  max-width: 100%; /* Ensure the text remains within container bounds */
  overflow: hidden; /* Prevent overflow */
  text-overflow: ellipsis; /* Adds ellipsis to overflowing text */
  white-space: nowrap; /* Prevents wrapping */
}

.row.flex-wrap {
  flex-wrap: wrap;
}

.profile-pic img {
    width: 100px;
    height: 100px;
    object-fit: cover; /* Ensures the image fits nicely within the circular frame */
}




    </style>
</head>
<body>
    <!-- Sidebar -->
    <div class="d-flex">
     <!--Navbar-->
       <%@include file="navbar.jsp" %>
        <div class="content content-wrapper">
            <!--Top Navbar-->
     <%@include file="topnavbar.jsp" %>
            <!--Main Content page-->
          <div class="my-2">
<div class="header">
  <div class="row d-flex flex-wrap align-items-center justify-content-between">
    <div class="col-md-6 col-12 d-flex justify-content-start">
      <!--<span class="title text-truncate">Edit Profile</span>-->
    </div>
    <div class="col-md-6 col-12 d-flex justify-content-md-end justify-content-start overflow-hidden">
      <div class="breadcrumb text-nowrap text-truncate">
        <!--<a href="./account.php" class="breadcrumb-link">ACCOUNT&nbsp;</a> / <span>&nbsp;EDIT PROFILE</span>-->
      </div>
    </div>
  </div>
</div>
         <div class="container p-4 content-center">
        <!-- Form Start -->
 <?php      
$query=mysqli_query($con,"select * from users where id='".$_SESSION['id']."'");
while($row=mysqli_fetch_array($query))
{
?>        
        <form role="form" method="post">
            <!-- Personal Details Section -->
            <h5 class="mb-3 text-center">Personal Details</h5>
            <div class="col-12 d-flex flex-column align-items-center mb-3">
        <div class="profile-pic">
            <!--<img id="profileImage" src="https://via.placeholder.com/100" alt="Profile Picture" class="img-thumbnail rounded-circle" style="width: 100px; height: 100px;">-->
        </div>
        <!--<input type="file" id="profileInput" accept="image/*" class="form-control-file mt-2" onchange="loadProfileImage(event)">-->
    </div>
            
            
            

            
            
            <div class="row mb-2">
                <div class="col-md-6">
                    <label class="form-label">Full Name</label>
                    <div class="d-flex">
                        <select class="form-select me-2" style="width: 80px !important;">
                            <option>Mr.</option>
                            <option>Ms.</option>
                            <option>Mrs.</option>
                        </select>
                                                        <input type="text"
                                                            class="form-control unicase-form-control text-input"
                                                            value="<?php echo $row['name'];?>" id="name" name="name"
                                                            required="required">

                                                        <input type="hidden"
                                                            class="form-control unicase-form-control text-input"
                                                            value="<?php $mysponsorid= $row['user_id'];?>" id="user_id"
                                                            name="user_id" required="required">
                    </div>
                </div>
                <div class="col-md-6">
                    <label class="form-label">Date of Birth</label>
                                                                            <input type="date"
                                                            class="form-control unicase-form-control text-input"
                                                            value="<?php echo $row['dob'];?>" id="name" name="dobname"
                                                            required="required">
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-md-6">
                    <label class="form-label">Gender</label>
                    <div>
                        <input type="text"
                                                            class="form-control unicase-form-control text-input"
                                                            value="<?php echo $row['gender'];?>" id="name" name="gendername"
                                                            required="required">
                    </div>
                </div>
                <div class="col-md-6">
                    <label class="form-label">Father's Name *</label>
                    <input type="text"
                    class="form-control unicase-form-control text-input"
                    id="fathername" name="fathername" value="<?php echo $row['fathername'];?>" >
                </div>
                
                
            </div>
            
             <div class="row mb-2">
               
                <div class="col-md-6">
                    <label class="form-label">Husband name </label>
                    <input type="text"
                    class="form-control unicase-form-control text-input"
                    id="fathername" name="husbandname" value="<?php echo $row['husbandname'];?>" >
                </div>
           
                
                <!--<div class="col-md-6">-->
                <!--    <label class="form-label">Nominee Name *</label>-->
                <!--    <input type="text"-->
                <!--    class="form-control unicase-form-control text-input"-->
                <!--    id="nomineename" name="nomineename" value="<?php // echo $row['nomineename'];?>" >-->
                <!--</div>-->
            </div>
            
            <div class="row mb-2">
               
              
                
                <!-- <div class="col-md-6">-->
                <!--    <label class="form-label">Relation *</label>-->
                <!--    <input type="text"-->
                <!--    class="form-control unicase-form-control text-input"-->
                <!--    id="relation" name="relation" value="<?php // echo $row['relation'];?>" >-->
                <!--</div>-->
                
                
                <!-- <div class="col-md-6">-->
                <!--    <label class="form-label">Nominee Percentage*</label>-->
                <!--    <input type="text"-->
                <!--    class="form-control unicase-form-control text-input"-->
                <!--    id="relation" name="nomineepercentage" value="<?php // echo $row['nomineepercentage'];?>" >-->
                <!--</div>-->
                
                
            </div>

            <!-- Contact Details Section -->
            <h5 class="mb-3 text-center">Contact Details</h5>
            <div class="row mb-2">
                <div class="col-md-6">
                    <label class="form-label">E-mail Address</label>
                   <input type="text"
                    class="form-control unicase-form-control text-input"
                    id="email" name="email" value="<?php echo $row['email'];?>"
                    readonly>
                </div>
                <div class="col-md-6">
                    <label class="form-label">Mobile No.</label>
                   <input type="text"
                    class="form-control unicase-form-control text-input"
                    id="contactno" name="contactno" value="<?php echo $row['contactno'];?>" >
                </div>
            </div>
                
            <div class="row mb-2">
                <div class="col-md-6">
                    <label class="form-label">Country</label>
                    <input type="text"
                    class="form-control unicase-form-control text-input"
                    id="nationality" name="nationality" value="<?php echo $row['nationality'];?>" >
                </div>
                <div class="col-md-6">
                    <label class="form-label">Address1</label>
                    <input type="text"
                    class="form-control unicase-form-control text-input"
                    id="address1" name="address1" value="<?php echo $row['address1'];?>" >
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-md-6">
                  <label class="form-label">Address2</label>
                    <input type="text"
                    class="form-control unicase-form-control text-input"
                    id="address2" name="address2" value="<?php echo $row['address2'];?>" >
                </div>
                <div class="col-md-6">
                     <label class="form-label">State</label>
                      <input type="text"
                    class="form-control unicase-form-control text-input"
                    id="state" name="state" value="<?php echo $row['state'];?>" >
                </div>
            </div>
            
            
            <div class="row mb-2">
                <div class="col-md-6">
                   <label class="form-label">City</label>
                      <input type="text"
                    class="form-control unicase-form-control text-input"
                    id="city" name="city" value="<?php echo $row['city'];?>" >
                   
                </div>
                <div class="col-md-6">
                    <label class="form-label">PIN Code</label>
                    <input type="text"
                    class="form-control unicase-form-control text-input"
                    id="pincode" name="pincode" value="<?php echo $row['pincode'];?>" >
                </div>
            </div>

            <!-- Bank Details Section -->
            <h5 class="mb-3 text-center">Bank Details</h5>
            <div class="row mb-2">
                <div class="col-md-6">
                    <label class="form-label">Bank Name</label>
                    <input type="text"
                    class="form-control unicase-form-control text-input"
                    id="bankname" name="bankname" value="<?php echo $row['bankname'];?>" >
                </div>
                <div class="col-md-6">
                    <label class="form-label">Acc. Holder Name</label>
                   <input type="text"
                    class="form-control unicase-form-control text-input"
                    id="accholdername" name="accholdername" value="<?php echo $row['accholdername'];?>" >
                </div>
            </div>
            <div class="row mb-2">    
                <div class="col-md-6 mt-4">
                    <label class="form-label">Account Type</label>
                    <div>
                        <!--<input type="radio" id="saving" name="accountType" value="Saving">-->
                        <!--<label for="saving">Saving</label>-->
                        <!--<input type="radio" id="current" name="accountType" value="Current">-->
                        <!--<label for="current">Current</label>-->
                         <input type="text"
                    class="form-control unicase-form-control text-input"
                    id="accounttype" name="accounttype" value="<?php echo $row['accounttype'];?>" >
                    </div>
                </div>
                <div class="col-md-6 mt-4">
                    <label class="form-label">Branch Address</label>
                     <input type="text"
                    class="form-control unicase-form-control text-input"
                    id="branchadd" name="branchadd" value="<?php echo $row['branchadd'];?>" >
                </div>
            </div>
            <div class="row mb-2">
                <div class="col-md-6">
                    <label class="form-label">Account No.</label>
                   <input type="text"
                    class="form-control unicase-form-control text-input"
                    id="accountno" name="accountno" value="<?php echo $row['accountno'];?>" >
                </div>
                <div class="col-md-6">
                    <label class="form-label">IFSC Code</label>
                    <input type="text"
                    class="form-control unicase-form-control text-input"
                    id="IFSCcode" name="IFSCcode" value="<?php echo $row['IFSCcode'];?>" >
                </div>
            </div>
            <div class="row mb-2">
                
                 <div class="col-md-6">
                    <label class="form-label">PAN No.</label>
                    <input type="text"
                    class="form-control unicase-form-control text-input"
                    id="PANno" name="PANno" value="<?php echo $row['PANno'];?>" >
                </div>
            </div>
          
          
            <!-- Form Action Buttons -->
            <div class="text-center">
                <button type="submit" name="update" class="btn btn-primary me-2">Update</button>
                <button type="reset" class="btn btn-secondary">Back</button>
            </div>
        </form>
        
          <?php } ?>
        
    </div>
        
    </div>


          <!-- Footer -->
          <?php include('footer.php');?> 
          
        </div>
    </div>

   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script>
    function loadProfileImage(event) {
    const profileImage = document.getElementById('profileImage');
    profileImage.src = URL.createObjectURL(event.target.files[0]);
}

 document.getElementById('sidebarCollapse').addEventListener('click', function () {
            const sidebar = document.getElementById('sidebar');
            sidebar.classList.toggle('collapsed');
            document.querySelector('.content').classList.toggle('collapsed');
        });

    </script>
</body>
</html>
