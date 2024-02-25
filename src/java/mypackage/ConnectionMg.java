package mypackage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class ConnectionMg {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/onlinetdb";
    private static final String USER = "root";
    private static final String PASSWORD = "root";

    public boolean ExecuteInsertUpdateSelectOrDelete(String sql) {
        try (Connection conn = DriverManager.getConnection(DB_URL, USER, PASSWORD);
             Statement stmt = conn.createStatement()) {
            // Execute SQL command
            int rowsAffected = stmt.executeUpdate(sql);
            return rowsAffected > 0;
        } catch (SQLException e) {
            e.printStackTrace();
            return false; // Operation failed
        }
    }
    
    
}



