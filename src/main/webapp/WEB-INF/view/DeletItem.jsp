


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
                        <h1>  Delete  Item</h1>             
       		     </div>
                </nav>
            </header>
            <br>
            <div class="container col-md-5">
                <div class="card">
                    <div class="card-body">    
                            <form action="/deleteItem" method="post"    onsubmit="return confirmDelete();>  
                                    
                                        
                                      <fieldset class="form-group">
                            		<label></label> <input type="hidden" value="<c:out value='${item.itemId}' />" class="form-control" name="itemId" readonly >
                        	</fieldset>
                                      <fieldset class="form-group">
                            		<label>Item Name</label> <input type="text" value="<c:out value='${item.itemName}' />" class="form-control" name="ItemName" required >
                        	</fieldset>
                               
                        	<button type="submit" class="btn btn-success">Delete</button>
                                        <a href="/backitemlist" class="btn btn-secondary">Cancel</a>
                        </form>
                    </div>
                </div>
            </div>

<script>
        function confirmDelete() {
            var confirmDelete = confirm("Are you sure you want to delete this entry?");
            if (confirmDelete) {
                return true; // Proceed with the deletion
            } else {
                window.location.href = "/backitemlist"; // Redirect to cancel page
                return false; // Cancel the deletion
            }
        }
    </script>
        </body>

</html>
