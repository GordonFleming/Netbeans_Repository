/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LV_Nov;

/**
 *
 * @author gordonfleming
 */
public class LeaderUI {
    public static void main(String[] args) {
            LeaderArray leader = new LeaderArray();
            System.out.println(leader);
            leader.Sort();
            System.out.println("\nLeaders when sorted:\n");
            System.out.println(leader);
            leader.vowels();
            System.out.println("\nLeaders with their vowels removed:\n");
            System.out.println(leader);
            leader.findLowRatings();
            System.out.println("\nLeaders that remain: (example rating higher than 3)\n");
            System.out.println(leader);
    }   
}