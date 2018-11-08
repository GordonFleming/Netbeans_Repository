/*
 * Some code:
 * By Gordon Fleming
 */
package LV_Nov;

/**
 *
 * @author 24740
 */
public class Revision1 {
    public static void main(String[] args) {
        int start = 0;
        System.out.println("Divided by 3:");
        for(int i=1; i<100; i++){
            if(i % 3 == 0){
                System.out.print(i + ", ");
            }           
        }
        System.out.println("\n\nDivider by 5:");
        for(int i=1; i<100; i++){         
            if(i % 5 == 0){
                System.out.print(i + ", ");
            }
        }
        System.out.println("\n\nDivided by 3 & 5:");
        for(int i=1; i<100; i++){
            if(i % 3 == 0 && i % 5 == 0){
                System.out.print(i + ", ");
            }
        }
    }
}
