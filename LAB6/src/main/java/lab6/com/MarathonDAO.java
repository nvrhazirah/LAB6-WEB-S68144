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
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class MarathonDAO {
    private Connection connection;

    public MarathonDAO() throws ClassNotFoundException, SQLException {
        connection = Database.getConnection();
    }

    public int addDetails(Marathon marathon) {
        int result = 0;
        String sql = "INSERT INTO marathon(icno, name, category) VALUES (?, ?, ?)";
        try (PreparedStatement preparedStatement = connection.prepareStatement(sql)) {
            preparedStatement.setString(1, marathon.getIcno());
            preparedStatement.setString(2, marathon.getName());
            preparedStatement.setString(3, marathon.getCategory());
            result = preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }
}
