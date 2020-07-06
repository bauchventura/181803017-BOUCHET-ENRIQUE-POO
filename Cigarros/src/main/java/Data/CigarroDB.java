package Data;
import Config.*;
import java.sql.*;
import java.util.*;
/**
 *
 * @author Bauch
 */
public class CigarroDB {
    private final Conexion conexion = new Conexion();
    private PreparedStatement st;
    private ResultSet rs;
    private String listado = "SELECT * FROM cigarro";
    
    public List<Cigarro> listadoCigarros() throws SQLException{
        List<Cigarro> cigarros = new ArrayList<>();
        this.rs = this.conexion.getConexion().prepareStatement(listado).executeQuery();
        while(this.rs.next()){
            cigarros.add(new Cigarro(this.rs.getInt("id_cigarros"),this.rs.getInt("id_filtro"),this.rs.getInt("id_marca"),this.rs.getFloat("precio"),this.rs.getInt("cantidad")));
        }
        return cigarros;
    }
    
    public int insertarCigarro(Cigarro cigarro) throws SQLException{
        this.st = this.conexion.getConexion().prepareStatement("INSERT INTO `cigarro` (`id_cigarros`, `id_filtro`, `id_marca`, `precio`, `cantidad`) VALUES (NULL, ?, ?, ?, ?)");
        this.st.setInt(1, cigarro.getID_Filtro());
        this.st.setInt(2, cigarro.getID_Marca());
        this.st.setFloat(3, cigarro.getPrecio());
        this.st.setInt(4, cigarro.getCantidad());
        return this.st.executeUpdate();
    }
    
    public int eliminarCigarro(Cigarro cigarro) throws SQLException{
        this.st = this.conexion.getConexion().prepareStatement("DELETE FROM `cigarro` WHERE `id_cigarros`=?");
        this.st.setInt(1, cigarro.getID_Cigarro());
        return this.st.executeUpdate();
    }
    
    public int modificarCigarro(Cigarro cigarro)throws SQLException{
        this.st = this.conexion.getConexion().prepareStatement("UPDATE `cigarro` SET `id_filtro`=?,`id_marca`=?,`precio`=?,`cantidad`=? WHERE `id_cigarros`=?");
        this.st.setInt(1, cigarro.getID_Filtro());
        this.st.setInt(2, cigarro.getID_Marca());
        this.st.setFloat(3, cigarro.getPrecio());
        this.st.setInt(4, cigarro.getCantidad());
        this.st.setInt(5, cigarro.getID_Cigarro());
        return this.st.executeUpdate();
    }
}
