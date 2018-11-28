/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gr11nov2017;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.Scanner;

/**
 *
 * @author delia
 */
public class LeaderArray {

    private Leader leadArr[] = new Leader[50];
    private int size = 0;

    public LeaderArray() {

        try {
            Scanner scFile = new Scanner(new FileReader("Leaders.txt"));

            while (scFile.hasNextLine()) {
                String line = scFile.nextLine();

                Scanner tokens = new Scanner(line).useDelimiter(",");

                String name = tokens.next();
                int s = tokens.nextInt();
                int g11 = tokens.nextInt();
                int g10 = tokens.nextInt();
                int c = tokens.nextInt();

                leadArr[size] = new Leader(name, s, g11, g10, c);

                size++;
            }

            scFile.close();
        } catch (FileNotFoundException ex) {
            System.out.println("File not found");
        }

    }

    public String toString() {
        String rString = "";
        for (int i = 0; i < size; i++) {
            rString += leadArr[i].toString() + "\n";
        }

        return rString;
    }

    public void sort() {
        for (int i = 0; i < size - 1; i++) {
            for (int j = i + 1; j < size; j++) {
                if (leadArr[i].getPoints() < leadArr[j].getPoints()) {
                    Leader temp = leadArr[i];
                    leadArr[i] = leadArr[j];
                    leadArr[j] = temp;
                }
            }

        }
    }

    public void vowels() {

        for (int i = 0; i < size; i++) {
            leadArr[i].removeVowels();
        }
    }

    public void delete(int pos) {        
        for (int j = pos; j < size - 1; j++) {
            leadArr[j] = leadArr[j + 1];
        }
        size--;       

    }

    public void findLowRatings() {
        int i = 0;
        while (i < size) {
            if (leadArr[i].lessThan1() == true) {
                delete(i);
            } else {
                i++;
            }
        }
    }

}
