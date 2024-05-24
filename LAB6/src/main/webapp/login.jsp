<%-- 
    Document   : login
    Created on : 24 May 2024, 8:21:55 PM
    Author     : zira
--%>


<!DOCTYPE html>
<html>
    <body>
        <h1>EXERCISE - NO 4</h1>
        <form action="doLogin.jsp">
            <fieldset>
                <legend>Login Form</legend>
                <br>
                <label for="username">Username</label>
                <input type="text" id="username" name="username" placeholder='Enter your username'><br><br>
                
                <label for="password">Password</label>
                <input type="password" id="password" name="password" placeholder='Enter your password'><br><br>

                <p><input type="submit" id="btnSubmit" value="Submit"/>
                    <input type="reset" id="btnCancel" value="Cancel"/>
                </p>
            </fieldset>
        </form>
    </body>
</html>
