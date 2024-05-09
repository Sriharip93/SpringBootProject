<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
    <title>sudo admin role Management App</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style>
       
        body {
       
       background-color: #D9AFD9;
background-image: linear-gradient(0deg, #D9AFD9 0%, #97D9E1 100%);
       
            /* Light gray background */
            padding-top: 20px;
            
           
        }

        .header {
            background-image: url('https://via.placeholder.com/150');
            background-size: cover;
            color: red; /* Text color */
            text-align: center; /* Center align text */
            padding: 20px 0; /* Adjust padding as needed */
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.6); /* Add shadow */
        }

        .header-content {
            /* Optionally, you can style the header content here */
        }

        .root {
            float: right;
            margin-left: 10px;
            color: blue;
            font-weight: bold;
        }
        #roll
        {
             float: right;
            margin-left: 10px;
           
           
        }
        

        .card {
            border: 1px solid #ced4da; /* Gray border */
            border-radius: 10px; /* Rounded corners */
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.6); /* Shadow */
        }

        .table th,
        .table td {
            padding: 12px;
            vertical-align: middle; /* Center content vertically */
        }

        .table th {
          background-color: #FFDEE9;
background-image: linear-gradient(0deg, #FFDEE9 0%, #B5FFFC 100%);
          
            /* Header Background Color */
            color: #567456;
            text-align: center; /* Center align header text */
        }

        .table tbody tr:nth-child(even) {
            background-color: #f2f2f2; /* Alternate Row Background Color */
        }

        .btn {
            margin-bottom: 10px; /* Add some space below buttons */
        }
    </style>
</head>

<body>

    <header class="header">
        <div class="header-content">
            <h1>Role Management App</h1>
        </div>
       
    </header>

    <div class="container">
        <h3 class="text-center">List of Role</h3>
        <hr>
        <div class="container text-left">
            <a href="<%=request.getContextPath()%>/newRole" class="btn btn-success">Add New RoleUser</a>
          
        </div>
        <br>
        <div class="card">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ROLE ID</th>
                        <th>ROLE NAME</th>
                        <th>ACTION</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="sudouser" items="${sudo}">
                        <tr>
                            <td><c:out value="${sudouser.roleId}" /></td>
                            <td><c:out value="${sudouser.roleName}" /></td>
                            
                            <td>
                                <a href="editRole?loginId=<c:out value='${sudouser.roleId}' />">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="deleteid?loginId=<c:out value='${sudouser.roleId}' />">Delete</a> &nbsp;&nbsp;&nbsp;
  
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>

</html>
