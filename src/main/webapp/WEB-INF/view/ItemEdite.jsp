<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>SudoUser Application</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
          crossorigin="anonymous">
    <link rel="stylesheet" href="/styles.css"> <!-- Link your custom CSS file from the static directory -->

    <style>
        body {
            background-image: linear-gradient(to right, #d7d2cc 0%, #304352 100%);
            background-size: cover;
            background-position: center;
        }

        h1 {
            text-align: center; /* Center the text */
            font-weight: bold; /* Make the text bold */
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.4); /* Add a shadow effect */
        }

        .header {
            text-align: center; /* Center the text */
            padding: 20px 0; /* Add padding for spacing */

            background-image: linear-gradient(to top, #d9afd9 0%, #97d9e1 100%);

            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); /* Add a shadow effect */
        }

        .container.col-md-5 {
            margin: auto; /* Center the container */
            padding: 2px; /* Add padding for spacing */
            background-image: linear-gradient(to top, #d9afd9 0%, #97d9e1 100%);

            box-shadow: rgba(50, 50, 93, 0.25) 0px 50px 100px -20px, rgba(0, 0, 0, 0.3) 0px 30px 60px -30px, rgba(10, 37, 64, 0.35) 0px -2px 6px 0px inset;
            background-color: #F88379; /* Set background color */
        }
    </style>
</head>

<body>

<header class="header">
    <nav>
        <div>
            <h1>Edit Item Category</h1>
        </div>
    </nav>
</header>
<br>
<div class="container col-md-5">
    <div class="card">
        <div class="card-body">
            <form action="updateItem" method="post">

                <fieldset class="form-group">
                    <label>Item_Category_Id</label> <input type="text" value="<c:out value='${role.itemCategoryId}' />"
                                                           class="form-control" name="ItemCategoryId" readonly>
                </fieldset>


                <fieldset class="form-group">
                    <label>Item Category</label> <input type="text" value="<c:out value='${role.itemCategory}' />"
                                                          class="form-control" name="itemCategory" required="required">
                </fieldset>

                <fieldset class="form-group">
                    <label>Item Category Short Code</label> <input type="text"
                                                                    value="<c:out value='${role.itemCategoryShortCode}' />"
                                                                    class="form-control" name="ItemCategoryShortCode"
                                                                    required="required">
                </fieldset>

                <fieldset class="form-group">
                    <label>Item Category Description</label> <input type="text"
                                                                     value="<c:out value='${role.itemCategoryDescription}' />"
                                                                     class="form-control" name="description"
                                                                     required="required">
                </fieldset>


                <button type="submit" class="btn btn-success">Save</button>
            </form>
        </div>
    </div>
</div>

<script src="/scripts.js"></script> <!-- Link your custom JavaScript file from the static directory -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script> <!-- Include jQuery library -->
</body>
</html>
