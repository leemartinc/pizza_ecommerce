<%--
  Created by IntelliJ IDEA.
  User: home
  Date: 4/6/2018
  Time: 7:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
    <link href="style.css" rel="stylesheet" type="text/css"/>

</head>
<body>

<div class="topnav">
    <a href="/index.jsp">Welcome</a>
    <a href="/signup.jsp">Sign Up</a>
</div>

<span style="color: red">${message}<br /></span>

<form action="user" method="post">
    <input type="hidden" name = "action" value="login">
    Username
    <input type="text" name = "username" />
    <br/>
    Password
    <input type="text" name="password" />
    <br />
    <button type="submit">submit</button>
</form>

</body>
</html>
