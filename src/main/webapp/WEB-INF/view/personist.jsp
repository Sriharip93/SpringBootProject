<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% %>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add new role  Management App</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    
</head>
<body>


    
  
        <h1 ><b>person list</b></h1>
    
      <c:forEach   items="${list}" var="person">

    ${person.name}
   ${person.address}
   ${person.gender}
   ${person.age}

<h4>---------------------**************--------------------------</h4>
       </c:forEach >
</body>
</html>
