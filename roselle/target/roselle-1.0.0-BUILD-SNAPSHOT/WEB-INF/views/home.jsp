<%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page session=false %>
<html lang="en">
  <head>
	<title>Home</title>
	
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<table class="table table-bordered">
    <thead>
        <tr class="center middle">
            <th>Name</th>
            <th>Row count</th>
        </tr>
    </thead>
    <tbody>
        <tr th:each="menu,rowStat : ${menus}">
            <td class="center middle" th:text="${menu.name}">John Woo</td>
            <td class="center middle" th:text="${menu.price}">1</td>
        </tr>
    </tbody>
</table>
</body>
</html>
