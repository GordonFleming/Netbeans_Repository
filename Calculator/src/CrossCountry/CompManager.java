/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CrossCountry;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.Scanner;

/**
 *
 * @author gordonfleming
 */
public class CompManager {
    private Competitor [] cArr = new Competitor[25];
    private final int size=25;
    public CompManager() throws FileNotFoundException{
        Scanner scFile= new Scanner(new FileReader("Names.txt"));
        int i = 0;
        while(scFile.hasNext()){
            String line = scFile.nextLine();
            Scanner sc = new Scanner(line).useDelimiter("#");
            int id = sc.nextInt();
            String name = sc.next();
            cArr[i] = new Competitor (id,name);
            i++;
        }
        scFile.close();
    }
    public String toString(){
        String temp = "";
                for(int i =0;i<size;i++){
                    temp+=cArr[i].toString() + "\n";
                }
        return temp;
    }
    public int search(int id){
        for(int i=0;i<size;i++){
            if(cArr[i].getId()==id){
                return i;
            }
        }
        return -1;
    }
    public void AddResults() throws FileNotFoundException{
        Scanner scFile = new Scanner (new FileReader("Results.txt"));
        while(scFile.hasNext()){
            String line = scFile.nextLine();
            Scanner sc = new Scanner(line).useDelimiter("#");
            int id = sc.nextInt();
            int leg = sc.nextInt();
            String start = sc.next();
            String end =sc.next();
            int pos = search(id);
            cArr[pos].setLegTimes(leg-1, start, end);
        }
        scFile.close();
    }
}
