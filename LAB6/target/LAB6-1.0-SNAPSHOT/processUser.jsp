<%-- 
    Document   : processUser
    Created on : 24 May 2024, 8:21:41 PM
    Author     : zira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="myUser" class="lab6.com.User" scope="request"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" text="html; charset=UTF-8">
        <style>
            p {
                font-size: 100%;
                color: yellowgreen;
            }
        </style>
    </head>
    <body>
        <h1>Exercise - No 3</h1>
        <jsp:setProperty name="myUser" property="*"/>
        <%
            int result;
            Class.forName("com.mysql.jdbc.Driver");
            String myURL = "jdbc:mysql://localhost:3308/csf3107";
            Connection myConnection = DriverManager.getConnection(myURL, "root", "admin");
            String sInsertQry = "INSERT INTO userprofile(username,password,firstname,lastname) VALUES(?,?,?,?)";
            PreparedStatement myPS = myConnection.prepareStatement(sInsertQry);
            myPS.setString(1, myUser.getUsername());
            myPS.setString(2, myUser.getPassword());
            myPS.setString(3, myUser.getFirstname());
            myPS.setString(4, myUser.getLastname());
            result = myPS.executeUpdate();
            if (result > 0) {
                out.println("\tRecord successfully added into User table...!");
                out.print("<p>Record with username " + myUser.getUsername() + " successfully created..!</p>");
                out.print("<p>Details of record are; </p>");
                out.print("<p>Username: " + myUser.getUsername() + "</p>");
                out.print("<p>Password: " + myUser.getPassword() + "</p>");
                out.print("<p>First Name: " + myUser.getFirstname() + "</p>");
                out.print("<p>Last Name: " + myUser.getLastname() + "</p>");
            }
            myConnection.close();
        %>
    </body>
</html>
