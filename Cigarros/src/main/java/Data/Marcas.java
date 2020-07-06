package Data;

/**
 *
 * @author Bauch
 */
public class Marcas {
    
    private int id_marca;
    private String nombre;
    
    Marcas(){}
    Marcas(int id,String name){
        this.id_marca = id;
        this.nombre = name;
    }
    
    public Marcas(String name){
        this.nombre = name;
    }
    
    public int getID(){
        return this.id_marca;
    }
    public void setID(int id){
        this.id_marca = id;
    }
    
    public String getNombre(){
        return this.nombre;
    }
    public void setNombre(String name){
        this.nombre = name;
    }
}
