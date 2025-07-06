<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Dashboard</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-icons/1.8.1/font/bootstrap-icons.min.css" rel="stylesheet">
<link rel="stylesheet" href="style.css">




<style>
/* General Styling */
body {
  background-color: #f4f6f9;
  font-family: 'Arial', sans-serif;
  color: #333;
}
.container {
  margin-top: 20px;
}
.card {
  border: none;
  border-radius: 8px;
  overflow: hidden;
}
.card-header {
  font-size: 1.5rem;
  font-weight: 600;
  color: #495057;
  background-color: #f8f9fa;
  border-bottom: 2px solid #00c7b7;
}
.info-text {
  font-size: 0.95rem;
  color: #666;
  padding: 10px 15px;
  background-color: #e9f7f7;
  border-radius: 5px;
  border: 1px solid #cce7e7;
  margin-bottom: 20px;
}

/* Form Styling */
.form-group label {
  font-weight: 500;
  color: #495057;
}
.form-control-file {
  border: 1px solid #ced4da;
  padding: 7px;
  border-radius: 4px;
  background-color: #fff;
  transition: border-color 0.3s ease;
}
.form-control-file:hover {
  border-color: #00c7b7;
}
.btn-submit {
  background-color: #00c7b7;
  color: #fff;
  font-weight: bold;
  padding: 10px 30px;
  border-radius: 5px;
  border: none;
  transition: background-color 0.3s ease;
}
.btn-submit:hover {
  background-color: #00b2a5;
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

/* CSS for responsive images */
img {
max-width: 100%;
height: auto;
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
                  <!--<span class="title text-truncate">Upload KYC</span>-->
                </div>
                <div class="col-md-6 col-12 d-flex justify-content-md-end justify-content-start overflow-hidden">
                  <div class="breadcrumb text-nowrap text-truncate">
                    <!--<a href="./account.php" class="breadcrumb-link">ACCOUNT&nbsp;</a> / <span>&nbsp;UPLOAD KYC</span>-->
                  </div>
                </div>
              </div>
            </div>


<div class="container content-center">
<!-- Upload KYC Section -->

<div class="container">
<!-- Upload KYC Section -->
<div class="card shadow-sm">
  <div class="card-header">
    Nominee Details 
  </div>
  <div class="card-body">
<p class="info-text">
If you have a scanned copy of the registration form, ID proof, PAN card, upload it in a specific size and format (only .gif, .jpg, .jpeg, .png allowed, max size 300 KB).
</p>



<form action="NomineeDetails.php" method="POST" enctype="multipart/form-data" class="p-4 border rounded shadow-sm bg-light">
    <h2 class="text-center mb-4">KYC Form</h2>
    
    <div class="row mb-3">
        <div class="col-md-6">
           <label for="nomineeName" class="form-label">Nominee Name</label>
<input 
    type="text" 
    class="form-control" 
    name="nomineeName" 
    id="nomineeName" 
    value="<?= isset($existingData['nomineeName']) ? htmlspecialchars($existingData['nomineeName']) : ""; ?>" 
    placeholder="Enter nominee name" 
    required >
        </div>
        <div class="col-md-6">
            <label for="relationship" class="form-label">Relationship</label>
            <input type="text" class="form-control" name="relationship" id="relationship" value="<?= isset($existingData['relationship']) && !empty($existingData['relationship']) ? htmlspecialchars($existingData['relationship']) : ""; ?>" placeholder="Enter relationship" required>
        </div>
    </div>

    <div class="row mb-3">
        <div class="col-md-6">
            <label for="dob" class="form-label">Date of Birth</label>
            <input type="date" class="form-control" name="dob" id="dob" value="<?= htmlspecialchars($existingData['dob']); ?>" required>
        </div>
        <div class="col-md-6">
            <label for="percentage" class="form-label">Percentage</label>
            <input type="number" class="form-control" name="percentage" id="percentage" value="<?= htmlspecialchars($existingData['percentage']); ?>" placeholder="Enter percentage" required>
        </div>
    </div>

    <div class="row mb-3">
        <div class="col-md-6">
            <label for="aadharNumber" class="form-label">Aadhar Number</label>
            <input type="number" class="form-control" name="aadharNumber" id="aadharNumber" value="<?= htmlspecialchars($existingData['aadharNumber']); ?>"  required>
        </div>
        <div class="col-md-6">
            <label for="bankInfo" class="form-label">Bank Information</label>
            <input type="file" class="form-control" name="bankInfoFile" id="bankInfo" accept=".pdf,.jpg,.png" >
        </div>
    </div>

    <div class="row mb-3">
        <div class="col-md-6">
            <label for="panCard" class="form-label">PAN Card</label>
            <input type="file" class="form-control" name="panCardFile" id="panCard" accept=".pdf,.jpg,.png" >
        </div>
        <div class="col-md-6">
            <label for="aadharFront" class="form-label">Aadhar Card Front</label>
            <input type="file" class="form-control" name="aadharFrontFile" id="aadharFront" accept=".pdf,.jpg,.png" >
        </div>
    </div>

    <div class="row mb-3">
        <div class="col-md-6">
            <label for="aadharBack" class="form-label">Aadhar Card Back</label>
            <input type="file" class="form-control" name="aadharBackFile" id="aadharBack" accept=".pdf,.jpg,.png" >
        </div>
    </div>

    <div class="text-center">
       <button type="submit" class="btn btn-primary">
            Submit
        </button>
    </div>
</form>

</div>





            </table>
    </div>
</div>
</div>



<div class="container content-center">
<div class="card-header">
        Uploaded Documents List
      </div>
<div class="table-responsive">
    <table class="table table-bordered table-hover">
        <thead>
            <tr>
                <!--<th>Name</th>-->
                <th>Bank Info</th>
                <th>PAN</th>
                <th>Aadhar Front</th>
                <th>Aadhar Back</th>
                <th>Date</th>
            </tr>
        </thead>
        <tbody>
            
                    <tr>
                        <!-- Correcting file paths to include the 'uploads/1' directory -->
                        
                        <td><img src="uploads/<?= $row['user_id'] ?>/<?= basename($row['nombank_info']) ?>" alt="Bank Info" class="img-fluid" width="100"></td>
                        <td><img src="uploads/<?= $row['user_id'] ?>/<?= basename($row['nompan_card']) ?>" alt="PAN Card" class="img-fluid" width="100"></td>
                        <td><img src="uploads/<?= $row['user_id'] ?>/<?= basename($row['nomaadhar_front']) ?>" alt="Aadhar Front" class="img-fluid" width="100"></td>
                        <td><img src="uploads/<?= $row['user_id'] ?>/<?= basename($row['nomaadhar_back']) ?>" alt="Aadhar Back" class="img-fluid" width="100"></td>
                        <!-- Displaying the upload date -->
                        <td>
                         </td>
                    </tr>
                
                <!-- Display message if no documents are uploaded -->
                <tr>
                    <td colspan="5" class="text-center">No documents uploaded yet.</td>
                </tr>
            
        </tbody>
    </table>
</div>

</div>



</div>
      <!-- Footer -->
      <%@include file="footer.jsp" %>
     
      
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
