<%-- 
    Document   : logout
    Created on : Dec 19, 2018, 10:25:20 AM
    Author     : gordonfleming
--%>
<html>

    <head>
        <title>Logout Page</title>
    </head>
    <body>

        <% session.invalidate(); %>
        <br><br>
        <br><br>
        <br><br>
        <br><br>
        <center><b>You are now logged out!</b></center>
        <br>
        <center><a href="login_form.jsp">Log in again</a></center>
        
    </body>
</html>
