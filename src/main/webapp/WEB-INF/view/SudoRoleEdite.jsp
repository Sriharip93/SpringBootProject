


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
                        <h1> Edit Roll </h1>             
       		     </div>
                </nav>
            </header>
            <br>
            <div class="container col-md-5">
                <div class="card">
                    <div class="card-body">    
                            <form action="updateRole" method="post">  

							<fieldset class="form-group">
                            		<label>RoleId</label> <input type="text" value="<c:out value='${role.roleId}' />" class="form-control" name="RoleId" readonly >
                        	</fieldset>
         
                        	<fieldset class="form-group">
                            		<label>RoleName</label> <input type="text" value="<c:out value='${role.roleName}' />" class="form-control" name="roleName"  required="required">
                        	</fieldset>
                        	
                        	<button type="submit" class="btn btn-success">Save</button>
                        </form>
                    </div>
                </div>
            </div>
        </body>

</html>
