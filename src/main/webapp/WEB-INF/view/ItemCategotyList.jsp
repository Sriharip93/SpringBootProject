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
            background-color: #D9AFD9;
            background-image: linear-gradient(0deg, #D9AFD9 0%, #97D9E1 100%);
            padding-top: 20px;
            font-family: Arial, sans-serif;
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
            <h1>Item Category</h1>
        </div>
    </header>



    <div class="container">
        
        <hr>
        <div class="container text-left">
            <a href="<%=request.getContextPath()%>/newInventoty" class="btn btn-success">Add Item</a>
           <a  id="roll" href="<%=request.getContextPath()%>/invertrymnt" class="btn btn-danger">back</a>
        </div>
        <br>
        <div class="card">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Item CategoryId</th>
                        <th>Item Category</th>
                        <th>Item Category Short Code </th>
                        <th>Item Category Description</th>
                        <th>Action </th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="inv" items="${inventory}">
                        <tr>
                            <td><c:out value="${inv.itemCategoryId}" /></td>
                            <td><c:out value="${inv.itemCategory}" /></td>
                            <td><c:out value="${inv.itemCategoryShortCode}" /></td>
                            <td><c:out value="${inv.itemCategoryDescription}" /></td>
                           
                            <td>
                                <a href="editItem?loginId=<c:out value='${inv.itemCategoryId}'   />">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="deleteItem?loginId=<c:out value='${inv.itemCategoryId}'  />">Delete</a> &nbsp;&nbsp;&nbsp;
                                
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>

</html>
