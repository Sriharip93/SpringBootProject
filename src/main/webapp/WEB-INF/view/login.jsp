<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Form</title>
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
  
  <style type="text/css">
  
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: "Poppins", sans-serif;
  }

  body {
 
 background: #114357;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #F29492, #114357);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #F29492, #114357); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
 
   
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
   
  }

  .wrapper {
    width: 420px;
    
    border: 2px solid #ccc; /* Light gray border */
   /* Dark text color */
    border-radius: 12px;
    padding: 30px 40px;
    
 background-color: #8EC5FC;
background-image: linear-gradient(62deg, #8EC5FC 0%, #E0C3FC 100%);
;  /* fallback for old browsers */

    box-shadow: 0 1px 20px rgba(0, 0, 0, 0.4); /* Soft shadow */
    
    
    box-shadow: rgba(0, 0, 0, 0.3) 0px 19px 38px, rgba(0, 0, 0, 0.22) 0px 15px 12px;
  }

  .wrapper h1 {
    font-size: 36px;
    text-align: center;
    margin-bottom: 30px;
   /* Darker header text color */
  }

  .wrapper .input-box {
    position: relative;
    width: 100%;
    height: 50px;
    margin: 20px 0;
  }


.input-box i:active {
  text-shadow: none;
  color: var(--c);
  box-shadow: inset 0 0 9e9q #0005;
  transition: 0s;
}

.input-box i {
  font-weight: bold;
  font-size: 2rem;
  margin: 0;
  cursor: pointer;
  padding: .1em .3em;
}

  .input-box input {
    width: 100%;
    height: 100%;
    background: #f9f9f9; /* Light gray input background */
    border: none;
    outline: none;
    border: 2px solid #ddd; /* Light border */
    border-radius: 40px;
    font-size: 16px;
    color: #555;
    padding: 20px 45px 20px 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
  }

  .input-box input::placeholder {
    color: #999; /* Lighter placeholder text color */
  }

  .input-box i {
    position: absolute;
    right: 20px;
    top: 30%;
    transform: translate(-50%);
    font-size: 20px;
    color: #888; /* Light icon color */
  }

  .wrapper .remember-forgot {
    display: flex;
    justify-content: space-between;
    font-size: 14.5px;
    margin: -15px 0 15px;
  }

  .remember-forgot label input {
    accent-color: #333; /* Dark color for checkbox */
    margin-right: 3px;
  }

  .remember-forgot a {
    color: #555;
    text-decoration: none;
  }

  .remember-forgot a:hover {
    text-decoration: underline;
  }

  .wrapper .btn {
    width: 100%;
    height: 45px;
    background: #3498db;
    border: none;
    outline: none;
    border-radius: 40px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    cursor: pointer;
    font-size: 16px;
    color: #fff;
    font-weight: 600;
    transition: background-color 0.3s ease;
  }

  .wrapper .btn:hover {
    background-color: #2980b9;
  }

  .wrapper .register-link {
    font-size: 14.5px;
    text-align: center;
    margin: 20px 0 15px;
    color: #555; /* Darker text color for register link */
  }

  .register-link p a {
    color: #3498db;
    text-decoration: none;
    font-weight: 600;
  }

  .register-link p a:hover {
    text-decoration: underline;
  }
  
  .error-messages {
  color: #ff3333;
  font-size: 14px;
  margin-bottom: 10px;
}

.error-message {
  background-color: #ffdddd;
  padding: 10px;
  border-radius: 5px;
  margin-bottom: 5px;
}
  
  </style>
</head>
<script>
  function togglePassword() {
      var passwordField = document.querySelector('input[name="pass"]');
      if (passwordField.type === "password") {
          passwordField.type = "text";
      } else {
          passwordField.type = "password";
      }
  }
</script>

<body>
  <div class="wrapper">
    <form action="/save" method="post" onsubmit="return validateForm()">
      <h1>Login</h1>
      <div id="errorMessages" class="error-messages"></div> <!-- Error messages container -->
      <div class="input-box">
        <input type="text" placeholder="Username" name="adminId" required>
        <i class='bx bxs-user'></i>
      </div>
      <div class="input-box">
        <input type="password" placeholder="Password"  name="pass" required>
        <i class='bx bxs-lock-alt' ></i>
      </div>
      <div class="remember-forgot">
        <label>
          <input type="checkbox" id="showPassword" class="show-password" onclick="togglePassword()">
          Show Password
      </label>
        <a href="#">Forgot Password</a>
      </div>
      <button type="submit" class="btn">Login</button>
      <div class="register-link">
        <p>Don't have an account? <a href="#">Register</a></p>
      </div>
      
    </form>
  </div>
</body>

  
 <script>
  function togglePassword() {
    var passwordField = document.querySelector('input[name="pass"]');
    if (passwordField.type === "password") {
      passwordField.type = "text";
    } else {
      passwordField.type = "password";
    }
  }

  function validateForm() {
    var email = document.querySelector('input[name="adminId"]').value;
    var password = document.querySelector('input[name="pass"]').value;
    var errorMessages = document.getElementById('errorMessages');
    
    // Regular expression for email validation
    var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    errorMessages.innerHTML = ''; // Reset error messages

    if (!emailRegex.test(email)) {
      errorMessages.innerHTML += "<p class='error-message'>Please enter a valid email address</p>";
      setTimeout(function() {
        errorMessages.innerHTML = ''; // Clear error messages after 3 seconds
      }, 3000);
      return false;
    }

    if (password.length < 6) {
      errorMessages.innerHTML += "<p class='error-message'>Password must be at least 6 characters long</p>";
      setTimeout(function() {
        errorMessages.innerHTML = ''; // Clear error messages after 3 seconds
      }, 3000);
      return false;
    }

    return true;
  }
</script>
 
  
</body>
</html>
