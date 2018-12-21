<%-- 
    Document   : Auth
    Created on : Dec 19, 2018, 3:45:35 PM
    Author     : gordonfleming
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Authenticate</title>
    </head>
    <body>
        <%
            String email, password;
            email = request.getParameter("txtEML");
            password = request.getParameter("txtPWD");
            Connection con = null;
            PreparedStatement stmt = null;
            try{
                Class.forName("org.sqlite.JDBC");
                con = DriverManager.getConnection("jdbc:sqlite:/Users/gordonfleming/UserDataDB.db");
                String statement = "select * from tblLogin where Email = '"+email+"' and Password = '"+password+"'";
                stmt = con.prepareStatement(statement);
                ResultSet rs = stmt.executeQuery();
                    if(rs.next()){
                        response.sendRedirect("http://localhost:8080/SQLite_Connection_with_JSP/welome.jsp");
                    }else
                        response.sendRedirect("http://localhost:8080/SQLite_Connection_with_JSP/error.jsp");
            }catch(SQLException ex){
                System.out.println("SQL Exception: "+ex.getMessage());
            }
            catch(Exception e){
                System.out.println("Exception: "+e.getMessage());
            }
            finally{
                try{
                    if(con!=null){
                        con.close();
                    }
                }catch(SQLException es){
                    System.out.println("SQL Exception is closing connection: "+es.getMessage());
                }   
            }
        %>
    </body>
</html>
