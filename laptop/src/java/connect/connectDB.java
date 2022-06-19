/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author QuangHai144
 */
public class connectDB {
    public static Connection getConnect() throws SQLException {
        String url="jdbc:sqlserver://QUANGHAI\\QUANGHAI:1433;databaseName=laptop";
        String username="sa";
        String password="123456";
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            
            Connection conn=DriverManager.getConnection(url, username, password);
            return conn;
        } catch (ClassNotFoundException ex) {
            
        }catch(SQLException e){
            e.printStackTrace();
        }
        return null;
    }
}
