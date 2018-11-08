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
public class Revision3 {
    public static void main(String[] args) {
    Scanner input = new Scanner (System.in);
        System.out.println("Input the first number: ");
            int in1 = input.nextInt();
        System.out.println("Input the second number: ");
            int in2 = input.nextInt();
        System.out.println("Input the third number: ");
            int in3 = input.nextInt();
            String st1 = ""+in1;
            String st2 = ""+in2;
            String st3 = ""+in3;
            if(st1.substring(st1.length()-1).equals(st2.substring(st2.length()-1)) 
                    || st2.substring(st3.length()-1).equals(st3.substring(st3.length()-1))){
                System.out.println("true");
            }else
                System.out.println("false");
    }
}
