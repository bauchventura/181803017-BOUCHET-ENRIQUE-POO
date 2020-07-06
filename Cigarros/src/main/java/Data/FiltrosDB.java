package Data;
import Config.*;
import java.sql.*;
import java.util.*;
/**
 *
 * @author Bauch
 */
public class FiltrosDB {
    private final Conexion conexion = new Conexion();
    private PreparedStatement st;
    private ResultSet rs;
    private String listado = "SELECT * FROM filtros";
    
    public List<Filtros> listadoFiltros() throws SQLException{
        List<Filtros> filtros = new ArrayList<>();
        this.rs = this.conexion.getConexion().prepareStatement(listado).executeQuery();
        while(this.rs.next()){
            filtros.add(new Filtros(this.rs.getInt("id_filtro"),this.rs.getString("nombre")));
        }
        return filtros;
    }
    
    public int insertarFiltro(Filtros filtro) throws SQLException{
        this.st = this.conexion.getConexion().prepareStatement("INSERT INTO `filtros` (`id_filtro`, `nombre`) VALUES (NULL, ?)");
        this.st.setString(1, filtro.getNombre());
        return this.st.executeUpdate();
    }
    
    public int eliminarFiltro(Filtros filtro) throws SQLException{
        this.st = this.conexion.getConexion().prepareStatement("DELETE FROM `filtros` WHERE `id_filtro`=?");
        this.st.setInt(1, filtro.getID());
        return this.st.executeUpdate();
    }
    
    public int modificarFiltro(Filtros filtro,String name) throws SQLException{
        this.st = this.conexion.getConexion().prepareStatement("UPDATE `filtros` SET `nombre`=? WHERE `id_filtro`=?");
        this.st.setString(1, name);
        this.st.setInt(2, filtro.getID());
        return this.st.executeUpdate();
    }
}
