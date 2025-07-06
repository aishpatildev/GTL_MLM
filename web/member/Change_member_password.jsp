
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
        body {
    background-color: #f8f9fa;
}

.container {
    max-width: 95%;
}

.breadcrumb {
    font-size: 0.9rem;
    color: #006666;
}

.breadcrumb-link {
    color: #006666;
    text-decoration: none;
}

.breadcrumb-link:hover {
    text-decoration: underline;
}

.card {
    background-color: #ffffff;
    border-radius: 8px;
    border: none;
}

.form-control {
    border-color: #d1d9e6;
}

.btn-primary {
    background-color: #00c7c7;
    border: none;
}

.btn-primary:hover {
    background-color: #009999;
}

.btn-secondary {
    background-color: #00c7c7;
    border: none;
}

.btn-secondary:hover {
    background-color: #009999;
}


.content-wrapper {
    flex: 1;
    display: flex;
    flex-direction: column;
}

.container {
    flex: 1;
}

footer {
    margin-top: auto;
    background-color: #f8f9fa; /* Adjust based on your theme */
    text-align: center;
    padding: 10px 0;
    border-top: 1px solid #ddd;
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

</style>
    <script type="text/javascript">
    function valid() {
        if (document.chngpwd.cpass.value == "") {
            alert("Current Password Filed is Empty !!");
            document.chngpwd.cpass.focus();
            return false;
        } else if (document.chngpwd.newpass.value == "") {
            alert("New Password Filed is Empty !!");
            document.chngpwd.newpass.focus();
            return false;
        } else if (document.chngpwd.cnfpass.value == "") {
            alert("Confirm Password Filed is Empty !!");
            document.chngpwd.cnfpass.focus();
            return false;
        } else if (document.chngpwd.newpass.value != document.chngpwd.cnfpass.value) {
            alert("Password and Confirm Password Field do not match  !!");
            document.chngpwd.cnfpass.focus();
            return false;
        }
        return true;
    }
    </script>
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
          <div class="container my-2">

<div class="header">
  <div class="row d-flex flex-wrap align-items-center justify-content-between">
    <div class="col-md-6 col-12 d-flex justify-content-start">
      <!--<span class="title text-truncate">Change Password</span>-->
    </div>
    <div class="col-md-6 col-12 d-flex justify-content-md-end justify-content-start overflow-hidden">
      <div class="breadcrumb text-nowrap text-truncate">
        <!--<a href="./account.php" class="breadcrumb-link">ACCOUNT&nbsp;</a> / <span>&nbsp;CHANGE PASSWOR</span>-->
      </div>
    </div>
  </div>
</div>



        <div class="card p-4 mt-4 shadow-sm">
             <form class="register-form " role="form" method="post" name="chngpwd"
                                            onSubmit="return valid();">
                                            <div class="form-group  position-relative">
                                                <label class="info-title" for="Current Password">Current
                                                    Password<span>*</span></label>
                                                <input type="password"
                                                    class="form-control unicase-form-control text-input" id="cpass"
                                                    name="cpass" required="required">
                                                     <i class="fas fa-eye mt-2" id="togglePassword" style="position: absolute; top: 50%; right: 15px; transform: translateY(-50%); cursor: pointer;"></i>
                                                    
                                                   
                                                </span>
                                            </div>



                                            <div class="form-group  position-relative mt-2">
                                                <label class="info-title" for="New Password">New Password
                                                    <span>*</span></label>
                                                <input type="password"
                                                    class="form-control unicase-form-control text-input" id="newpass"
                                                    name="newpass">
                                                     <i class="fas fa-eye mt-2" id="toggleCnfPassword" style="position: absolute; top: 50%; right: 15px; transform: translateY(-50%); cursor: pointer;"></i>
                                                   
                                                </span>
                                            </div>
                                            <div class="form-group  position-relative mt-2">
                                                <label class="info-title" for="Confirm Password">Confirm Password
                                                    <span>*</span></label>
                                                <input type="password"
                                                    class="form-control unicase-form-control text-input" id="cnfpass"
                                                    name="cnfpass" required="required">
                                                     <i class="fas fa-eye mt-2" id="toggleCnfPassword2" style="position: absolute; top: 50%; right: 15px; transform: translateY(-50%); cursor: pointer;"></i>
                                                    
                                                   
                                                </span>
                                            </div>
                                            <button type="submit" name="submit"
                                                class="btn-upper btn btn-primary checkout-page-button mt-3">Change </button>
                                        </form>
        </div>
    </div>


          <!-- Footer -->
           <%@include file="footer.jsp" %>
           
          
        </div>
    </div>

   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        // Sidebar toggle
        document.getElementById('sidebarCollapse').addEventListener('click', function () {
            const sidebar = document.getElementById('sidebar');
            sidebar.classList.toggle('collapsed');
            document.querySelector('.content').classList.toggle('collapsed');
        });
        
//         function submitForm() {
//     const oldPassword = document.getElementById("oldPassword").value;
//     const newPassword = document.getElementById("newPassword").value;
//     const confirmPassword = document.getElementById("confirmPassword").value;

//     if (newPassword !== confirmPassword) {
//         alert("New password and confirm password do not match!");
//         return;
//     }

//     // Mock submission (replace with real API call if needed)
//     alert("Password change submitted successfully!");
// }

    </script>
    
      <script type="text/javascript">
    function valid() {
        if (document.chngpwd.cpass.value == "") {
            alert("Current Password Filed is Empty !!");
            document.chngpwd.cpass.focus();
            return false;
        } else if (document.chngpwd.newpass.value == "") {
            alert("New Password Filed is Empty !!");
            document.chngpwd.newpass.focus();
            return false;
        } else if (document.chngpwd.cnfpass.value == "") {
            alert("Confirm Password Filed is Empty !!");
            document.chngpwd.cnfpass.focus();
            return false;
        } else if (document.chngpwd.newpass.value != document.chngpwd.cnfpass.value) {
            alert("Password and Confirm Password Field do not match  !!");
            document.chngpwd.cnfpass.focus();
            return false;
        }
        return true;
    }
    
    
     // Password Field Toggle
    document.getElementById('togglePassword').addEventListener('click', function() {
        const passwordInput = document.getElementById('cpass');
        const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
        passwordInput.setAttribute('type', type);

        // Toggle the icon
        this.classList.toggle('fa-eye-slash');
    });

    // Confirm Password Field Toggle
    document.getElementById('toggleCnfPassword').addEventListener('click', function() {
        const cnfPasswordInput = document.getElementById('newpass');
        const type = cnfPasswordInput.getAttribute('type') === 'password' ? 'text' : 'password';
        cnfPasswordInput.setAttribute('type', type);

        // Toggle the icon
        this.classList.toggle('fa-eye-slash');
    });
    
    // Confirm Password Field Toggle
    document.getElementById('toggleCnfPassword2').addEventListener('click', function() {
        const cnfPasswordInput = document.getElementById('cnfpass');
        const type = cnfPasswordInput.getAttribute('type') === 'password' ? 'text' : 'password';
        cnfPasswordInput.setAttribute('type', type);

        // Toggle the icon
        this.classList.toggle('fa-eye-slash');
    });
    
    
    </script>
</body>
</html>
