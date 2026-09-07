<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
<%
    String user = request.getParameter("username");
    if(user == null || user.isEmpty()) {
        user = "Guest";
    }
%>
    <h2>Welcome, <%= user %> 🎉</h2>
    <p>You have successfully logged in.</p>
</body>
</html>
