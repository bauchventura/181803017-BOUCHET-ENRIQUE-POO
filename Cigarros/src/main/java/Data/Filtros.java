package Data;

/**
 *
 * @author Bauch
 */
public class Filtros {
    
    private int id_filtro;
    private String nombre;
    
    Filtros(){}
    Filtros(int filtro,String name){
        this.id_filtro = filtro;
        this.nombre = name;
    }
    public Filtros(String name){
        this.nombre = name;
    }
    
    public int getID(){
        return this.id_filtro;
    }
    public void setID(int id){
        this.id_filtro = id;
    }
    
    public String getNombre(){
        return this.nombre;
    }
    public void setNombre(String name){
        this.nombre = name;
    }
}
