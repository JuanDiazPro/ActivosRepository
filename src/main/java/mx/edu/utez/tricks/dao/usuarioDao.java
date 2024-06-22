package mx.edu.utez.tricks.dao;

import mx.edu.utez.tricks.model.usuario;
import mx.edu.utez.tricks.utils.DatabaseConnectionManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class usuarioDao {
    // CRUD para usuario
    // Read para un usuario

    public usuario getOne(String nombre, String contra){
        //Crea una instancia vacía de la clase usuario para almacenar los datos del usuario encontrado.
        usuario usuario = new usuario();

        String query = "select * from usuarios where mail = ? and contrasena = ?;";
        try {
            //Intenta obtener una conexión a la base de datos usando DatabaseConnectionManager.getConnection().
            Connection con = DatabaseConnectionManager.getConnection();
            PreparedStatement ps = con.prepareStatement(query); // forma de evitar que inyecten query
            //Establece los parámetros de la consulta (nombre y contra) usando ps.setString().
            ps.setString(1,nombre);
            ps.setString(2,contra);
            //Ejecuta la consulta con executeQuery() y obtiene el resultado en un objeto ResultSet.
            ResultSet rs = ps.executeQuery();
            //Si rs.next() devuelve true, significa que se encontró un usuario con el nombre y la contraseña proporcionados:
            if (rs.next()){
                usuario.setNombre(rs.getString("mail"));
                usuario.setContra(rs.getString("contrasena"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return usuario;
    }
}
