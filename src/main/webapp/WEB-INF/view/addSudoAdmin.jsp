<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>sudo Admin Management App</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
    
     @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@700&display=swap');
        body {
            background-image: linear-gradient(to right, #4facfe 0%, #00f2fe 100%);
        }

        h1 {
            font-family: 'Roboto', sans-serif; /* Applying custom font */
            font-weight: 700; /* Bold */
            text-align: center; /* Center align */
        }

#g{

 float-right;
}
        .custom-div {
            border-radius: 25px;
           background: #948E99;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #2E1487, #948E89);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #2E1417, #948E89); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
           
            margin-bottom: 20px;
            box-shadow: 0 3px 17px rgba(0,0,0,.7);
            padding: 20px;
        }

        .container {
            max-width: 700px;
            max-hight: 500px;
            margin: 0 auto;
        }

        .form-group {
            margin-bottom: 20px;
            
            color: white;
        }

        input[type="text"],
        input[type="password"] {
            border-radius: 5px;
            border: 1px solid #ced4da;
            padding: 10px;
            width: 100%;
        }

        .btn-success {
            width: 38%;
           
        }

        .dev {
            overflow: hidden;
        }
        
        .multicolor {
            background: linear-gradient(to right, #ff4e50, #f9d423, #ff4e50); /* Gradient background */
            -webkit-background-clip: text; /* Clip text to the background area */
            -webkit-text-fill-color: transparent; /* Hide original text color */
        }
    </style>
    <script>
        function validatePassword() {
            var password = document.getElementById("password").value;
            var rePwd = document.getElementById("rePwd").value;

            if (password !== rePwd) {
                alert("Passwords do not match!");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>

<header>
    <div class="container">
        
        <h1 class="multicolor"><b>Add Item Category</b></h1>
    </div>
</header>

<div class="container">
    <div class="">
        <div class="custom-div">
            <div class="card-body">
                <form action="AddUser" method="post" onsubmit="return validatePassword()">
                    <fieldset class="form-group">
                        <label>User Login Id</label> <input type="text" class="form-control" name="loginId" required="required">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>User Password</label> <input id="password" type="password" class="form-control" name="password" required="required">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>Retype Password</label> <input id="rePwd" type="password" class="form-control" name="rePwd" required="required">
                    </fieldset>
                    
                    
                    
   

                    <fieldset class="form-group">
                            		<label for="cars">Choose a Sudo Admin Role:</label>
    <select id="roleName" name="roleName">
        <c:forEach var="role" items="${rolesList}">
        	
            <option value="${role.roleName}">${role.roleName}</option>
            
        </c:forEach>
       
    </select><br><br>
    </fieldset>
    
    
    
                    <fieldset class="form-group">
                        <label>User Name</label> <input type="text" class="form-control" name="userName" required="required">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>User Contact Number</label>
                        <input type="text" class="form-control" name="mobileNumber" required="required">
                    </fieldset>

                    <fieldset class="form-group">
                        <label>User Email Id</label>
                        <input type="text" class="form-control" name="email" required="required">
                    </fieldset>

                    <button type="submit" class="btn btn-success">Save</button>
                     <button  id="g" type="clear" class="btn btn-success">cancel</button>
                </form>
            </div>
        </div>
    </div>
</div>

</body>
</html>
