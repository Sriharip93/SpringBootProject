<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>SudoUser Application</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
        /* Custom CSS for header */
        header {
            background-color: #343a40; /* Dark color for header */
            color: #fff; /* Text color for header */
            padding: 10px; /* Padding for header */
            box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1); /* Shadow for header */
        }
    </style>
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-md navbar-dark">
            <div>
                <h1>Delete Item Category</h1>
            </div>
        </nav>
    </header>
    <br>
    <div class="container col-md-5">
        <div class="card">
            <div class="card-body">
                <form id="deleteForm" action="/delete3" method="post" onsubmit="return confirmDelete();">
                    <fieldset class="form-group">
                        <label>Item_Category_Id</label> <input type="text" value="<c:out value='${role.itemCategoryId}' />" class="form-control" name="ItemCategoryId" readonly>
                    </fieldset>
                    <fieldset class="form-group">
                        <label>Item Category</label> <input type="text" value="<c:out value='${role.itemCategory}' />" class="form-control" name="itemCategory" readonly>
                    </fieldset>
                    <fieldset class="form-group">
                        <label>Item Category Short Code</label> <input type="text" value="<c:out value='${role.itemCategoryShortCode}' />" class="form-control" name="ItemCategoryShortCode" readonly>
                    </fieldset>
                    <fieldset class="form-group">
                        <label>Item Category Description</label> <input type="text" value="<c:out value='${role.itemCategoryDescription}' />" class="form-control" name="description" readonly>
                    </fieldset>
                    <button type="submit" class="btn btn-success">Delete</button>

                       <a href="/cc" class="btn btn-secondary">Cancel</a>
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
                window.location.href = "/cc"; // Redirect to cancel page
                return false; // Cancel the deletion
            }
        }
    </script>

</body>
</html>
