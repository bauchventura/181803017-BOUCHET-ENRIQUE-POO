package Data;
/**
 *
 * @author Bauch
 */
public class Cigarro {
    private int id_cigarros;
    private int id_filtro;
    private int id_marca;
    private float precio;
    private int cantidad;
    
    Cigarro(){}
    public Cigarro(int cigarro,int filtro, int marca,float money,int cant){
        this.id_cigarros = cigarro;
        this.id_filtro = filtro;
        this.id_marca = marca;
        this.precio = money;
        this.cantidad = cant;
    }
    
    public Cigarro(int filtro, int marca,float money,int cant){
        this.id_filtro = filtro;
        this.id_marca = marca;
        this.precio = money;
        this.cantidad = cant;
    }
    
    public int getID_Cigarro(){
        return this.id_cigarros;
    }
    public void setID_Cigarro(int cigarro){
        this.id_cigarros = cigarro;
    }
    
    public int getID_Filtro(){
        return this.id_filtro;
    }
    public void setID_Filtro(int filtro){
        this.id_filtro = filtro;
    }
    
    public int getID_Marca(){
        return this.id_marca;
    }
    public void setID_Marca(int  marca){
        this.id_marca = marca;
    }
    
    public int getCantidad(){
        return this.cantidad;
    }
    public void setCantidad(int cant){
        this.cantidad = cant;
    }
    
    public float getPrecio(){
        return this.precio;
    }
    public void setPrecio(float money){
        this.precio = money;
    }
}
