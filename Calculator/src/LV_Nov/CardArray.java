/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package LV_Nov;

import java.io.*;
import java.util.*;
/**
 *
 * @author gordonfleming
 */
public class CardArray {
    private Card[] cardArr = new Card[20];
    private int count = 0;
    
    public CardArray(){
        try{
            Scanner scFile = new Scanner (new File("Character.txt"));
            String line,n,i;
            int h,m;
            while(scFile.hasNext()){
             line = scFile.nextLine();
                System.out.println(line);
                Scanner sc = new Scanner(line).useDelimiter("#");
             n = sc.next();
             h = sc.nextInt();
             m = sc.nextInt();
             i = sc.next();
             sc.close();
             cardArr[count] = new Card (n,h,m,i);
             count++;
            }
            scFile.close();
        }catch (FileNotFoundException ex){
            System.out.println("Check the file path, maybe you entered it wrong.");
        }
    }
    public void sort() {
        Card temp;
        for (int i = 0; i < count - 1; i++) {
            for (int j = i + 1; j < count; j++) {
                if (cardArr[i].getName().compareTo(cardArr[j].getName()) >= 0) {
                    temp = cardArr[i];
                    cardArr[i] = cardArr[j];
                    cardArr[j] = temp; 
                }
            }
        }
    }
    public Card find(int index){
        return cardArr[index];
    }
    public void delete(int in){
        cardArr[in] = cardArr[count-1];
        count--;
        sort();
    }
    public String playGame(){
        Card computer = new Card("Golem");
        int pos = (int) (Math.random()*count);
        Card card = find(pos);
        String temp = "Computer\n" + computer + "\n\nCard from Array" + card;
        if(card.getHealth()>computer.getHealth() && card.getMagic()>computer.getHealth()){
            temp += "\n\nCard wins - updated\n";
            card.updateCard(computer.getHealth(), computer.getMagic(), "gold");
            temp += card.toString();
        }else {
            delete(pos);
            temp += "Card lost - card destroyed" + toString();
        }
        return temp;
    }
    @Override
    public String toString(){
        String temp = "";
        for(int i = 0;i<count-1;i++){
            temp = temp + cardArr[i] + "\n\n";
        }
        return temp;
    }
}