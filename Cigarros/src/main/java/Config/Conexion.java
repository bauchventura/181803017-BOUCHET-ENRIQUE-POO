/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config;
import java.sql.*;
/**
 *
 * @author Marelyn
 */
public class Conexion {
    
    private Connection conexion;
    private ResultSet rs;
    private PreparedStatement stmt;
    private static final String localhost = "";
    private static final String usuario = "root";
    private static final String password = "";
    private static final String bd = "usuario";
    
    
    public Connection getConexion(){
        try {
                Class.forName("com.mysql.jdbc.Driver");
                conexion = DriverManager.getConnection("jdbc:mysql://localhost/cigarros", "root", "");
            } catch (Exception e) {
                System.out.println("Error: " + e.getMessage());
            } finally{
                return conexion;
            }
    }
}
