<%-- 
    Document   : Login
    Created on : Dec 19, 2018, 3:32:21 PM
    Author     : gordonfleming
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <form action = "http://localhost:8080/SQLite_Connection_with_JSP/Auth.jsp">
            Email: <input type="text" name="txtEML"><br>
            Password <input type="password" name="txtPWD"><br>
            <input type="submit" value ="Login">
        </form>
    </body>
</html>
