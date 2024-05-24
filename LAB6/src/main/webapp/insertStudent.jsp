<%-- 
    Document   : insertStudent
    Created on : 24 May 2024, 3:13:40 PM
    Author     : zira
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <h1>Lab 6 - Task 3</h1>
        <form action="processStudent.jsp">
            <fieldset>
                <legend>Student Registration</legend>
                <br>
                <label for="stuno">Student No</label>
                <input type="text" id="stuno" name="stuno" placeholder='E.g: UKXXXXX'><br><br>

                <label for="stuname">Name</label>
                <input type="text" id="stuname" name="stuname" placeholder='Enter your name'><br><br>
s
                <label for="stuprogram">Program</label>
                <select name="stuprogram" id="stuprogram">
                    <option value="Bcs. Soft. Eng.">Bcs. Soft. Eng.</option>
                    <option value="Bcs. with IM">Bcs. with IM</option>
                    <option value="Bcs. Mobile Computing">Bcs. Mobile Computing</option>
                    <option value="Bcs. in Networking">Bcs. in Networking</option>
                </select><br><br>

                <p><input type="submit" id="btnSubmit" value="Submit"/>
                    <input type="reset" id="btnCancel" value="Cancel"/>
                </p>
            </fieldset>
        </form>
    </body>
</html>



