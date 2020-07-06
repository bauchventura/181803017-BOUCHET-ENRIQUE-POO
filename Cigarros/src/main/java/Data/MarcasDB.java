package Data;
import Config.*;
import java.sql.*;
import java.util.*;
/**
 *
 * @author Bauch
 */
public class MarcasDB {
    private final Conexion conexion = new Conexion();
    private PreparedStatement st;
    private ResultSet rs;
    private String listado = "SELECT * FROM marcas";
    
    public List<Marcas> listadoMarcas() throws SQLException{
        List<Marcas> marcas = new ArrayList<>();
        this.rs = this.conexion.getConexion().prepareStatement(listado).executeQuery();
        while(this.rs.next()){
            marcas.add(new Marcas(this.rs.getInt("id_marca"),this.rs.getString("nombre")));
        }
        return marcas;
    }
    
    public int insertarMarca(Marcas marca) throws SQLException{
        this.st = this.conexion.getConexion().prepareStatement("INSERT INTO `marcas` (`id_marca`, `nombre`) VALUES (NULL, ?)");
        this.st.setString(1, marca.getNombre());
        return this.st.executeUpdate();
    }
    
    public int eliminarMarca(Marcas marca) throws SQLException{
        this.st = this.conexion.getConexion().prepareStatement("DELETE FROM `marcas` WHERE `id_marca`=?");
        this.st.setInt(1, marca.getID());
        return this.st.executeUpdate();
    }
    
    public int modificarMarca(Marcas marca,String name) throws SQLException{
        this.st = this.conexion.getConexion().prepareStatement("UPDATE `marcas` SET `nombre`=? WHERE `id_marca`=?");
        this.st.setString(1, name);
        this.st.setInt(2, marca.getID());
        return this.st.executeUpdate();
    }
}
