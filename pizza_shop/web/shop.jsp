<%--
  Created by IntelliJ IDEA.
  User: home
  Date: 4/6/2018
  Time: 7:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Ordering page</title>
    <link href="style.css" rel="stylesheet" type="text/css"/>

</head>
<body>
<% if (session.getAttribute("username") != null) {
    String username = (String) session.getAttribute("username");%>

<div class="topnav">
    <a href="/user">logout</a>
    <a href="cart.jsp">Cart</a>
</div>

<br/>
<h1 style="color: green">${message}</h1>
<h1>Welcome ${username}</h1>
<h2>Select items you want to order below</h2>
<div>
    Cheese pizza $4.99
    <a href="/CartServlet?action=add&item=cheese&price=4.99">add</a><br/>

    Meat pizza $7.99
    <a href="/CartServlet?action=add&item=Meat&price=7.99">add</a><br/>

    pepperoni pizza $6.99
    <a href="/CartServlet?action=add&item=pepperoni&price=6.99">add</a><br/>

    vegetarian pizza $5.99
    <a href="/CartServlet?action=add&item=vegetarian&price=5.99">add</a><br/>
</div>

<% } else { %>
access denied

<%}%>

</form>

</body>
</html>
