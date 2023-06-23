/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package proyectoSemillero.ventanas;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Usuario
 */
public class Conexion {

        public static Connection getConnection() {
            String url = "jdbc:postgresql://localhost:5432/BD_semillero";
            String usuario = "postgres";
            String contraseña = "Plenaria.2021";
            Connection conexion = null;    
            try {
                conexion = DriverManager.getConnection(url, usuario, contraseña);
                // Aquí puedes realizar operaciones en la base de datos utilizando la conexión establecida
                // Por ejemplo, ejecutar consultas SQL, insertar registros, etc.
                conexion.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            return conexion;
        }
        public static void crear_semillero(Connection conexion,String idsemro, String nomsemro, String sedesemro, String correosemro, String coordinador_idcoord){
            
            String insertQuery = "INSERT INTO semillero (idsemro, nomsemro, sedesemro, correosemro, coordinador_idcoord) VALUES (?, ?, ?, ?; ?)";
            //PreparedStatement statement = conexion.prepareStatement(insertQuery);
       
        }
}

