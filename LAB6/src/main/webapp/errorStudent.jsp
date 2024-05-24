<%-- 
    Document   : errorStudent
    Created on : 24 May 2024, 3:16:21 PM
    Author     : zira
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form id="errorFrm" action="insertStudent.jsp" method="post">
        <h1>Lab 9 -Task 1-Perform creating and retrieving records via JSP page when inserting record</h1>
        <P><jsp:expression> exception.getMessage() </jsp:expression></p>
        <br>
    </form>
    </body>
</html>
