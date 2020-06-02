/**
 *
 * @author Bauch
 */
public class Excepciones {
    public static void main(String args[]){
        int numerador=20, denominador=0;
        float division;
        System.out.println("Antes de la divisón");
        try{
            division=numerador/denominador;
        }catch(ArithmeticException e){
            System.out.println(e.getMessage());
            division=0;
        }
        System.out.println(division);
        System.out.println("Despues de la división");
    }
}
