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
public class LeaderArray {
    private Leader [] leadArr = new Leader[50];
    private int count = 0;
    
    public LeaderArray(){
        try{
            Scanner scFile = new Scanner (new File("Leaders.txt"));
            String name, line;
            int sR,gr10,gr11,cR;
            while(scFile.hasNext()){
                line  = scFile.nextLine();
                Scanner sc = new Scanner (line).useDelimiter(",");
                name = sc.next();
                sR = sc.nextInt();
                gr10 = sc.nextInt();
                gr11 = sc.nextInt();
                cR = sc.nextInt();
                leadArr [count] = new Leader(name,sR,gr10,gr11,cR);
                sc.close();
                count++;
            }
            scFile.close();
        }catch (FileNotFoundException ex){
            System.out.println("File was not found, try again please.");
        }
    }
    public void Sort(){
        Leader temp;
        for(int i = 0; i < count-1; i++){
            for(int j = i+1;j<count;j++){
                if(leadArr[i].getPoints()-leadArr[j].getPoints()<=0){
                    temp = leadArr[i];
                    leadArr[i] = leadArr[j];
                    leadArr[j] = temp;
                }
            }
        }
    }
    public void vowels(){
        for(int i = 0; i < count; i++){
           leadArr[i].removeVowels();
        }
    }
        public void delete(int pos) {        
        for (int j = pos; j < count - 1; j++) {
            leadArr[j] = leadArr[j + 1]; 
        }
        count--;       
    }
    public void findLowRatings(){
        int i = 0;
        while (i < count) {
            if (leadArr[i].LessThan3() == true) {
                delete(i); 
            } else {
                i++;
            }
        }
    }
    @Override
    public String toString(){
        String temp = "";
        for(int i = 0; i < count;i++){
            temp += leadArr[i].toString() + "\n";
        }
       return temp; 
    }
}