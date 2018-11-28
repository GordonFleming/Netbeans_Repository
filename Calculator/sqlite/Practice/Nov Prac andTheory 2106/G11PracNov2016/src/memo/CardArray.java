/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package memo;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.Scanner;

/**
 *
 * @author delia
 */
public class CardArray {
//3.1 [4]
    private Card[] cArr = new Card[20];
    private int size = 0;

//3.2 [8]
    public CardArray() {
        try {
            Scanner scFile = new Scanner(new File("Character.txt"));
            String line, n, i;
            int h, m;
            int no;
            while (scFile.hasNext()) {
                line = scFile.nextLine();
                System.out.println(line);
                Scanner sc = new Scanner(line).useDelimiter("#");
                n = sc.next();
                h = sc.nextInt();
                m = sc.nextInt();
                i = sc.next();

                sc.close();
                cArr[size] = new Card(n, h, m, i);
                size++;
            }
            scFile.close();
        } catch (FileNotFoundException f) {
            System.out.println("File Not Found - check file name or path");
        }
    }

//3.3 [5]
       public String toString() {
        String temp = "";
        for (int i = 0; i < size; i++) {
            temp = temp + cArr[i] + "\n\n";
        }
        return temp;
    }

//3.4 [8]
    public void sort() {
        Card temp;
        for (int i = 0; i < size - 1; i++) {
            for (int j = i + 1; j < size; j++) {
                if (cArr[i].getName().compareTo(cArr[j].getName()) >= 0) {
                    temp = cArr[i];
                    cArr[i] = cArr[j];
                    cArr[j] = temp;
                }
            }
        }
    }

//3.5 [3]
    public Card find(int pos) {
        return cArr[pos];
    }

 
//3.6 [5]
    public void delete(int p) {
        cArr[p] = cArr[size - 1];        
        size--;
        sort();
    }

// 3.7 [9]
    public String playGame() {
        
        Card comp = new Card("Gollum");        
        int pos = (int) (Math.random() * size);
        Card card = find(pos);       
        String temp = "\nComputer\n" + comp + "\n" + "\nCard from array\n" + card;
        
        if (card.getHealth() >  comp.getHealth() && card.getMagic() > comp.getHealth()) {
            temp += "\n\nCard wins - updated\n";
            card.upDateCard(comp.getHealth(), comp.getMagic(), "gold");
            temp += card.toString();
        } else {
            delete(pos);
            temp += "\n\nCard lost - card destroyed\n" + toString();            
        }
        return temp;
    }
}
