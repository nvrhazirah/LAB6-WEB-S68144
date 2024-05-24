/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab6.com;

/**
 *
 * @author zira
 */


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Database {
    private static Connection myConnection = null;
    private static final String myURL = "jdbc:mysql://localhost:3306/csf3108";

    public static Connection getConnection() throws ClassNotFoundException, SQLException {
        if (myConnection == null) {
            Class.forName("com.mysql.jdbc.Driver");
            myConnection = DriverManager.getConnection(myURL, "root", "admin");
        }
        return myConnection;
    }

    public static void closeConnection() {
        if (myConnection != null) {
            try {
                myConnection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
