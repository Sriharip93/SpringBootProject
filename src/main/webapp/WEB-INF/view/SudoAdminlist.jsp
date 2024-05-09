<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
    <title>sudo admin Management App</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
    <style>
        body {
           
            padding-top: 20px;
            font-family: Arial, sans-serif;
         background-image: url('https://cdn.pixabay.com/photo/2017/01/08/20/25/abstract-1963884_1280.jpg');
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
    </style>
</head>

<body>

    <header class="header">
        <div class="header-content">
            <h1>Sudo Admin Management App</h1>
        </div>

        <p class="root">
            <span class="root-admin">Root Admin:</span>
            <span class="name-value">${Name}</span>
        </p>
    </header>



    <div class="container">
        <h3 class="text-center">List of Users</h3>
        <hr>
        <div class="container text-left">
            <a href="<%=request.getContextPath()%>/newuser" class="btn btn-success">Add New Admin User</a>
            <a  href="<%=request.getContextPath()%>/next" class="btn btn-success">Roll Management User</a>
            <a  id="roll" href="<%=request.getContextPath()%>/" class="btn btn-danger">LogOut</a>
        </div>
        <br>
        <div class="card">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>ROLE NAME</th>
                        <th>NAME</th>
                        <th>MOBILE NO</th>
                        <th>EMAIL ID</th>
                        <th>ACTION</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="sudouser" items="${sudo}">
                        <tr>
                            <td><c:out value="${sudouser.userLoginId}" /></td>
                            <td><c:out value="${sudouser.userRoleName}" /></td>
                            <td><c:out value="${sudouser.userName}" /></td>
                            <td><c:out value="${sudouser.userContactMobileNum}" /></td>
                            <td><c:out value="${sudouser.userContactEmailId}" /></td>
                            <td>
                                <a href="editSodoUser?loginId=<c:out value='${sudouser.userLoginId}' />">Edit</a> &nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="deleteadminid?loginId=<c:out value='${sudouser.userLoginId}' />">Delete</a> &nbsp;&nbsp;&nbsp;
                                <a href="changePassword?loginId=<c:out value='${sudouser.userLoginId}' />">Change Password</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</body>

</html>
