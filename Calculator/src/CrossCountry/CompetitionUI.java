/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CrossCountry;

import java.io.FileNotFoundException;

/**
 *
 * @author gordonfleming
 */
public class CompetitionUI {
    public static void main(String[] args) throws FileNotFoundException {
        CompManager cm = new CompManager();
        cm.AddResults();
        System.out.println("\nResults Added:\n");
        System.out.println("\nAll Competitor Results:\n"+cm);
    }
}
