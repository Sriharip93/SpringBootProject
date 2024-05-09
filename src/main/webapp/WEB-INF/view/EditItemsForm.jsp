


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
                            <form action="/updateItems" method="post">  
                                     <fieldset class="form-group">
                            		<label>Item Id</label> <input type="text" value="<c:out value='${item.itemId}' />" class="form-control" name="itemId" readonly >
                        	</fieldset>
                                      <fieldset class="form-group">
                            		<label>Item Name</label> <input type="text" value="<c:out value='${item.itemName}' />" class="form-control" name="ItemName" required >
                        	</fieldset>
                                   
                                       <fieldset class="form-group">
                            		<label for="cars">Choose a Item Category Name :</label>
                                        <select id="roleName" name="categoryName">
                                    <c:forEach var="cat" items="${itemlis}">
        	
                             <option value="${cat.itemCategory}">${cat.itemCategory}</option>

                        </c:forEach>

                         </select><br><br>
                         
                           </fieldset>

                            		<label>Item Description</label> <input type="text" value="<c:out value='${item.itemDescription}' />" class="form-control" name="Description" required >
                        	</fieldset><fieldset class="form-group">
                            		<label>Item Price </label> <input type="text" value="<c:out value='${item.itemPrice}' />" class="form-control" name="ItemPrice" required>
                        	</fieldset><fieldset class="form-group">
                            		<label>Item Old Price </label> <input type="text" value="<c:out value='${item.itemOldPrice}' />" class="form-control" name="ItemOldPrice" required >
                        	</fieldset>
                        	

                             <fieldset class="form-group">
                                       <label for="cars">Choose a Item Status :</label>
                                          <select id="roleName" name="Status">
                                          <option value="Active">Active</option>
	
                                          <option value="Inactive">Inactive</option>
       
    </select><br><br>
    </fieldset>
                               
                        	<button type="submit" class="btn btn-success">Save</button>
                        </form>
                    </div>
                </div>
            </div>
        </body>

</html>
