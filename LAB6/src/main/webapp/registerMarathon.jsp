<%-- 
    Document   : registerMarathon
    Created on : 24 May 2024, 3:18:08 PM
    Author     : zira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <h1>Lab 6 - Task 5</h1>
        <form action="processMarathon.jsp">
            <fieldset>
                <legend>Marathon Registration</legend>
                <br>
                <label for="icno">IC No</label>
                <input type="text" id="icno" name="icno" placeholder='E.g: 980212-11-4545' required><br><br>

                <label for="name">Name</label>
                <input type="text" id="name" name="name" placeholder='Enter your name' required><br><br>

                <label for="category">Category</label>
                <select name="category" id="category" required>
                    <option value="5 KM">5 KM</option>
                    <option value="7 KM">7 KM</option>
                    <option value="10 KM">10 KM</option>
                </select><br><br>

                <p>
                    <input type="submit" id="btnSubmit" value="Submit"/>
                    <input type="reset" id="btnCancel" value="Cancel"/>
                </p>
            </fieldset>
        </form>
    </body>
</html>
