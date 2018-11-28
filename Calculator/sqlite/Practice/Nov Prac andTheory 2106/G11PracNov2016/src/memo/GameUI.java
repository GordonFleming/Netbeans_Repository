/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package memo;

/**
 *
 * @author delia
 */
public class GameUI {
     public static void main(String[] args) {
//4.1 [2]
         CardArray ca = new CardArray();
    
//4.2 [1]
         System.out.println("The array is");
         System.out.println(ca);         

//4.3 [1]        
         ca.sort();
         System.out.println("After sort");
         System.out.println(ca);

//4.4 [1]
         System.out.println(ca.playGame());
         
        
     }
}
