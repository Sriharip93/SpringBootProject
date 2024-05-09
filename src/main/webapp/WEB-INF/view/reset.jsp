<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login Form | Dan Aleko</title>
  <link rel="stylesheet" href="styles.css">
  <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
  
  <style type="text/css">
  
  *{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;
}
body{
  display: flex;
  justify-content: center;
  align-items: center;
  min-height: 100vh;
  background: white;
  background-size: cover;
  background-position: center;
}
.wrapper{
  width: 420px;
  background: black;
  border: 2px solid rgba(255, 255, 255, .2);
  backdrop-filter: blur(9px);
  color: #fff;
  border-radius: 12px;
  padding: 30px 40px;
}
.wrapper h1{
  font-size: 36px;
  text-align: center;
}
.wrapper .input-box{
  position: relative;
  width: 100%;
  height: 50px;
  
  margin: 30px 0;
}
.input-box input{
  width: 100%;
  height: 100%;
  background: transparent;
  border: none;
  outline: none;
  border: 2px solid rgba(255, 255, 255, .2);
  border-radius: 40px;
  font-size: 16px;
  color: #fff;
  padding: 20px 45px 20px 20px;
}
.input-box input::placeholder{
  color: #fff;
}
.input-box i{
  position: absolute;
  right: 20px;
  top: 30%;
  transform: translate(-50%);
  font-size: 20px;

}
.wrapper .remember-forgot{
  display: flex;
  justify-content: space-between;
  font-size: 14.5px;
  margin: -15px 0 15px;
}
.remember-forgot label input{
  accent-color: #fff;
  margin-right: 3px;

}
.remember-forgot a{
  color: #fff;
  text-decoration: none;

}
.remember-forgot a:hover{
  text-decoration: underline;
}
.wrapper .btn{
  width: 100%;
  height: 45px;
  background: #fff;
  border: none;
  outline: none;
  border-radius: 40px;
  box-shadow: 0 0 10px rgba(0, 0, 0, .1);
  cursor: pointer;
  font-size: 16px;
  color: #333;
  font-weight: 600;
}
.wrapper .register-link{
  font-size: 14.5px;
  text-align: center;
  margin: 20px 0 15px;

}
.register-link p a{
  color: #fff;
  text-decoration: none;
  font-weight: 600;
}
.register-link p a:hover{
  text-decoration: underline;
}
  
  </style>
</head>
<body>
  <div class="wrapper">
    <form action="/update"  method="post">
      <h1>Password Reset</h1>
      
      <div class="input-box">
      	
        <input type="text" id="adminId" placeholder="Entrer AdminId" name="adminId"  required >
      </div>
      
      
      <div class="input-box">
      	
        <input type="password" id="oldPassword" placeholder="EntrerOld Password" name="oldPassword"  required >
      </div>
      <div class="input-box">
      
        <input type="password"  id="newPassword" placeholder="EntrerNew Password" name="newPassword"  required oninput="checkNewandOldPasswordsMatch()">
		 <span id="passwordMatchs" style="color: red;"></span><br><br>
      </div>
      
       <div class="input-box">
        <input type="password" id="retypePassword" placeholder="ReType Password"  name="retypePassword"  required  oninput="checkPasswordMatch()">
  		 <span id="passwordMatch" style="color: red;"></span><br><br>
      </div>

      <button type="submit" class="btn">Submit</button>
          </form>
    
    <script>
    function checkPasswordMatch() {
        var password = document.getElementById("newPassword").value;
        var confirmPassword = document.getElementById("retypePassword").value;
        var passwordMatchSpan = document.getElementById("passwordMatch");

        if (password !== confirmPassword) {
            passwordMatchSpan.textContent = "Passwords do not match";
        } else {
            passwordMatchSpan.textContent = "";
        }
    }
    
    function checkNewandOldPasswordsMatch() {
        var oldPassword = document.getElementById("oldPassword").value;
        var newPassword = document.getElementById("newPassword").value;
        var passwordMatchSpan = document.getElementById("passwordMatchs");
        if (oldPassword !== newPassword) {
            passwordMatchSpan.textContent = "";
        } else {
            passwordMatchSpan.textContent = "Don't match old and new passwords";
        }
    }
    
    </script>
    
    
  </div>
</body>
</html>