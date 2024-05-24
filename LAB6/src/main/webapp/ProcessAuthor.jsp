<%-- 
    Document   : insertAuthor
    Created on : 15 May 2024, 4:38:42 PM
    Author     : zira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="myAuthor" class="lab6.com.Author" scope="request"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            p{
                font-size: 100%;
                color: blue;
            }
        </style>
    </head>
    <body>
        <h1>Lab 6 - Task 2 - Perform creating and retrieving records via JSP page</h1>

        <jsp:setProperty name="myAuthor" property="*"/>

        <%
            int result;

            Class.forName("com.mysql.jdbc.Driver");

            String myURL = "jdbc:mysql://localhost:3306/csf3108";
            Connection myConnection = DriverManager.getConnection(myURL, "root", "admin");

            String sInsertQry = "INSERT INTO author(authorno, name, address, city, state, zip) VALUES(?,?,?,?,?,?)";

            PreparedStatement myPS = myConnection.prepareStatement(sInsertQry);

            myPS.setString(1, myAuthor.getAuthorno()); // Ensure this matches the class property
            myPS.setString(2, myAuthor.getName());
            myPS.setString(3, myAuthor.getAddress());
            myPS.setString(4, myAuthor.getCity());
            myPS.setString(5, myAuthor.getState());
            myPS.setString(6, myAuthor.getZip());

            result = myPS.executeUpdate();
            if (result > 0) {
                out.println("<p>Record successfully added into Author table...!</p>");
                out.print("<p>Record with author no " + myAuthor.getAuthorno() + " successfully created..!</p>");
                out.print("<p>Details of record are;</p>");
                out.print("<p>Name: " + myAuthor.getName() + "</p>");
                out.print("<p>Address: " + myAuthor.getAddress() + "</p>");
                out.print("<p>City: " + myAuthor.getCity() + "</p>");
                out.print("<p>State: " + myAuthor.getState() + "</p>");
                out.print("<p>Zip: " + myAuthor.getZip() + "</p>");
            }

            out.println("Step 5: Close database connection..!");
            myConnection.close();
           
            out.println("Database connection is closed...!");
        %>
    </body>
</html>
