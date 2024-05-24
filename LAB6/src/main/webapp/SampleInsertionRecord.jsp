<%-- 
    Document   : SampleInsertionRecord
    Created on : 15 May 2024, 3:01:54 PM
    Author     : zira
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@ page import="java.io.*" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lab 6 - Task 1 - Sample Insertion records into MYSQL through JSP's page </h1>

        <%
            
            
                Class.forName("com.mysql.jdbc.Driver");
       
out.println("Step 1: MySQL driver loaded...!");
        %>

        <br>
        <%
            String myURL = "jdbc:mysql://localhost:3306/csf3108";
            Connection myConnection = DriverManager.getConnection(myURL, "root", "admin");
            out.println("Step 2: Database is connected...!");
        
            out.println("Step 3: Prepared Statement created...!");
            
String sInsertQry = "INSERT INTO firsttable VALUE(?)";
PreparedStatement myPS = myConnection.prepareStatement(sInsertQry);
        %>

        <br>
        <%
        out.println("Step 4: Perform insertion of record...!");
        String name = "Welcome to access MySQL database with JSP. ..!";
        myPS.setString(1,name);
     int result = myPS.executeUpdate();
            
if(result > 0) {
        %>
        <br>
        <%
        out.println("Step 5: Close database connection...!");
            
out.println(" ");
out.println("Database connection is closed...!");

out.print("<p>" + "The record: (" +name
+") is successfully created...!" + "</p>");

            }
myConnection.close();
        %>
    </body>
</html