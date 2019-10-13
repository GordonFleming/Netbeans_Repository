/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Nov_2019;

/**
 *
 * @author flemi
 */
public class TourUI {
    public static void main(String[] args) {
        String file = "Routes.txt";
        TourManager tm = new TourManager(file);
        Route r1 = tm.getRouteWithCode('R',true);
        Route r2 = tm.getRouteWithCode('Y', false);
        System.out.println(r1);
        System.out.println(r2);
    }
}
