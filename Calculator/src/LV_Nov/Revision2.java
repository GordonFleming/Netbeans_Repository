/*
 * Some code:
 * By Gordon Fleming
 */
package LV_Nov;
import java.util.Scanner;
/**
 *
 * @author 24740
 */
public class Revision2 {
    public static void main(String[] args) {
        Scanner input = new Scanner (System.in);
        System.out.println("Input the first number: ");
        int in1 = input.nextInt();
        System.out.println("Input the second number: ");
        int in2 = input.nextInt();
        System.out.println("Input the third number: ");
        int in3 = input.nextInt();
        if(in1+in2==in3){
            System.out.println("true");
        }else
            System.out.println("false");
    }
}
