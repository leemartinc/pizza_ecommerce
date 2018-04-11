<%@ page import="java.sql.ResultSet" %>
<%@ page import="Inventory.InventoryItem" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="Inventory.OrderHistory" %><%--
  Created by IntelliJ IDEA.
  User: home
  Date: 4/7/2018
  Time: 4:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin Management</title>
    <link href="style.css" rel="stylesheet" type="text/css"/>

</head>
<body>
<%
    String username = (String) session.getAttribute("username");
    if (username.equals("admin")) { %>
<div class="topnav">
    <a href="/user">logout</a>
</div>
<br/>
<h1>Admin Management</h1>

<br/>

<h2>Inventory</h2>
<%

    ArrayList<InventoryItem> rs = (ArrayList<InventoryItem>) session.getAttribute("result");
    for (InventoryItem a : rs) {
        String item = a.getItem();
        int quantity = a.getQuantity();
%>
<%=item%> pizza, Quantity: <%=quantity%>
<form action="admin" method="get">
    New Quantity:
    <input type="hidden" name="action" value="update"/>
    <input type="hidden" name="item" value="<%=item%>"/>
    <input type="text" name="amount"/>
    <button type="submit">Update</button>

</form>
<br/>


<%
    }

%>
<h2>Order History</h2>
<%
    ArrayList<OrderHistory> rs2 = (ArrayList<OrderHistory>) session.getAttribute("result2");
    for (OrderHistory b : rs2) {
        String user = b.getUser();
        String hist = b.getOrder();

%>
Order by <%=user%>
<br />
<%=hist%>
<br />
<br />

<%
    }
%>

<br/>


<%} else { %>
Access denied
<%}%>
</body>
</html>
