

<%-- 
    Document   : doLogin
    Created on : 24 May 2024, 8:22:12 PM
    Author     : zira
--%>

<%@page language="java" %>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" text="html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String user = request.getParameter("username");
            String pass = request.getParameter("password");
            String driver = "com.mysql.jdbc.Driver";
            String myURL = "jdbc:mysql://localhost:3308/";
            String database = "csf3107";
            String userid = "root";
            String password = "admin";
            try {
                Class.forName(driver);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            Connection connection = null;
            Statement statement = null;
            ResultSet resultSet = null;
        %>
        <!DOCTYPE html>
        <html>
            <body>
                <h1>Your profile</h1>
                <%                
                    try {
                        connection = DriverManager.getConnection(myURL + database, userid, password);
                        statement = connection.createStatement();
                        String sql = "SELECT * FROM userprofile WHERE username = '" + user + "' AND password = '" + pass + "'";
                        resultSet = statement.executeQuery(sql);
                        if (resultSet.next()) {
                %>
                <fieldset>
                    <legend>Profile</legend>
                    <p>Username: <%=resultSet.getString("username")%></p>
                    <p>First Name: <%=resultSet.getString("firstname")%></p>
                    <p>Last Name: <%=resultSet.getString("lastname")%></p>
                </fieldset>
                <%
                        } else {
                            out.println("Invalid username or password.");
                        }
                        connection.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </body>
        </html>
    </body>
</html>
