<%-- 
    Document   : processStudent
    Created on : 24 May 2024, 3:15:48 PM
    Author     : zira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java"%>
<%@page import="java.sql.*"%>
<%@page errorPage="errorStudent.jsp" %>
<jsp:useBean id="myStudent" class="lab6.com.student" scope="request"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <style>
            p{
                font-size: 120%;
                color: purple;
            }
        </style>
    </head>
    <body>
        <jsp:setProperty name="myStudent" property="*"/>
        
        <%
            int result;

            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("Step 1: MySQL driver loaded...!");

            
            String myURL = "jdbc:mysql://localhost:3306/csf3108";
            Connection myConnection = DriverManager.getConnection(myURL, "root", "admin");
            System.out.println("Step 2: Database is connected...!");
            
            System.out.println("Step 3: Prepared Statements created...!");
            
            String sInsertQry = "INSERT INTO Student(stuno,stuname, stuprogram) VALUES(?,?,?)";
            System.out.println("\tSQL Query: " +sInsertQry);
            
            PreparedStatement myPS = myConnection.prepareStatement(sInsertQry);
            
            System.out.println("Step 4: Perform insertion of record...!");
            myPS.setString(1, myStudent.getStuno());
            myPS.setString(2, myStudent.getStuname());
            myPS.setString(3, myStudent.getStuprogram());


            result = myPS.executeUpdate();
            if (result > 0) {
                out.println("\tRecord successfully added into Student table...!");
                out.print("<p>" + "Record with student no " + myStudent.getStuno()
                        + " successfully created..!" + "</p>");
                out.print("<p>" + "Details of record are; " + "</p>");
                out.print("<p>Student ID : " + myStudent.getStuno() + "</p>");
                out.print("<p>Name       : " + myStudent.getStuname() + "</p>");
                out.print("<p>Program    : " + myStudent.getStuprogram() + "</p>");
            }

            System.out.println("Step 5: Close database connection..!");
            myConnection.close();
            System.out.println(" ");
            System.out.println("Database connection is closed...!");
        %>
    </body>
</html>


