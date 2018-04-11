<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign up</title>
    <link href="style.css" rel="stylesheet" type="text/css"/>

</head>
<body>
<div class="topnav">
    <a href="/index.jsp">Welcome</a>
    <a href="/login.jsp">Login</a>

</div>
<br />

<span style="color:red"> ${message}</span>
    <form action="user" method="post">
        <input type="hidden" name = "action" value="register">
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