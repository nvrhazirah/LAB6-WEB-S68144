<%-- 
    Document   : processMarathon
    Created on : 24 May 2024, 3:19:06 PM
    Author     : zira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="lab6.com.*"%>
<%@page import="java.sql.SQLException"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            p {
                font-size: 120%;
                color: blue;
            }
        </style>
    </head>
    <body>
        <jsp:useBean id="myMarathon" class="lab6.com.Marathon" scope="request"/>
        <jsp:setProperty name="myMarathon" property="*"/>
        <%
            try {
                MarathonDAO marathonDAO = new MarathonDAO();
                int result = marathonDAO.addDetails(myMarathon);

                if (result > 0) {
                    out.print("<p>Record with IC No " + myMarathon.getIcno() + " successfully created..!</p>");
                    out.print("<p>Details of record are;</p>");
                    out.print("<p>IC No    : " + myMarathon.getIcno() + "</p>");
                    out.print("<p>Name     : " + myMarathon.getName() + "</p>");
                    out.print("<p>Category : " + myMarathon.getCategory() + "</p>");
                } else {
                    out.print("<p>Failed to add record!</p>");
                }
            } catch (ClassNotFoundException | SQLException e) {
                e.printStackTrace();
                out.print("<p>Error: " + e.getMessage() + "</p>");
            } finally {
                Database.closeConnection();
            }
        %>
    </body>
</html>



