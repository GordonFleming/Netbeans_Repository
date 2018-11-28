/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gr11nov2017;

/**
 *
 * @author delia
 */
public class Gr11Nov2017 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       LeaderArray la = new LeaderArray();
        System.out.println(la);
        
        la.sort();
        System.out.println("After Sort\n" + la);
        
        la.vowels();
        System.out.println("After Vowels\n" + la);
        
        la.findLowRatings();
        System.out.println("After Low Ratings\n" + la); 
    }
    
}
