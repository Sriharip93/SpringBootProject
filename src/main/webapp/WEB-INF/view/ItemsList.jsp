<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
    <title>Inventory Management App</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
    <style>
      body {
    padding-top: 20px;
    font-family: Arial, sans-serif;
    background-image: url('https://img.freepik.com/premium-photo/vector-blank-leafy-blue-background_947814-48217.jpg?w=740');
    background-repeat: no-repeat; /* Choose from repeat, repeat-x, repeat-y, or no-repeat */
    background-position: center center; /* Adjust position as needed */
    background-size: cover; /* Adjust sizing as needed (cover, contain, or specific dimensions) */
    background-attachment: fixed; /* Choose between fixed or scroll */
}

        .header {
            background-image: url('https://via.placeholder.com/150');
            background-size: cover;
            color: #246759;
            text-align: center;
            padding: 20px 0;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.6);
        }

        .root .root-admin {
            color: red;
        }

        .root .name-value {
            font-weight: bold;
            font-size: 16px;
            color: green;
        }

        .root {
            float: right;
            padding-right: 10px;
        }

        #roll {
            float: right;
            margin-left: 10px;
          
        }

        .card {
            border: 1px solid #ced4da;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.6);
            margin-top: 20px;
        }

        .table th,
        .table td {
            padding: 12px;
            vertical-align: middle;
        }

        .table th {
            background-color: #FFDEE9;
            background-image: linear-gradient(0deg, #FFDEE9 0%, #B5FFFC 100%);
            color: #567456;
            text-align: center;
        }

        .table tbody tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .btn {
            margin-bottom: 10px;
        }

        /* Added styles for links */
        a {
            color: #007bff;
            text-decoration: none;
        }

        a:hover {
            color: #0056b3;
            text-decoration: underline;
        }
        
         #roll {
            float: right;
            margin-left: 10px;
          
        }
    </style>
</head>

<body>

    <header class="header">
        <div class="header-content">
            <h1>ItemsList</h1>
        </div>
    </header>



    <div class="container">
        
        <hr>
        <div class="container text-left">
            <a href="<%=request.getContextPath()%>/newItem" class="btn btn-success">Add New Item</a>
           <a  id="roll" href="<%=request.getContextPath()%>/inventorylist" class="btn btn-danger">back</a>
        </div>
        <br>
        <div class="card">
            <table class="table table-bordered     table table-hover">
                <thead>
                    <tr>

                        <th>Item Id</th>
                        <th>Item Name</th>
                        <th>Item Category Name</th>
                        <th>Item Description </th>
                       <th>Item Price </th>
                       <th>Item Old Price </th>
                        <th>Item Status </th>
                        <th>Action </th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="inv" items="${itemlis}">
                        <tr>
                              <td><c:out value="${inv.itemId}" /></td>
                              <td><c:out value="${inv.itemName}" /></td>
                            <td><c:out value="${inv.itemCategory}" /></td>
                            <td><c:out value="${inv.itemDescription}" /></td>
                            <td><c:out value="${inv.itemPrice}" /></td>
                           <td><c:out value="${inv.itemOldPrice}" /></td>
                            <td><c:out value="${inv.itemStatus}" /></td>
                            <td>
                                <a href="editItems?loginId=<c:out value='${inv.itemId}'   />">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="deleteItemform?loginId=<c:out value='${inv.itemId}'  />">Delete</a> &nbsp;&nbsp;&nbsp;
                                
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>

</html>
