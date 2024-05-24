<%-- 
    Document   : insertAuthor
    Created on : 23 May 2024, 2:20:41 PM
    Author     : zira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 6 - Task 2</title>
    </head>
    <body>
        <h1>Lab 6 - Task 2- Perform creating and retrieving records via JSP page</h1>
        <form action="ProcessAuthor.jsp">
            <fieldset>
                <legend>Author Registration</legend>
                <table>
                    <tr>
                        <td>
                            <label for="no">Author No</label>
                        </td>
                        <td>
                            <input type="text" id="noT" name="authorno" placeholder="E.g:UKXXXXX">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="name">Name</label>
                        </td>
                        <td>
                            <input type="text" id="name1" name="name" placeholder="Enter your name">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="address">Address</label>
                        </td>
                        <td>
                            <input type="text" id="noT" name="address" placeholder="Enter your address">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="city">City</label>
                        </td>
                        <td>
                            <input type="text" id="city1" name="city" placeholder="Enter your city">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="State">State</label>
                        </td>
                        <td>
                            <input type="text" id="state2" name="state" placeholder="Enter your state">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="zip">Zip</label>
                        </td>
                        <td>
                            <input type="text" id="zip1" name="zip" placeholder="Enter your zip">
                        </td>
                    </tr>
                    <tr>
                        <td><br>
                            <input type="submit" name="btnSubmit" value="Submit"/>
                            <input type="reset" name="btnCancel" value="Cancel"/>
                        </td>
                    </tr>
                </table>
            </fieldset>
        </form>
    </body>
</html>
