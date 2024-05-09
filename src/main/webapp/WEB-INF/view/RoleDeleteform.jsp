<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
    <title>sudo Admin Management Application</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa; /* Light gray background */
            padding-top: 20px;
        }

        header {
            margin-bottom: 20px;
        }

        header h1 {
            color: white;
            margin: 0;
            padding: 20px;
        }

        .card {
            border: 1px solid #ced4da; /* Gray border */
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1); /* Shadow */
        }

        .card-body {
            padding: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }
    </style>
    <script>
        function confirmDelete() {
            var confirmDelete = confirm("Are you sure you want to delete this entry?");
            if (confirmDelete) {
                return true; // Proceed with the deletion
            } else {
                window.location.href = "/hello"; // Redirect to cancel page
                return false; // Cancel the deletion
            }
        }
    </script>
</head>

<body>

    <header>
        <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
            <div>
                <h1> Delete Role </h1>
            </div>
        </nav>
    </header>

    <br>

    <div class="container col-md-5">
        <div class="card">
            <div class="card-body">

                <form action="delete2" method="post" onsubmit="return confirmDelete();">

                    <fieldset class="form-group">
                        <label>Id</label> <input type="text" value="<c:out value='${delete.roleId}' />"
                            class="form-control" name="Rollid" readonly>
                   

                    <fieldset class="form-group">
                        <label> User Name </label> <input type="text" value="<c:out value='${delete.roleName}' />"
                            class="form-control" name="Rollname" readonly>
                    </fieldset>


                    <button type="submit" class="btn btn-danger" name="action" value="delete">Delete</button>
                    <a href="/mm" class="btn btn-secondary">Cancel</a>

                </form>
            </div>
        </div>
    </div>
</body>

</html>
