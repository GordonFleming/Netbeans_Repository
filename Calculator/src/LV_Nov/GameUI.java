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
public class GameUI {
    public static void main(String[] args) {
        CardArray game = new CardArray();
        System.out.println("\nThe array is: \n");
        System.out.println(game);
        game.sort();
        System.out.println("After sort: \n");
        System.out.println(game);
        System.out.println(game.playGame());
    }   
}
