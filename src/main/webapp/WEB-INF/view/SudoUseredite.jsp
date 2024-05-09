


<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <html>
        <head>
            <title>SudoUser Application</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

        <body>

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" >
                    <div>
                        <h1> Edit SudoUser Details </h1>             
       		     </div>
                </nav>
            </header>
            <br>
            <div class="container col-md-5">
                <div class="card">
                    <div class="card-body">    
                            <form action="updateSudoUser" method="post">  

							<fieldset class="form-group">
                            		<label>UserId</label> <input type="text" value="<c:out value='${emp.userLoginId}' />" class="form-control" name="loginId" readonly >
                        	</fieldset>
         
         
                             
         
                         <fieldset class="form-group">
                            		<label>UserEmail </label> <input type="hidden" value="<c:out value='${emp.userPassword}' />" class="form-control" name="pass"  >
                        	</fieldset>
                        	
                        	<fieldset class="form-group">
                            		<label>userRoleName</label> <input type="text" value="<c:out value='${emp.userRoleName}' />" class="form-control" name="roleName"  readonly>
                        	</fieldset>
                        	
                        	<fieldset class="form-group">
                            		<label>UserName</label> <input type="text" value="<c:out value='${emp.userName}' />" class="form-control" name="userName" required="required">
                        	</fieldset>
                        	
                        	<fieldset class="form-group">
                            		<label>ContactNumber</label> <input type="text" value="<c:out value='${emp.userContactMobileNum}' />" class="form-control" name="mobileNumber" required="required">
                        	</fieldset>

							<fieldset class="form-group">
                            		<label>UserEmail </label> <input type="text" value="<c:out value='${emp.userContactEmailId}' />" class="form-control" name="email"  hide>
                        	</fieldset>
                      
                        		
                        	<button type="submit" class="btn btn-success">Save</button>
                        </form>
                    </div>
                </div>
            </div>
        </body>

</html>
