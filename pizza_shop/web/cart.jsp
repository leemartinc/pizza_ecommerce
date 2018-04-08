<%@ page import="cart.Cart" %>
<%@ page import="cart.Item" %><%--
  Created by IntelliJ IDEA.
  User: home
  Date: 4/6/2018
  Time: 7:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cart</title>
    <link href="style.css" rel="stylesheet" type="text/css"/>

</head>
<body>


<%
    if (session.getAttribute("username") != null) { %>
<div class="topnav">
    <a href="/user">logout</a>
    <a href="shop.jsp">Order</a>
</div>

<h1>${username}'s Cart</h1>
<%
    Cart cart = (Cart) session.getAttribute("cart");
    if (cart == null) {
        cart = new Cart();
    }
    for (Item item : cart.array) {

%>

<% String name = item.getName();
    Double price = item.getPrice();
    String url = "/CartServlet?action=remove&item=" + name;%>
<%=name%> pizza $<%=price%> <a href="<%=url%>">remove</a><br/>

<%
    }
    double total = cart.getTotal();
%> <br/>
Total = $<%=total%><br/>
<a href="/CartServlet?action=checkout">checkout</a>
<% } else { %>
access denied
<%}%>


</body>
</html>
